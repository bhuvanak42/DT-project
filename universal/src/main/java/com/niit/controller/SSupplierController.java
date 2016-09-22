package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;
import com.niit.util.Util;

@Controller
public class SSupplierController {

	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;
	

	@Autowired(required = true)
	@Qualifier(value = "supplierDAO")
	public void setSupplierDAO(SupplierDAO supplierDAO) {
		this.supplierDAO = supplierDAO;
	}

	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		//System.out.println("Hello.. I'm inside /suppliers list");
		//TO CARRY THE DATA TO NEXT PAGE
		model.addAttribute("supplier", supplier);
		model.addAttribute("isAdminClickedSuppliers", "true");
		model.addAttribute("supplierList",supplierDAO.list());
		return "Admin";
	}

	// For add and update supplier both
	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {

		String newID=Util.removeComma(supplier.getId());
		supplier.setId(newID);
		
		supplierDAO.saveOrUpdate(supplier);

		return "redirect:/suppliers";
	}

	@RequestMapping("supplier/remove/{id}")
	public String removeSupplier(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(id);
		//	model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/suppliers";
	}

	@RequestMapping("supplier/edit/{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) {
	//	System.out.println("editSupplier");
		model.addAttribute("isAdminClickedEditSuppliers", "true");
		model.addAttribute("supplier", this.supplierDAO.get(id));
		model.addAttribute("supplierList",supplierDAO.list());
		return "Admin";
	}
}
