package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	/*
	 * This controller is to load login page and show login related errors
	 */

	@RequestMapping("/loginPage")
	public String loadLoginPage() {
		return "customerLogin";
	}


	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		System.out.println("Inside login mapping");
		System.out.println(logout+"    "+error);
		
		if (error != null) {

		//	System.out.println("Login failure.. "+logout+"   "+error);
			model.addAttribute("error", "Invalid username and password");
			return "customerLogin";// return to login page
		}
	
		//After successfull logout
		
		return "iindex";
		
	}
}
