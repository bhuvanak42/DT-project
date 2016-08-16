package com.niit.shoppingcartbackend.dao;

import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.model.StudentDTO;

@Repository("studentDAO")
public class StudentDAOImpl implements StudentDAO {
	public StudentDTO createStudent() {

		StudentDTO dto = new StudentDTO();
		dto.setId("STU_001");
		dto.setName("Ram");
		dto.setGrade("First");
		return dto;
	}

}
