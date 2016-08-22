package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;

public class ProductTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();		
	
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		Product product = (Product) context.getBean("product");
	
	/*	
		// INSERT OBJECTS INTO DB
		product.setId("001");
		product.setName("iPhone");
		product.setDescription("Apple Phone");
		product.setPrice(9999);
		productDAO.save(product);

		product.setId("002");
		product.setName("iPad");
		product.setDescription("Apple Tablet");
		product.setPrice(9999);
		productDAO.save(product);

		product.setId("003");
		product.setName("MacBook");
		product.setDescription("Apple Laptop and desktop");
		product.setPrice(9999);
		productDAO.save(product);

		product.setId("004");
		product.setName("Watch");
		product.setDescription("Apple watches");
		product.setPrice(9999);
		productDAO.save(product);

		// save or update, update and delete operations
		product.setId("005");
		product.setName("Object to update");
		product.setDescription("object to update Apple TV");
		product.setPrice(9999);
		productDAO.saveOrUpdate(product);

		product.setId("005");
		product.setName("TV");
		product.setDescription("Apple TV");
		product.setPrice(9999);
		productDAO.update(product);

		
		  product.setId("006"); 
		  product.setName("product to delete");
		  product.setDescription("product to delete");
		  product.setPrice(9999);
		  productDAO.save(product);		 
*/
	//	 productDAO.delete("006");

		product = productDAO.get("001");
		System.out.println(product.getId() + ":" + product.getName() + ":" + product.getDescription()+ ":" + product.getPrice());

		/*List<Product> list = productDAO.list();

		for (Product c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription()+ ":" + product.getPrice());
		}*/

	}
}
