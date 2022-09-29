package com.example.demo;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import com.example.demo.entity.Product;
import com.example.demo.services.ProductService;

@SpringBootApplication
public class ProductsApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(ProductsApplication.class, args);
		Product ram = ctx.getBean("apple",Product.class);
		Product shyam = ctx.getBean("banana",Product.class);
		Product magesh = ctx.getBean("coke",Product.class);
		ProductService service = ctx.getBean(ProductService.class);
		service.save(ram);
		service.save(shyam);
		service.save(magesh);
		System.out.println(service.save(ram));
		//service.findAll().forEach(System.out::println);
	}
	@Bean
	public Product apple() {
		return (new Product(101,"Apple",150.0,12,"Krishna"));
	}
	@Bean
	public Product banana() {
		return (new Product(102,"Banana",60.0,6,"Ram"));
	}
	@Bean
	public Product coke() {
		return (new Product(103,"Coke",30.0,6,"Coco-cola"));
	}

}
