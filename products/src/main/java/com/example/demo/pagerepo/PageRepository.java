package com.example.demo.pagerepo;

import org.springframework.data.domain.Page;

import com.example.demo.entity.Product;

public interface PageRepository {

	Page<Product> findByPagination(int pageNo, int size);

}
