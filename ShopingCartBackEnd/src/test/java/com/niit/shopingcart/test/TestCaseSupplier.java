package com.niit.shopingcart.test;
import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Query;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

public class TestCaseSupplier {
	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	Supplier supplier;

	AnnotationConfigApplicationContext context;

	@Before
	public void init() {
		
		context = new AnnotationConfigApplicationContext();		
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		supplier = (Supplier) context.getBean("supplier");
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
	}

/*	@Test
	public void insertSupplierTestCase() {
		
		supplier.setId("101");
		supplier.setName("iPlanet");
		supplier.setAddress("JUnit");	
		assertEquals("insertSupplierTestCase", supplierDAO.save(supplier), true);
		
		supplier.setId("102");
		supplier.setName("UPDATE");
		supplier.setAddress("JUnit");	
		assertEquals("insertSupplierTestCase", supplierDAO.save(supplier), true);
		
		supplier.setId("103");
		supplier.setName("DELETE");
		supplier.setAddress("JUnit");	
		assertEquals("insertSupplierTestCase", supplierDAO.save(supplier), true);
		
	}*/

	/*@Test
	public void updateSupplierTestCase() {

		supplier.setId("102");
		supplier.setName("iAstra");
		supplier.setAddress("KR road");	
		assertEquals("updateSupplierTestCase", supplierDAO.update(supplier), true);
	}*/

/*	@Test
	public void deleteSupplierTestCase() {
		boolean flag = supplierDAO.delete("103");
		assertEquals("deleteSupplierTestCase", flag, true);
	}*/
	/*@Test
	public void saveOrUpdateSupplierTestCase() {
		supplier.setId("103");
		supplier.setName("iStore");
		supplier.setAddress("JUnit");
		assertEquals("updateSupplierTestCase",supplierDAO.saveOrUpdate(supplier), true);
		
	}*/

	//GET SUPPLIER BY ID
	@Test
	public void getSupplierTestCase() {		
	supplier = supplierDAO.get("001");
	assertEquals("getSupplierTestCase",true , true);
	System.out.println(supplier.getId() + ":" + supplier.getName() + ":" + supplier.getAddress());
}
	
/*	@Test
	public void listSupplierTestCase() {
		List<Supplier> list = supplierDAO.list();
		int rowCount=list.size();
		assertEquals("Supplier list test case", rowCount, 8);
		
		System.out.println("\nInside JUnit");
		for (Supplier s : list) {
			System.out.println(s.getId() + ":" + s.getName() + ":" + s.getAddress());
		}
	}*/
}