package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Order;
import com.example.demo.services.OrderService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController
@RequestMapping(path="/")
@AllArgsConstructor
@NoArgsConstructor
public class OrderController {
    
    @Autowired
    private OrderService service;
    
    @GetMapping("/list")
    public List<Order> findAll(){
        return this.service.findAll();
    }
    
    @PostMapping("/order-id")
    public List<Order> findById(@RequestBody int orderId) {
    	System.out.println(this.service.findByOrderId(orderId));
        return this.service.findByOrderId(orderId);
    }
    
    @PutMapping("/update")
    public ResponseEntity<Order> update(@RequestBody Order entity){
    	Order addedObj=this.service.update(entity);
        return ResponseEntity.ok().body(null);
    }
    @PostMapping("/save")
    public ResponseEntity<Order> save(@RequestBody Order entity){
    	Order addedObj=this.service.save(entity);
        return ResponseEntity.ok().body(null);
    }
    
}