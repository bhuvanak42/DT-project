package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.shoppingcartbackend.dao.SupplierDAO;
import com.niit.shoppingcartbackend.model.Supplier;

public class SupplierTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcartbackend");
		context.refresh();

		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier = (Supplier) context.getBean("supplier");
		supplier.setId("SUPP_001");
		supplier.setName("SUPP_Name001");
		supplier.setAddress("This is supplier001 description");

		if (supplierDAO.save(supplier) == true) {
			System.out.println("supplier created successfully");

		} else {
			System.out.println("Not able to create the supplier");
		}
	}
}
