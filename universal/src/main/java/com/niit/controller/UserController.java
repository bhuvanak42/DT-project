/*package com.niit.shopingcart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.model.UserDetails;

@Controller
public class UserController {

	// when user clicked login

	@Autowired
	UserDetailsDAO usersDetailDao;

	@Autowired
	UserDetails usersDetail;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "id") String id, @RequestParam(value = "password") String password,
			HttpSession session) {
		ModelAndView mv = new ModelAndView("home");
		String msg;
		usersDetail = usersDetailDao.isValidUser(id, password);

		if (usersDetail == null) {
			msg = "Invalid user please try again";
		} else {
			// find out user is admin or not
			if (usersDetail.getRole().equals("ROLE_ADMIN")) {
				mv = new ModelAndView("adminHome");
			} else {
				// stay in home
				mv.addObject("", usersDetail.getUsername());
			}
			session.setAttribute("welcomeMsg", usersDetail.getUsername());
			session.setAttribute("userId", usersDetail.getUserId());
		}
		return mv;
	}

}*/



/*package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UsersDetailDao;

@Controller
public class UserController {

   @Autowired
	UsersDetailDao usersDetailDao;
    
    @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in UserController");

		String message;
		ModelAndView mv ;
		if (usersDetailDao.isValidUser(name, password)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("iindex");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("login");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
	
	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute UsersDetail usersDetail) {
		usersDetailDao.addUser(usersDetail);
	  return new ModelAndView("/adminHome");
	 }


}*/
