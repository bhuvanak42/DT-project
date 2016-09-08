/*package com.niit.dao;

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

import com.niit.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	private static final Logger log = LoggerFactory.getLogger(CategoryDAOImpl.class.getName());

	public CategoryDAOImpl() {
	}
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;		
	}

	@Transactional
	public boolean save(Category category) {
		// TODO Auto-generated method stub

		try {
			log.debug("Starting of save method ");			
			sessionFactory.getCurrentSession().save(category);
			log.debug("Ending of save method ");
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			log.error("exception occured in save method" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean saveOrUpdate(Category category) {
		try {
			log.debug("Starting of saveOrUpdate method ");
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			sessionFactory.getCurrentSession().flush();
			log.debug("Ending of saveOrUpdate method ");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.error("exception occured in saveOrUpdate method" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Category category) {
		try {
			log.debug("Starting of update method ");
			sessionFactory.getCurrentSession().update(category);
			sessionFactory.getCurrentSession().flush();
			log.debug("Ending of update method ");
			return true;
		} catch (Exception e) {
			log.error("exception occured in update method" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {
			Category categoryToDelete = new Category();
			categoryToDelete.setId(id);
			log.debug("Starting of delete method ");
			sessionFactory.getCurrentSession().delete(categoryToDelete);
			sessionFactory.getCurrentSession().flush();
			log.debug("Ending of delete method ");
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			log.error("exception occured in delete method" + e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public Category get(String id) {

		log.debug("Starting of get method hql");		
		log.info("Trying to get category based on id");

		String hql = "from Category where id='" + id + "'";
		log.info("hql query is " + hql);

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		log.debug("Starting of get method hql");

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			log.info("no product is available with this id :" + id);

			return listCategory.get(0);
		}

		return null;
	}

	@Transactional
	public Category getByName(String name) {

		log.debug("Starting of get method hql");		
		log.info("Trying to get category based on name");

		String hql = "from Category where name='" + name + "'";
		log.info("hql query is " + hql);

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		log.debug("Starting of get method hql");

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			log.info("no product is available with this name :" + name);

			return listCategory.get(0);
		}

		return null;
	}
	
	@Transactional
	public List<Category> list() {

		log.debug("Starting of list method");
		String hql = "from Category ";
		Query query = sessionFactory.openSession().createQuery(hql);
		List<Category> list = query.list();
		if (list == null || list.isEmpty()) {
			log.info("No products are available");
		}
		log.debug("Ending of list method");
		return list;
	}
}
*/