/*package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;
import com.niit.util.Util;

@Controller
public class AllCustomersController {

	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	

	@Autowired(required = true)
	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategories(Model model) {
		//System.out.println("Hello.. I'm inside /categories list");
		//TO CARRY THE DATA TO NEXT PAGE
		model.addAttribute("isAdminClickedCategories", "true");
		model.addAttribute("category", category);
		model.addAttribute("categoryList",categoryDAO.list());
		return "Admin";
	}

	@RequestMapping("viewCustomers")
	public String getCustomers( Model model) {
		model.addAttribute("userList", this.usersDetailDAO.list());
		 return "redirect:/";
	}

	
	
}*/