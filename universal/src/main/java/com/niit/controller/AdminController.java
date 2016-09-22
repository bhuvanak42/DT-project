package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired 
	CategoryDAO categoryDAO;
	@Autowired 
	Category category;
	@Autowired
	ProductDAO productDAO;


	@Autowired(required = true)
	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	@RequestMapping
    public String adminPage() {
        return "Admin";
    }
	
	@RequestMapping("/categories")
    public String loadCategory() {
        return "redirect:/categories";
    }
	
	@RequestMapping("/editCategory/{id}")
    public String editCategory(@ModelAttribute("selectedProduct") final Product selectedProduct) {
        return "redirect:/categories";
    }

	@RequestMapping("/deleteCategory")
    public String deleteCategory() {
        return "redirect:/categories";
    }
	
	
	
	
	 /* @RequestMapping(value = "/aadmin", method = RequestMethod.GET) 
	  public String listCategories(Model model) { 
		  System.out.println("Hello.. I'm inside /aadmin"); 
		  //TO CARRY THE DATA TO NEXT PAGE
		  model.addAttribute("msg", "I am inside admin page");
		  //model.addAttribute("isAdminClickedCategories", "true");
		  //model.addAttribute("categoryList",categoryDAO.list()); return "Admin";
		  return "Admin";
	  }*/
	 

	/*@RequestMapping("/admin/categories")
	public ModelAndView categories() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("category", category);
		mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}*/

/*	@RequestMapping("/admin/products")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("product", product);
		mv.addObject("isAdminClickedProduct", "true");
		mv.addObject("productList", productDAO.list());
		return mv;
	}

	@RequestMapping("/admin/suppliers")
	public ModelAndView suppliers() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("supplier", supplier);
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}*/

}
