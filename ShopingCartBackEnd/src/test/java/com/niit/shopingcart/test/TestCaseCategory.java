package com.niit.shopingcart.test;
import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Query;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class TestCaseCategory {
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	Category category;

	AnnotationConfigApplicationContext context;

	@Before
	public void init() {
		
		context = new AnnotationConfigApplicationContext();		
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		category = (Category) context.getBean("category");
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	/*@Test
	public void insertCategoryTestCase() {
		
		category.setId("103");
		category.setName("iPad deletion ");
		category.setDescription("JUnit");	
		assertEquals("insertCategoryTestCase", categoryDAO.save(category), true);
	}*/

	/*@Test
	public void updateCategoryTestCase() {

		category.setId("102");
		category.setName("iPhone");
		category.setDescription("Category updation through JUnit");
		assertEquals("updateCategoryTestCase", categoryDAO.update(category), true);
	}*/

	/*@Test
	public void deleteCategoryTestCase() {
		boolean flag = categoryDAO.delete("103");
		assertEquals("deleteCategoryTestCase", flag, true);
	}*/

	/*@Test
	public void saveOrUpdateCategoryTestCase() {
		category.setId("103");
		category.setName("iMac");
		category.setDescription("JUnit");
		assertEquals("updateCategoryTestCase",categoryDAO.saveOrUpdate(category), true);
		
	}*/

	//GET CATEGORY BY ID
	@Test
	public void getCategoryTestCase() {		
	category = categoryDAO.get("001");
	assertEquals("getCategoryTestCase",true , true);
	System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());
}
	
	/*@Test
	public void listCategoryTestCase() {
		List<Category> list = categoryDAO.list();
		int rowCount=list.size();
		assertEquals("Category list test case", rowCount, 7);
		
		System.out.println("\nInside JUnit");
		for (Category c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());
		}
	}*/
}