package com.example.demo.services;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;
import com.example.demo.entity.Product;

import com.example.demo.repos.ProductRepository;


@Service
public class ProductService {
	@Autowired
	private ProductRepository repo;
	public Product save(Product entity) {
		return this.repo.save(entity);
	}
	public List<Product> findAll() {
		return this.repo.findAll();
	}
	public List<Product> findByMerchantName(String merchantName) {
		// TODO Auto-generated method stub
		return this.repo.findByMerchantName(merchantName);
	}
	public List<Product> findByAvailability(){
		// TODO Auto-generated method stub
		return this.repo.findByAvailability();
	}
	public List<Product> findZeroAvailability(){
		// TODO Auto-generated method stub
		return this.repo.findZeroAvailability();
	}
	public Product update(Product entity) {
		return this.repo.save(entity);
	}
	public Optional<Product> findProduct(int productId) {
		return this.repo.findById(productId);
	}
	
//	 public Page<Product> findByPagination(int pageNo, int size) {
//	  // TODO Auto-generated method stub
//	  Pageable pageable = PageRequest.of(pageNo-1,size);
//	  return repo.findAll(pageable);
//	 }
	
	
}
