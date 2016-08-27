package com.niit.universal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UsersDetailDao;
import com.niit.model.UsersDetail;

import javax.validation.Valid;
import java.util.List;


/*
 * This Controller is used to register user into the system
 */
@Controller
public class UserRegistrationController {

    @Autowired
    private UsersDetailDao usersDetailDAO;
    
    /*
     * registerUserPost method is used to register user into  the system and to show registration related errors
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost( @ModelAttribute("usersDetail") UsersDetail usersDetail, Model model) {

        usersDetail.setEnabled(true);
        //userdetails.setrole("role_admin");

        usersDetailDAO.addUser(usersDetail);

        return "addUserSuccess";

    }

}