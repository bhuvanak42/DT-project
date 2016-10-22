package com.niit.dao;

import com.niit.model.Cart;

import java.io.IOException;
import java.util.List;

public interface CartDao {

	Cart getCartById(int cartId);

	Cart validate(int cartId) throws IOException;

	public void update(Cart cart);
}
