package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class CategoryTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();		
	
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = (Category) context.getBean("category");
	
	
		// INSERT OBJECTS INTO DB
		category.setId("001");
		category.setName("iPhone");
		category.setDescription("Apple Phone");
		categoryDAO.save(category);

/*		category.setId("002");
		category.setName("iPad");
		category.setDescription("Apple Tablet");
		categoryDAO.save(category);

		category.setId("003");
		category.setName("MacBook");
		category.setDescription("Apple Laptop and desktop");
		categoryDAO.save(category);

		category.setId("004");
		category.setName("Watch");
		category.setDescription("Apple watches");
		categoryDAO.save(category);

		// save or update, update and delete operations
		category.setId("005");
		category.setName("Object to update");
		category.setDescription("object to update Apple TV");
		categoryDAO.saveOrUpdate(category);

		category.setId("005");
		category.setName("TV");
		category.setDescription("Apple TV");
		categoryDAO.update(category);

		
		  category.setId("006"); category.setName("category to delete");
		  category.setDescription("category to delete");
		  categoryDAO.save(category);		 
*/
	/*	 categoryDAO.delete("006");

		category = categoryDAO.get("001");
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());
*/
		/*List<Category> list = categoryDAO.list();

		for (Category c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());
		}*/

	}
}
