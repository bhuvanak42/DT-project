package com.niit.universal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String getPage() {
		return "login";
	}

	@RequestMapping("register")
	public String getRegisterPage() {
		return "customerRegister";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {			
			return "customerLogin";
		}
		model.addAttribute("error", "Invalid username and password");
		return "iindex";// return to landing page
	}

}
