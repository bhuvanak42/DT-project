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


import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;
import com.niit.util.Util;

@Controller
//@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	

	@Autowired(required = true)
	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	@RequestMapping(value = "/aadmin", method = RequestMethod.GET)
	public String listCategories(Model model) {
		System.out.println("Hello.. I'm inside /aadmin");
		//TO CARRY THE DATA TO NEXT PAGE
		model.addAttribute("msg", "I am inside admin page");
		//model.addAttribute("isAdminClickedCategories", "true");
		//model.addAttribute("categoryList",categoryDAO.list());
		return "Admin";
	}

}
