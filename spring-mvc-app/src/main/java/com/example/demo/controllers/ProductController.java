package com.example.demo.controllers;



import java.util.Date;
import java.net.URI;
import java.net.URISyntaxException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters.LocalDateConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;



import com.example.demo.entity.Order;
import com.example.demo.entity.Product;





@Controller
public class ProductController {
    
    @Autowired
    private RestTemplate template;
    
    public List<Product> listOfProducts=new ArrayList<>();
    Product orderProduct;
    public ProductController() {
        super();
        
    }
    //all details of product
    @GetMapping(path = "/product_list")
  public String getProducts(Model model) {
      model.addAttribute("list",template.getForObject("http://localhost:7070/list",Product[].class));
      
      return "show-all";
   }
    
    @GetMapping(path = "/order_list")
    public String getOrders(Model model) {
        model.addAttribute("list",template.getForObject("http://localhost:4040/list",Order[].class));
        
        return "order_list";
     }
    
    @GetMapping(path = "/inventory")
    public String inventoryGreater(Model model) {
        model.addAttribute("list",template.getForObject("http://localhost:7070/list/available",Product[].class));
        
        return "show-all";
     }
    @GetMapping(path = "/inventory_zero")
    public String inventoryEqualZero(Model model) {
        model.addAttribute("list",template.getForObject("http://localhost:7070/list/not-available",Product[].class));
        
        return "show-all";
     }
    @PostMapping(path = "/save_product")
      public String saveProducts(Model model ,@RequestParam int id,@RequestParam String productName,@RequestParam String merchantName,@RequestParam double amount,@RequestParam int inventory) {
        Product newProduct= new Product(id,productName,amount,inventory,merchantName) ;
//        listOfProducts.add(newProduct);
        
        model.addAttribute("created",template.postForLocation("http://localhost:7070/save", newProduct));
         
        return "save_product";
       }
    
   @PutMapping(path = "/update_product")
          public String updateProducts(Model model ,@RequestParam int id,@RequestParam String productName,@RequestParam String merchantName,@RequestParam double amount,@RequestParam int inventory) {
            Product newProduct= new Product(id,productName,amount,inventory,merchantName) ;
            model.addAttribute("created",template.postForLocation("http://localhost:7070/update", newProduct));             
            return "update_product";
           }
   
   @RequestMapping(path = "/merchant", method = RequestMethod.GET)
   public String initSearchMerchant() {
       return "merchant";
   }
   
   @RequestMapping(path = "/merchant", method = RequestMethod.POST)
   public String searchByProductMerchant(@RequestParam("merchant") String productMerchant, Model model) {
       model.addAttribute("list", this.template.postForObject("http://localhost:7070/byMerchant",productMerchant ,Product[].class));
       return "show-all";
   }
   
   @RequestMapping(path = "/order_id", method = RequestMethod.GET)
   public String orderid() {
       return "order_id";
   }
   
   @RequestMapping(path = "/order_id", method = RequestMethod.POST)
   public String searchorder(@RequestParam("orderId") String id, Model model) {
	   int orderId=Integer.parseInt(id);
       model.addAttribute("list", this.template.postForObject("http://localhost:4040/order-id",orderId ,Order[].class));
       return "order_list";
       
   }
//   
//   @GetMapping(path = "/order_id")
//   public String ShowAllProductByMerchantName() {
//       return "order_id";
//   }
//   @RequestMapping(path="/order_id",method = RequestMethod.POST)
//   public String ShowAllProductBy(@RequestParam("orderId")String order,Model model) {
//       model.addAttribute("list",template.getForObject("http://localhost:7070/"+order,Product[].class));
//       return "order_list";
//   }
//   
   
   
   
   
   
   @PostMapping(path = "/save_order")
      public String saveOrders(Model model ,@RequestParam int id,@RequestParam String customerName,@RequestParam int productId,@RequestParam String orderDate,@RequestParam int quantity) {
       Product orderProduct = null;
       URI uri=null;
    try {
        uri = new URI("http://localhost:7070/list");
    } catch (URISyntaxException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
       Product[] temp=template.getForObject(uri,Product[].class);
       listOfProducts = Arrays.asList(temp);
       for(Product eachProduct:listOfProducts) {
           if(eachProduct.getProductId()==productId) {
               orderProduct =eachProduct;
           }
       }
       LocalDate date =LocalDate.parse(orderDate);
       Order newOrder= new Order(id,customerName,orderProduct,date,quantity) ;
        model.addAttribute("created",template.postForLocation("http://localhost:4040/save", newOrder));
          return "save_order";
       }
    
   @PutMapping(path = "/update_order")
   public String updateOrders(Model model ,@RequestParam int id,@RequestParam String customerName,@RequestParam int productId,@RequestParam String orderDate,@RequestParam int quantity) {
    Product orderProduct = null;
    URI uri=null;
 try {
     uri = new URI("http://localhost:7070/list");
 } catch (URISyntaxException e) {
     // TODO Auto-generated catch block
     e.printStackTrace();
 }
    Product[] temp=template.getForObject(uri,Product[].class);
    listOfProducts = Arrays.asList(temp);
    for(Product eachProduct:listOfProducts) {
        if(eachProduct.getProductId()==productId) {
            orderProduct =eachProduct;
        }
    }
    LocalDate date =LocalDate.parse(orderDate);
    Order newOrder= new Order(id,customerName,orderProduct,date,quantity) ;
     model.addAttribute("created",template.postForLocation("http://localhost:4040/update", newOrder));
       return "update_order";
    }



}