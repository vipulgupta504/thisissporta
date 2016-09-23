package com.thisissporta.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


@Service("CartService")
@EnableTransactionManagement
public class CartServiceImpl implements CartService
{
	@Autowired
    CartDAO dao;
	
	
	public Cart getCartById(int cartId) {
		return dao.getCartById(cartId);
	}

	
	public void update(Cart cart) {
		dao.update(cart);
	}

	
	public void add(Cart cart) {
		dao.add(cart);
	}

	
	public void delete(int i) {
		dao.delete(i);
	}

	
	public List<Cart> getAllItems() {
		return dao.getAllProducts();
	}

	
	public Cart getCartByUsername(String Username) {
		return dao.getCartByUsername(Username);
	}

	
	public String checkUsername(String Username){
		return dao.checkUsername(Username);
	}

	
	public List<Cart> getAllProducts() {
		return dao.getAllProducts();
	}

}
