package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.util.Util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class ProductController {

	@Autowired(required = true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	private Path path;

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProduct(Model model) {
		System.out.println("Hello.. I'm inside /product list");
		model.addAttribute("isAdminClickedProduct", "true");
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO.list());

		model.addAttribute("Category", new Category());
		model.addAttribute("Supplier", new Supplier());

		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());

		return "Admin";
	}

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, Model model) {

		Category category = categoryDAO.getByName(product.getCategory().getName());
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());

		model.addAttribute("Supplier", supplier);
		model.addAttribute("Category", category);
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());

		String newID = Util.removeComma(product.getId());
		product.setId(newID);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());

		product.setCategory(category);
		product.setSupplier(supplier);

		productDAO.saveOrUpdate(product);

		MultipartFile itemImage = product.getItemImage();
		path = Paths
				.get("D:\\BACK UP\\DONOT DELETE\\universal\\src\\main\\webapp\\WEB-INF\\resources\\img\\productImages\\"
						+ product.getId() + ".png");

		if (itemImage != null && !itemImage.isEmpty()) {
			try {
				itemImage.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("product image saving failed.", e);
			}
		}

		return "redirect:/product";

	}

	@RequestMapping("/product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
			path = Paths
					.get("D:\\BACK UP\\DONOT DELETE\\universal\\src\\main\\webapp\\WEB-INF\\resources\\img\\productImages\\"
							+ id + ".png");

			if (Files.exists(path)) {
				try {
					Files.delete(path);

				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/product";
	}

	@RequestMapping("/product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		model.addAttribute("isAdminClickedEditProduct", "true");
		model.addAttribute("Category", new Category());
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", this.productDAO.get(id));
		return "Admin";
	}

	@RequestMapping("productInfo/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		return "productInfo";
	}

}
