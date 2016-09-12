package com.thisissporta.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDAO cdao;
	
	public void insert(Category c) {
		cdao.insert(c);
	}

	public void update(Category c) {
		cdao.update(c);
	}

	public void delete(int cid) {
		cdao.delete(cid);
	}

	public Category getCategory(int cid) {
		return cdao.getCategory(cid);
	}

	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return cdao.getAllCategories();
	}

}
