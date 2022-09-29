package com.example.demo;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.example.demo.entity.Order;
import com.example.demo.services.OrderService;

@SpringBootApplication
public class OrdersApplication {


	public static void main(String[] args) {
		
		ConfigurableApplicationContext ctx = SpringApplication.run(OrdersApplication.class, args);
//		Order apple = ctx.getBean("apples",Order.class);
	OrderService service = ctx.getBean(OrderService.class);
//		service.save(apple);
//		service.findAll().forEach(System.out::println);
	
//	   System.out.println(service.getProductByID(103));
	
		
	}

}
