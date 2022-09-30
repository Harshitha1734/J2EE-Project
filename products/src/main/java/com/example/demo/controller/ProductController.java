package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Product;
import com.example.demo.pagerepo.PageRepository;
import com.example.demo.services.ProductService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController
@RequestMapping(path="/")
public class ProductController {
    
   
    private PageRepository repo;
    
    @Autowired
    private ProductService service;
    private List<Product> productsList;
    @GetMapping("/list")
    public List<Product> findAll(){
    	this.productsList=this.service.findAll();
        return this.service.findAll();
    }
    
//    @PostMapping("/byMerchant")
//    public List<Product> findByProductMerchant(@RequestBody String productMerchant) {
//        return this.service.findByMerchantName(productMerchant);
//    }
    
    @GetMapping("/list/{merchantName}")
    public List<Product> findById(@PathVariable("merchantName") String merchant) {
        return this.service.findByMerchantName(merchant);
    }
    
    @GetMapping("/list/available")
    public List<Product> findByAvailability(){
        return this.service.findByAvailability();
    }
    
    @GetMapping("/list/not-available")
    public List<Product> findByNotAvailability(){
        return this.service.findZeroAvailability();
    }
    
    @PostMapping("/save")
    public ResponseEntity<Product> add(@RequestBody Product entity){
        Product addedObj=this.service.save(entity);
        return ResponseEntity.ok().body(null);
    }
    
    @PutMapping("/update")
    public ResponseEntity<Product> update(@RequestBody Product entity){
        Product addedObj=this.service.update(entity);
        return ResponseEntity.ok().body(null);
    }
    
//    @GetMapping("/list/{pageNo}")
//    public String display(@PathVariable (value = "pageNo") int pageNo, Model m) {
//     int pageSize = 2;   // How many records on per page
//     Page<Product> page= repo.findByPagination(pageNo, pageSize);
//     m.addAttribute("currentPage", pageNo);
//     m.addAttribute("totalPages", page.getTotalPages());
//     m.addAttribute("totalRecords", page.getTotalElements());
//     m.addAttribute("list", productsList);
//     return "index";
//     
//    }
   }
