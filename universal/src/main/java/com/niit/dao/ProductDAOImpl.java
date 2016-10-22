package com.niit.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public boolean saveOrUpdate(Product product) {
		try {

			Session session = sessionFactory.openSession();
			session.saveOrUpdate(product);
			session.flush();

			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {
			Product productToDelete = new Product();
			productToDelete.setId(id);
			Session session = sessionFactory.openSession();
			session.delete(productToDelete);
			session.flush();
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public Product get(String id) {
		String hql = "from Product where id='" + id + "'";
		Query query = sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}

	@Transactional
	public Product getByName(String name) {

		String hql = "from Product where name='" + name + "'";
		Query query = sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}

	@Transactional
	public List<Product> list() {

		String hql = "from Product ORDER BY ID ASC ";
		Query query = sessionFactory.openSession().createQuery(hql);
		List<Product> list = query.list();
		if (list == null || list.isEmpty()) {
			System.out.println("No products available");
		}
		return list;
	}
}
