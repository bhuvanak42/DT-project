package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Product;

public interface ProductDAO {

	public boolean save(Product product);

	public boolean update(Product product);

	public void saveOrUpdate(Product product);

	public boolean delete(String id);

	public Product get(String id);

	public List<Product> list();

}
