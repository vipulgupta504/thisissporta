package com.thisissporta.product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO pdao;
	
	public void insert(Product p) {
		pdao.insert(p);
	}

	public void update(Product p) {
		pdao.update(p);
	}

	public void delete(int pid) {
		pdao.delete(pid);
	}

	public Product getProduct(int pid) {
		
		return pdao.getProduct(pid);
	}

	public List<Product> listAll() {
		
		return pdao.listAll();
	}
	
	public Product getProductWithMaxId() {
		
		return pdao.getProductWithMaxId();
	}
	

}
