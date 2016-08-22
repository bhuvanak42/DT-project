package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

public class SupplierTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();		
	
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier = (Supplier) context.getBean("supplier");
	
	
/*		// INSERT OBJECTS INTO DB
		supplier.setId("001");
		supplier.setName("iPlanet");
		supplier.setAddress("Jayanagar");
		supplierDAO.save(supplier);*/
/*
		supplier.setId("002");
		supplier.setName("iStore");
		supplier.setAddress("HSR layout");
		supplierDAO.save(supplier);

		supplier.setId("003");
		supplier.setName("iAstra");
		supplier.setAddress("Jayanagar 4th Block");
		supplierDAO.save(supplier);

		supplier.setId("004");
		supplier.setName("iStore");
		supplier.setAddress("Koramangala");
		supplierDAO.save(supplier);

		// save or update, update and delete operations
		supplier.setId("005");
		supplier.setName("Object to update");
		supplier.setAddress("object to update Apple TV");
		supplierDAO.saveOrUpdate(supplier);

		supplier.setId("005");
		supplier.setName("iStreet");
		supplier.setAddress("Malleshwaram");
		supplierDAO.update(supplier);

		
		  supplier.setId("006"); 
		  supplier.setName("supplier to delete");
		  supplier.setAddress("supplier to delete");
		  supplierDAO.save(supplier);		 
*/
	//	 supplierDAO.delete("006");

		supplier = supplierDAO.get("001");
		System.out.println(supplier.getId() + ":" + supplier.getName() + ":" + supplier.getAddress());

		List<Supplier> list = supplierDAO.list();

		for (Supplier s : list) {
			System.out.println(s.getId() + ":" + s.getName() + ":" + s.getAddress());
		}

	}
}
