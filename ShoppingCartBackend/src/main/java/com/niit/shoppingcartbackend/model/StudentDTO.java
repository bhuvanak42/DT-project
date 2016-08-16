package com.niit.shoppingcartbackend.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class StudentDTO {
	private String id;
	private String name;
	private String grade;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("\nStudent Id : " + this.id);
		buffer.append("\nStudent Name : " + this.name);
		buffer.append("\nStudent Grade : " + this.grade);
		return buffer.toString();
	}
}
