package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
@Controller
public class IndexController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	
	
	
	@RequestMapping("/")
	public ModelAndView getPage(HttpSession session, @ModelAttribute("selectedProduct") final Product selectedProduct) {
	
		ModelAndView model=new ModelAndView("/iindex");
		
		model.addObject("categoryList", categoryDAO.list());
		model.addObject("productList", productDAO.list());
		
		System.out.println("inside / mapping");

		if(selectedProduct!=null){
			System.out.println("Inside selected product not null");
			model.addObject("selectedProduct",selectedProduct);
		}
		else
			System.out.println("The object is null");
		
		return model;
		
	}
	

	
	/*@RequestMapping("/")
	public ModelAndView getPage(HttpSession session) {

		session.setAttribute("categoryList", categoryDAO.list());
		ModelAndView model=new ModelAndView("/iindex");
		
		return model;
		//return "iindex";
	}*/
	
	
	@RequestMapping("/index")
	public String gethomePage() {
		return "redirect:/";
	}
	
}
