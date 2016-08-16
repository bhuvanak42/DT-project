package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.UserDetailsDAO;
import com.niit.shoppingcartbackend.dao.StudentManager;
import com.niit.shoppingcartbackend.dao.StudentManagerImpl;
import com.niit.shoppingcartbackend.model.UserDetails;
public class UserDetailsTest {

	public static void main(String[] args) {	
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		
		context.refresh();
		System.out.println("I m inside userDetails test");
		context.getBean("userDetails");
		
		UserDetailsDAO userDetailsDAO = (UserDetailsDAO) context.getBean("userDetailsDAO");
		UserDetails userDetails = (UserDetails) context.getBean("userDetails");
		userDetails.setId("U_001");
		userDetails.setName("Bhuvana");
		userDetails.setPassword("bhuvana");
		userDetails.setMail("bhuvanak42@gmail.com");
		userDetails.setContact("9999999999");
		userDetails.setAddress("Jayanagar 4th Block");
		
		
		
		if(userDetailsDAO.save(userDetails)== true)
		{
			System.out.println("userDetails created successfully");
			
		}
		else{
			System.out.println("Not able to create the userDetails");
		}
	}

}
