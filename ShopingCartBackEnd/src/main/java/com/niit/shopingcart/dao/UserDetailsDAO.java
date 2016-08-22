package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.UserDetails;

public interface UserDetailsDAO {

	public boolean save(UserDetails userdetails);

	public boolean update(UserDetails userdetails);

	public boolean saveOrUpdate(UserDetails userdetails);

	public boolean delete(String id);

	public UserDetails getById(String id);
	
	public UserDetails getByPhone(String phone);
	
	public UserDetails getByEmail(String email);

	public List<UserDetails> list();

}
