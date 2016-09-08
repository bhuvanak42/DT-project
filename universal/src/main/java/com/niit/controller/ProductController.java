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
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.util.Util;


@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	/*
	 * @Autowired(required=true)
	 * 
	 * @Qualifier(value="productDAO") public void setProductDAO(ProductDAO ps){
	 * this.productDAO = ps; }
	 */

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO.list());
		
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		return "product";
	}

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,Model model) {

		Category category = categoryDAO.getByName(product.getCategory().getName());
		//categoryDAO.saveOrUpdate(category);
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		//supplierDAO.saveOrUpdate(supplier);
		System.out.println(supplier.getId() + ":" + supplier.getName() + ":" + supplier.getAddress());

		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		String newID = Util.removeComma(product.getId());
		product.setId(newID);
				
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		product.setCategory(category);
		product.setSupplier(supplier);
		
		productDAO.saveOrUpdate(product);

		return "redirect:/products";

	}

	@RequestMapping("product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/products";
	}

	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("listProducts", this.productDAO.list());
		return "product";
	}
}
