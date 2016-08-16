package com.niit.shoppingcartbackend.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.model.Product;

@Repository("productDAO")
public interface ProductDAO  {

	//declare all crud operations
	
	public boolean save(Product product);
	public boolean delete(Product product);
	public boolean update(Product product);
	public Product get(String id);
	public List<Product> list();
}
