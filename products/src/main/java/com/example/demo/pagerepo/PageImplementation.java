package com.example.demo.pagerepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import com.example.demo.entity.Product;
import com.example.demo.repos.ProductRepository;

public class PageImplementation implements PageRepository {
	
	@Autowired
	 private ProductRepository repo;

	@Override
	 public Page<Product> findByPagination(int pageNo, int size) {
		  // TODO Auto-generated method stub
		  Pageable pageable = PageRequest.of(pageNo-1,size);
		  return repo.findAll(pageable);
		 }

}
