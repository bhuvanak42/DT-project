package com.niit.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public Supplier get(String id) {
		String hql = "from Supplier where id='" + id + "'";
		Session session = sessionFactory.openSession();		
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		if (listSupplier != null && !listSupplier.isEmpty()) {			
			return listSupplier.get(0);
		}
		return null;
	}

	@Transactional
	public Supplier getByName(String name) {
		String hql = "from Supplier where name='" + name + "'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}
	
	@Transactional
	public boolean saveOrUpdate(Supplier supplier) {
		
		try {
			Session session = sessionFactory.openSession();
			session.saveOrUpdate(supplier); 
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
			Supplier supplierToDelete = new Supplier();
			supplierToDelete.setId(id);
		
			Session session = sessionFactory.openSession();
			session.delete(supplierToDelete);
			session.flush();
			
			
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
		
			e.printStackTrace();
			return false;
		}
	}

	
	@Transactional
	public List<Supplier> list() {
		
		String hql = "from Supplier ORDER BY ID ASC";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		List<Supplier> list = query.list();
		if (list == null || list.isEmpty()) {
		System.out.println("list is empty");
		}
		
		return list;
	}
}
