package com.niit.universal;

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
	
	@RequestMapping("/admin")
	public String gethomePage() {
		return "AdminPage";
	}
	

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		System.out.println("Login mapping controller");

		if (error != null) {

			System.out.println("Login failure");
			model.addAttribute("error", "Invalid username and password");
			return "customerLogin";// return to login page
		}
		
		System.out.println("Login success");
		model.addAttribute("msg", "User successfully logged in");
		return "AdminPage"; // return to admin page
	}
	
	@RequestMapping("/logout")
	public ModelAndView logoutRedirect(HttpServletRequest request,HttpSession session ) {
		ModelAndView mv= new ModelAndView("/iindex");
		session.invalidate();
		session=request.getSession(true);
		System.out.println("Logout success");
		mv.addObject("logout","You are successfully logged out");
		mv.addObject("loggedout","true");
		return mv;
	}
}
