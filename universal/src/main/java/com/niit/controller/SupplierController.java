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

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;
import com.niit.util.Util;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired(required = true)
	@Qualifier(value = "supplierDAO")
	public void setSupplierDAO(SupplierDAO supplierDAO) {
		this.supplierDAO = supplierDAO;
	}

	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String listSupplier(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("isAdminClickedSupplier", "true");
		model.addAttribute("supplierList", supplierDAO.list());
		return "Admin";
	}

	// For add and update supplier both
	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		String newID = Util.removeComma(supplier.getId());
		supplier.setId(newID);
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:/supplier";
	}

	@RequestMapping("/supplier/remove/{id}")
	public String removeSupplier(@PathVariable("id") String id, ModelMap model) throws Exception {
		try {
			supplierDAO.delete(id);
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/supplier";
	}

	@RequestMapping("/supplier/edit/{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) {
		model.addAttribute("supplier", this.supplierDAO.get(id));
		model.addAttribute("isAdminClickedEditSupplier", "true");
		return "Admin";
	}
}