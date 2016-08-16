package com.niit.shoppingcartbackend.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.niit.shoppingcartbackend.model.StudentDTO;

@Component("studentManager") 
//@Service("studentManager")- This also correct
public class StudentManagerImpl implements StudentManager{
	@Autowired StudentDAO studentDAO;
	public StudentDTO createStudent(){
		return studentDAO.createStudent();
	}
}
