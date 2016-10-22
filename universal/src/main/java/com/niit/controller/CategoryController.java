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

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.util.Util;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String listCategory(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("isAdminClickedCategory", "true");
		model.addAttribute("categoryList", categoryDAO.list());
		return "Admin";
	}

	// For add and update category both
	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {
		String newID = Util.removeComma(category.getId());
		category.setId(newID);
		categoryDAO.saveOrUpdate(category);
		return "redirect:/category";
	}

	@RequestMapping("/category/remove/{id}")
	public String removeCategory(@PathVariable("id") String id, ModelMap model) throws Exception {
		try {
			categoryDAO.delete(id);
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/category";
	}

	@RequestMapping("/category/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		model.addAttribute("category", this.categoryDAO.get(id));
		model.addAttribute("isAdminClickedEditCategory", "true");
		return "Admin";
	}

}