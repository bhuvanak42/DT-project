package com.niit.shopingcart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.CategoryDAOImpl;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.ProductDAOImpl;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.dao.SupplierDAOImpl;
import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.dao.UserDetailsDAOImpl;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.shopingcart.model.UserDetails;

@Configuration
@ComponentScan("com.niit.shopingcart")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/niitDB");
		dataSource.setUsername("sa");
		dataSource.setPassword("sa");

		return dataSource;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());

		sessionBuilder.addAnnotatedClasses(Category.class);
		sessionBuilder.addAnnotatedClasses(Product.class);
		sessionBuilder.addAnnotatedClasses(Supplier.class);
		sessionBuilder.addAnnotatedClasses(UserDetails.class);

		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		
		return transactionManager;
	}

	@Autowired
	@Bean(name = "categoryDao")
	public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {		
		return new CategoryDAOImpl(sessionFactory);
	}

	@Autowired
	@Bean(name = "supplierDao")
	public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
		return new SupplierDAOImpl(sessionFactory);
	}

	@Autowired
	@Bean(name = "productDao")
	public ProductDAO getProductDao(SessionFactory sessionFactory) {
		return new ProductDAOImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "userDetailsDao")
	public UserDetailsDAO getUserDetailsDao(SessionFactory sessionFactory) {
		return new UserDetailsDAOImpl(sessionFactory);
	}
}
