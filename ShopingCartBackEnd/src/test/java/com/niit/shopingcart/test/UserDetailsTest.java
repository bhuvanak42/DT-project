package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.model.UserDetails;

public class UserDetailsTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();		
	
		UserDetailsDAO userDetailsDAO = (UserDetailsDAO) context.getBean("userDetailsDAO");
		UserDetails userDetails = (UserDetails) context.getBean("userDetails");
	/*
	
		// INSERT OBJECTS INTO DB
		userDetails.setId("001");
		userDetails.setName("Anu");
		userDetails.setAddress("Jayanagar");
		userDetails.setEmail("any@gmail.com");
		userDetails.setPhone("999999999");
		userDetails.setPassword("anu");
		userDetailsDAO.save(userDetails);

			userDetails.setId("002");
		userDetails.setName("Asha");
		userDetails.setAddress("Banashankari");
		userDetails.setEmail("asha@gmail.com");
		userDetails.setPhone("8888888888");
		userDetails.setPassword("asha");
		userDetailsDAO.save(userDetails);
		
		userDetails.setId("003");
		userDetails.setName("Bhavya");
		userDetails.setAddress("Banashankari");
		userDetails.setEmail("bhavya@hotmail.com");
		userDetails.setPhone("777777777");
		userDetails.setPassword("bhavya");
		userDetailsDAO.save(userDetails);
		
		userDetails.setId("004");
		userDetails.setName("aaa");
		userDetails.setAddress("aaa");
		userDetails.setEmail("aaa");
		userDetails.setPhone("111");
		userDetails.setPassword("aaa");
		userDetailsDAO.save(userDetails);

		// save or update, update and delete operations
			userDetails.setId("005");
		userDetails.setName("bbb");
		userDetails.setAddress("bbb");
		userDetails.setEmail("bbb");
		userDetails.setPhone("222");
		userDetails.setPassword("bbb");
		userDetailsDAO.saveOrUpdate(userDetails);
*/
		/*userDetails.setId("005");
		userDetails.setName("ccc");
		userDetails.setAddress("ccc");
		userDetails.setEmail("ccc");
		userDetails.setPhone("333");
		userDetails.setPassword("ccc");
		userDetailsDAO.update(userDetails);

		
		 userDetails.setId("006");
		userDetails.setName("ddd");
		userDetails.setAddress("ddd");
		userDetails.setEmail("ddd");
		userDetails.setPhone("444");
		userDetails.setPassword("ddd");
		  userDetailsDAO.save(userDetails);	 */

		// userDetailsDAO.delete("006");

		/*userDetails = userDetailsDAO.getById("001");
		System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
*/
		userDetails = userDetailsDAO.getByPhone("111");
		System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
		
		/*userDetails = userDetailsDAO.getByEmail("asha@gmail.com");
		System.out.println(userDetails.getId() + "\t" + userDetails.getName()  + "\t" + userDetails.getAddress()+ "\t" + userDetails.getEmail()+ "\t"+ userDetails.getPhone());
	*/
		
		List<UserDetails> list = userDetailsDAO.list();
		for (UserDetails u : list) {
			System.out.println(u.getId() + "\t" + u.getName() + "\t" + u.getAddress() + "\t" +  u.getEmail()+ "\t"+ u.getPhone());
		}

	}
}
