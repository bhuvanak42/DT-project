package com.niit.shoppingcart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	/*
	 * If you want to navigate to other page wout carrying data.. static page
	 * 
	 * @RequestMapping("/") public String homePage() { return "Home"; }
	 * 
	 */ 
	
	
	@RequestMapping("/")
	public ModelAndView home()// specify pass msg from ctller to home page with
								// carrying data.. dynamic
	{		
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("message", "Thank you for visiting this url");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView loginPage() {
		ModelAndView mv= new ModelAndView("Login");
		mv.addObject("userClickedLoginHere","true");
		return mv;
	}

	@RequestMapping("/Register")
	public ModelAndView registerPage() {
		
		ModelAndView mv=new ModelAndView("Register");
		mv.addObject("userClickedRegisterHere","true");
		return mv;
		
	}
	
	
}
