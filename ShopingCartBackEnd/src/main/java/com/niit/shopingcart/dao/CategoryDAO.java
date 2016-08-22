package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Category;

public interface CategoryDAO {

	public boolean save(Category category);

	public boolean update(Category category);

	public boolean saveOrUpdate(Category category);

	public boolean delete(String id);

	public Category get(String id);

	public List<Category> list();

}
