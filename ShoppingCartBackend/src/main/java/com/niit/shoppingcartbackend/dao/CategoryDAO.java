package com.niit.shoppingcartbackend.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.model.Category;

@Repository
public interface CategoryDAO  {

	//declare all crud operations
	
	public boolean save(Category category);
	public boolean delete(Category category);
	public boolean update(Category category);
	public Category get(String id);
	public List<Category> list();
}
