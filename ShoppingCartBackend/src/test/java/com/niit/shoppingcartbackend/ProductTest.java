package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.ProductDAO;
import com.niit.shoppingcartbackend.dao.StudentManager;
import com.niit.shoppingcartbackend.dao.StudentManagerImpl;
import com.niit.shoppingcartbackend.model.Product;
public class ProductTest {

	public static void main(String[] args) {	
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		
		context.refresh();
		System.out.println("I m inside product test");
		//context.getBean("product");
		
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		Product product = (Product) context.getBean("product");
		product.setId("PD_001");
		product.setName("iPhone");
		product.setPrice(10000);
		
		if(productDAO.save(product)== true)
		{
			System.out.println("product created successfully");
			
		}
		else{
			System.out.println("Not able to create the product");
		}
	}

}
