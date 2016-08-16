package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.StudentManager;
import com.niit.shoppingcartbackend.dao.StudentManagerImpl;
import com.niit.shoppingcartbackend.model.Category;
public class CategoryTest {

	public static void main(String[] args) {	
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		
		context.refresh();
		System.out.println("I m inside category test");
		context.getBean("category");
		
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = (Category) context.getBean("category");
		category.setId("CG_001");
		category.setName("CGName001");
		category.setDescription("This is category001 description");
		
		if(categoryDAO.save(category)== true)
		{
			System.out.println("category created successfully");
			
		}
		else{
			System.out.println("Not able to create the category");
		}
	}

}
