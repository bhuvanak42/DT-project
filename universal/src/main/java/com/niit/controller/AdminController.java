package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AdminController {


	@RequestMapping("/admin")
    public String adminPage() {
        return "Admin";
    }
	
	
	
	/*@RequestMapping("/categories")
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
	*/
	
	
	
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
