package com.niit.shopingcart.test;
import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Query;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.model.UserDetails;

public class TestCaseUserDetails {
	@Autowired
	UserDetailsDAO userDetailsDAO;

	@Autowired
	UserDetails userDetails;

	AnnotationConfigApplicationContext context;

	@Before
	public void init() {
		
		context = new AnnotationConfigApplicationContext();		
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		userDetails = (UserDetails) context.getBean("userDetails");
		userDetailsDAO = (UserDetailsDAO) context.getBean("userDetailsDAO");
	}

	/*@Test
	public void insertUserDetailsTestCase() {
		
		userDetails.setId("101");
		userDetails.setName("AAAnu");
		userDetails.setAddress("Jayanagar");
		userDetails.setEmail("any@gmail.com");
		userDetails.setPhone("999999999");
		userDetails.setPassword("anu");
		assertEquals("insertUserDetailsTestCase", userDetailsDAO.save(userDetails), true);
		
		userDetails.setId("102");
		userDetails.setName("AAAsha");
		userDetails.setAddress("Banashankari");
		userDetails.setEmail("asha@gmail.com");
		userDetails.setPhone("8888888888");
		userDetails.setPassword("asha");
		assertEquals("insertUserDetailsTestCase", userDetailsDAO.save(userDetails), true);
		
		userDetails.setId("103");
		userDetails.setName("BBBhavya");
		userDetails.setAddress("Banashankari");
		userDetails.setEmail("bhavya@hotmail.com");
		userDetails.setPhone("777777777");
		userDetails.setPassword("bhavya");
		assertEquals("insertUserDetailsTestCase", userDetailsDAO.save(userDetails), true);
		
	}*/

/*	@Test
	public void updateUserDetailsTestCase() {

		userDetails.setId("102");
		userDetails.setName("AAAsha");
		userDetails.setAddress("UserDetails updation through JUnit");
		userDetails.setEmail("asha@gmail.com");
		userDetails.setPhone("8888888888");
		userDetails.setPassword("ashaaaa");
		assertEquals("updateUserDetailsTestCase", userDetailsDAO.update(userDetails), true);
	}

	@Test
	public void deleteUserDetailsTestCase() {
		boolean flag = userDetailsDAO.delete("103");
		assertEquals("deleteUserDetailsTestCase", flag, true);
	}
*/
	/*@Test
	public void saveOrUpdateUserDetailsTestCase() {
		userDetails.setId("103");
		userDetails.setName("BBBhavya");
		userDetails.setAddress("Banashankari");
		userDetails.setEmail("bhavya@hotmail.com");
		userDetails.setPhone("777777777");
		userDetails.setPassword("bhavya");
		assertEquals("updateUserDetailsTestCase",userDetailsDAO.saveOrUpdate(userDetails), true);
		
	}*/

/*	//GET CATEGORY BY ID
	@Test
	public void getByIdUserDetailsTestCase() {		
	userDetails = userDetailsDAO.getById("101");
	assertEquals("getByIdUserDetailsTestCase",true , true);
	System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
}*/
	
/*	//GET CATEGORY BY PHONE
		@Test
		public void getByPhoneUserDetailsTestCase() {		
		userDetails = userDetailsDAO.getByPhone("999999999");
		assertEquals("getByPhoneUserDetailsTestCase",true , true);
		System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
	}*/
	
	//GET CATEGORY BY EMAIL
		@Test
		public void getByEmailUserDetailsTestCase() {		
		userDetails = userDetailsDAO.getByEmail("aaa");
		assertEquals("getByEmailUserDetailsTestCase",true , true);
		System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
	}
	/*
	@Test
	public void listUserDetailsTestCase() {
		List<UserDetails> list = userDetailsDAO.list();
		int rowCount=list.size();
		assertEquals("UserDetails list test case", rowCount, 8);
		
		System.out.println("\nInside JUnit");
		for (UserDetails u : list) {
		System.out.println(u.getId() + "\t" + u.getName()  + "\t" + u.getAddress()+ "\t" + u.getEmail()+ "\t"+ u.getPhone());
		}
	}*/
}