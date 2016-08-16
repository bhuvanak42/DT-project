package com.niit.shoppingcartbackend.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.model.UserDetails;

@Repository
public interface UserDetailsDAO  {

	//declare all crud operations
	
	public boolean save(UserDetails userDetails);
	public boolean delete(UserDetails userDetails);
	public boolean update(UserDetails userDetails);
	public UserDetails get(String id);
	public List<UserDetails> list();
}
