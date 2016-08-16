package com.niit.shoppingcartbackend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.niit.shoppingcartbackend.dao.StudentManager;
import com.niit.shoppingcartbackend.dao.StudentManagerImpl;

public class MainApp {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		StudentManager manager = (StudentManagerImpl)context.getBean("studentManager");
		System.out.println((manager.createStudent()));
	}

}
