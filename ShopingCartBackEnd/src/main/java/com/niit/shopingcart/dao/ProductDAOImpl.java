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

import com.niit.shopingcart.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	private static final Logger log=LoggerFactory.getLogger(ProductDAOImpl.class);
	
	
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean save(Product product) {
		// TODO Auto-generated method stub

		try {
			log.debug("Starting of method save");
			sessionFactory.getCurrentSession().save(product);
			log.debug("Ending of method save");
			return true;
		} catch (HibernateException e) {
			log.debug("Starting of catch in method save");
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Product product) {
		// TODO Auto-generated method stub
		try {log.debug("Starting of method update");
			sessionFactory.getCurrentSession().update(product);
			sessionFactory.getCurrentSession().flush();
			log.debug("Ending of method save");
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			
			System.out.println("Product updateeeeee was unsuccessfull in impl");
			//e.printStackTrace();			
		}
		System.out.println("xxxxxxxxxx");
		return false;
	}

	@Transactional
	public void saveOrUpdate(Product product) {
		try {log.debug("Starting of method save or update");
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			sessionFactory.getCurrentSession().flush();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log.debug("Ending of method save or update");
			System.out.println("Product update was unsuccessfull in impl");
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {log.debug("Starting of method delete");
			Product productToDelete = new Product();
			productToDelete.setId(id);		
			sessionFactory.getCurrentSession().delete(productToDelete);
			sessionFactory.getCurrentSession().flush();
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("Product delete was unsuccessfull in impl");
			e.printStackTrace();
			log.debug("Ending of method delete");
			return false;
		}
	}

	@Transactional
	public Product get(String id) {
		
		log.debug("Starting of method get id");
		String hql = "from Product where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		log.debug("Ending of method get id");

		return null;
	}

	@Transactional
	public List<Product> list() {
		log.debug("Starting of method list");
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		log.debug("Ending of method list");
		return listProduct;
	}
}
