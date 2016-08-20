package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class ProductTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();

		Category category = (Category) context.getBean("category");
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

		category.setId("TAB_aa002");
		category.setName("iPhone");
		category.setDescription("iPhone iiiproduct");

		//boolean flag = categoryDAO.update(category);
		boolean flag=categoryDAO.delete("TAB_001");
		System.out.println(flag);	
		
		if (flag == true) {
			System.out.println("Category updated to database successfully ");
		} else {
			
			System.out.println("Category update was unsuccessfull");
		}

		/*
		 * //important..... donot delete category=categoryDAO.get("TAB_009");
		 * if(category!=null) System.out.println(category.getId() + ":" +
		 * category.getName() + ":" + category.getDescription()); else
		 * System.out.println("CATEGORY not found in db");
		 */

		// categoryDAO.saveOrUpdate(category);

		/*
		 * List<Category> list = categoryDAO.list();
		 * 
		 * for (Category cat : list) { System.out.println(cat.getId() + ":" +
		 * cat.getName() + ":" + cat.getDescription()); }
		 */

	}
}
