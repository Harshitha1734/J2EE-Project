package com.example.demo.repos;

import java.util.List;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
//	public List<Product> findAll(Pageable pageable);
//	Page<Product> findByPagination(int pageNo, int size);

	public List<Product> findByMerchantName(String merchantName);
	
	@Query(value="select * from products where inventory>0",nativeQuery=true)
    List<Product> findByAvailability();
	
	@Query(value="select * from products where inventory=0",nativeQuery=true)
    List<Product> findZeroAvailability();

}
