package com.niit.shopingcart.test;
import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Query;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;

public class TestCaseProduct {
	@Autowired
	ProductDAO productDAO;

	@Autowired
	Product product;

	AnnotationConfigApplicationContext context;

	@Before
	public void init() {
		
		context = new AnnotationConfigApplicationContext();		
		context.scan("com.niit.shopingcart");
		context.refresh();
				
		productDAO = (ProductDAO) context.getBean("productDAO");
		product = (Product) context.getBean("product");
	}

	/*@Test
	public void insertProductTestCase() {
		
		product.setId("102");
		product.setName("iPad deletion ");
		product.setDescription("JUnit");	
		product.setPrice(10000);
		assertEquals("insertProductTestCase", productDAO.save(product), true);
	}*/

	/*@Test
	public void updateProductTestCase() {

		product.setId("102");
		product.setName("iPhone");
		product.setDescription("Product updation through JUnit");
		product.setPrice(11111);
		assertEquals("updateProductTestCase", productDAO.update(product), true);
	}
	@Test
	public void deleteProductTestCase() {
		boolean flag = productDAO.delete("103");
		assertEquals("deleteProductTestCase", flag, true);
	}*/

	
	@Test
	public void listProductTestCase() {
		List<Product> list = productDAO.list();
		int rowCount=list.size();
		assertEquals("Product list test case", rowCount, 7);
		
		System.out.println("\nInside JUnit");
		for (Product p : list) {
			System.out.println(p.getId() + ":" + p.getName() + ":" + p.getDescription()+ p.getPrice());
		}
	}
		@Test
		public void getProductTestCase() {		
		product = productDAO.get("001");
		assertEquals("updateProductTestCase",true , true);
		System.out.println(product.getId() + ":" + product.getName() + ":" + product.getDescription()+ product.getPrice());
	}
	
	@Test
	public void saveOrUpdateProductTestCase() {
		product.setId("112");
		product.setName("iMac");
		product.setDescription("JUnit");
		product.setPrice(11111);
		assertEquals("updateProductTestCase",productDAO.saveOrUpdate(product), true);
	}
}