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

		Supplier supp = (Supplier) context.getBean("supplier");
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");

		supp.setId("SUPP_001");
		supp.setName("iStore");
		supp.setAddress("Jayanagar 3rd Block");

		supplierDAO.saveOrUpdate(supp);

		List<Supplier> list = supplierDAO.list();

		for (Supplier supplier : list) {
			System.out.println(supplier.getId() + ":" + supplier.getName() + ":" + supplier.getAddress());
		}

	}

}
