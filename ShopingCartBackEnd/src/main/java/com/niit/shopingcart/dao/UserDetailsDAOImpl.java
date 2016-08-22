package com.niit.shopingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopingcart.model.UserDetails;

@Repository("userDetailsDAO")
public class UserDetailsDAOImpl implements UserDetailsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;		
	}

	@Transactional
	public boolean save(UserDetails userDetails) {
		// TODO Auto-generated method stub

		try {
			sessionFactory.getCurrentSession().save(userDetails);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean saveOrUpdate(UserDetails userDetails) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
			sessionFactory.getCurrentSession().flush();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(UserDetails userDetails) {
		try {
			sessionFactory.getCurrentSession().update(userDetails);
			sessionFactory.getCurrentSession().flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {
			UserDetails userDetailsToDelete = new UserDetails();
			userDetailsToDelete.setId(id);
			sessionFactory.getCurrentSession().delete(userDetailsToDelete);
			sessionFactory.getCurrentSession().flush();
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public UserDetails getById(String id) {

		String hql = "from UserDetails where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) query.list();

		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}

		return null;
	}
	public UserDetails getByPhone(String phone) {
		// TODO Auto-generated method stub
		
		String hql = "from USERDETAILS where PHONE='" + phone + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		System.out.println("Inside getPhone");
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) query.list();

		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}
		return null;
	}

	public UserDetails getByEmail(String email) {
		// TODO Auto-generated method stub
		System.out.println("Inside getEmail");
		String hql = "from UserDetails where email='" + email + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) query.list();

		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}
		return null;
	}
	
	
	@Transactional
	public List<UserDetails> list() {

		String hql = "from UserDetails ";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<UserDetails> list = query.list();
		if (list == null || list.isEmpty()) {
			System.out.println("No products available");
		}
		return list;
	}
}
