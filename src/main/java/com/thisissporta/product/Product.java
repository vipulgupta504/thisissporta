package com.thisissporta.product;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Product {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;
	
	private String ProductName;
	
	private String ProductCategory;
	
	private String ProductDescription;
	
	private String ProductPrice;
	
	private String ProductImage;
	
	private String ProductQuantity;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public String getProductCategory() {
		return ProductCategory;
	}

	public void setProductCategory(String productCategory) {
		ProductCategory = productCategory;
	}

	public String getProductDescription() {
		return ProductDescription;
	}

	public void setProductDescription(String productDescription) {
		ProductDescription = productDescription;
	}

	public String getProductPrice() {
		return ProductPrice;
	}

	public void setProductPrice(String productPrice) {
		ProductPrice = productPrice;
	}

	public String getProductImage() {
		return ProductImage;
	}

	public void setProductImage(String productImage) {
		ProductImage = productImage;
	}

	public String getProductQuantity() {
		return ProductQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		ProductQuantity = productQuantity;
	}
	

}
