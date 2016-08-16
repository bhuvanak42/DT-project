package com.niit.shoppingcartbackend.dao;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Component;

import com.niit.shoppingcartbackend.model.Category;

@Component
public class TestCategory {
	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcartbackend.model");
		context.refresh();
		context.getBean("category");
		System.out.println("Bean created successfully");
		Category cat=new Category();
		cat.setId("1");
		cat.setDescription("sssss");
		cat.setName("dddddddd");
		

	}
}
