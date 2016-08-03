package com.niit.shoppingCart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String getPage(){
	return "index";
	}

	@RequestMapping("/pag1")
	public String getPage1(){
		return "page1";
	}
	
	@RequestMapping("/pag2")
	public String getPage2(){
		return "page2";
	}

}
