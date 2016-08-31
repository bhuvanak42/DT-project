package com.niit.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.UserRole;
import com.niit.model.Users;
import com.niit.model.UsersDetail;

import java.util.List;

import javax.transaction.Transactional;

@Repository("userDetailsImpl")
@Transactional
public class UsersDetailDaoImpl implements UsersDetailDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addUser(UsersDetail usersDetail) {
    	
        Session session = sessionFactory.openSession();
        
        session.saveOrUpdate(usersDetail);
       
        Users newUser = new Users();
        newUser.setUsername(usersDetail.getUsername());
        newUser.setPassword(usersDetail.getPassword());
        newUser.setEnabled(true);
        newUser.setUserId(usersDetail.getUserId());

        UserRole newUserRole = new UserRole();
        newUserRole.setUsername(usersDetail.getUsername());
        newUserRole.setRole("ROLE_ADMIN");
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newUserRole);
        
       
        session.flush();
    }

    
   /* //LOOK HERE
    @Transactional
    public UsersDetail isValidUser(String id, String password)
    {
    	//select * from UserDetails where id='101' and password='niit'
    	String hql="from UserDetails where id='"+id+"' and password='"+password+"'";
    	Query query=sessionFactory.getCurrentSession().createQuery(hql);
    	
    	List<UsersDetail> list=query.list();//list of user details
    	if(list==null){
        	return null;    		
    	}
    	else{
    		return list.get(0);
    	}
    }*/
    
    
    public UsersDetail getUserById (int userId) {
        Session session = sessionFactory.getCurrentSession();
        return (UsersDetail) session.get(UsersDetail.class, userId);
    }

    public List<UsersDetail> getAllUsers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from UsersDetail");
        List<UsersDetail> usersDetail = query.list();

        return usersDetail;
    }

    public UsersDetail getUserByUsername (String username) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from UsersDetail where username = ?");
        query.setString(0, username);
        return (UsersDetail) query.uniqueResult();
    }
}