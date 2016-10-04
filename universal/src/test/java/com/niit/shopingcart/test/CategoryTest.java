/*package com.niit.shopingcart.test;


import java.util.List;

import com.niit.dao.CategoryDAOImpl;
import com.niit.model.Category;

public class CategoryTest {

	public static void main(String[] args) {

		
		CategoryDAOImpl categoryDAO=new CategoryDAOImpl();
		
		Category category = new Category();
	
	
		// INSERT OBJECTS INTO DB
		
		category.setId("CAT_006");
		category.setName("iPhone");
		category.setDescription("Apple Phone");
		categoryDAO.saveOrUpdate(category);
		
		

	
		category.setId("CAT_002");
		category.setName("iPad");
		category.setDescription("Apple Tablet");
		categoryDAO.saveOrUpdate(category);

		category.setId("CAT_003");
		category.setName("MacBook");
		category.setDescription("Apple Laptop and desktop");
		categoryDAO.saveOrUpdate(category);

		category.setId("CAT_004");
		category.setName("Watch");
		category.setDescription("Apple watches");
		categoryDAO.saveOrUpdate(category);

		// save or update, update and delete operations
		category.setId("CAT_005");
		category.setName("Object to update");
		category.setDescription("object to update Apple TV");
		categoryDAO.saveOrUpdate(category);
		
		category.setId("CAT_005");
		category.setName("TV");
		category.setDescription("Apple TV");
		categoryDAO.saveOrUpdate(category);

		category.setId("CAT_006");
		 category.setName("category to delete");
		  category.setDescription("category to delete");
		  categoryDAO.saveOrUpdate(category);

		// categoryDAO.delete("CAT_006");

		category = categoryDAO.get("CAT_001");
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());

		List<Category> list = categoryDAO.list();

		for (Category c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());
		}
		
		category = categoryDAO.getByName("iPad");
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());

		category = categoryDAO.getByName("MacBook");
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());
		
		//context.close();
		}
}
*/