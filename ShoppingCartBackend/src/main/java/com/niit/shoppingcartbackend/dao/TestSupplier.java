package com.niit.shoppingcartbackend.dao;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Component;

@Component
public class TestSupplier {
	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcartbackend.model");
		context.refresh();
		context.getBean("supplier");
		System.out.println("Bean created successfully");

	}
}
