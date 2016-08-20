package com.niit.shopingcart.model;

import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class UserDetails {
	@Id
	private String id;
	@Min(2)
	@Max(50)
	private String name;
	@Max(10)	
	private String phone;	
	private String address;
	private String email;
	@Min(6)
	@Max(20)
	private String password;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
