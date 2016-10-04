package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public ModelAndView loadContactPage( ){
		ModelAndView model=new ModelAndView("contact");
		model.addObject("message","Message sent successfully");
		return model;
	}

	@RequestMapping(value="/contact",method = RequestMethod.GET)
	public String getContactPage(){
		return "contact";
	}
	
	

	@RequestMapping(value="/shippingPage",method = RequestMethod.GET)
	public String getShippingPage(){
		return "Shipping";
	}
	
	
	@RequestMapping(value = "/thankYouPage", method = RequestMethod.POST)
	public ModelAndView loadShippingPage(){
		ModelAndView model=new ModelAndView("thankYou");
		return model;
	}
	
}
