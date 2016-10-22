package com.niit.dao;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.UsersDetail;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();	
		session.saveOrUpdate(cartItem);
		session.flush();
	}

	public void removeCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();
		session.delete(cartItem);
		session.flush();
	}

	public void removeAllCartItems(Cart cart) {
		List<CartItem> cartItems = cart.getCartItems();
		for (CartItem item : cartItems) {
			removeCartItem(item);
		}
	}


	public CartItem getCartItemByProductId(String id, int cartId) {
		

		List<CartItem> cartItems = getAllCartItems(cartId);
		if (cartItems != null && !cartItems.isEmpty()) {
			for (CartItem item : cartItems) {
				if (item.getProduct().getId().equals(id)){
					return item;
				}
			}
		}

		return null;
	}

	public List<CartItem> getAllCartItems(int cartId) {

		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CartItem where CARTID = '" + cartId + "' ORDER BY ID ASC");
		List<CartItem> cartItems = query.list();
		return cartItems;
	}

}
