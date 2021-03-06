package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class IndexController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/")
	public ModelAndView getPage(@ModelAttribute("selectedProduct") final Product selectedProduct) {

		ModelAndView model = new ModelAndView("/index");

		model.addObject("categoryList", categoryDAO.list());
		model.addObject("productList", productDAO.list());

		if (selectedProduct != null) {
			model.addObject("selectedProduct", selectedProduct);
		}
		return model;
	}

	@RequestMapping("/index")
	public String gethomePage() {
		return "redirect:/";
	}

	@RequestMapping("/ourTeamPage")
	public String getteamPage() {
		return "ourTeam";
	}

	@RequestMapping("/aboutPage")
	public String aboutUsPage() {
		return "about";
	}

	@RequestMapping("/blogPage")
	public String blogPage() {
		return "blog";
	}
}
