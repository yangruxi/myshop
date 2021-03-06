package com.yang.shop.user.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.user.vo.User;

/**
 * 用户模块持久层的代码
 * @author yangruxi
 *
 */
public class UserDao{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//根据用户名查询是否有该用户
	public User findByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.user.vo.User user WHERE user.username = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		List<User> list = query.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	//将用户信息存入数据库
	public void save(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}
	
	//根据用户名和密码查询数据库中是否存在该用户
	public User signin(User user) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.user.vo.User user WHERE user.username = ? AND user.password = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, user.getUsername());
		query.setParameter(1, user.getPassword());
		List<User> list = query.list();
		if(list != null && list.size() >0) {
			return list.get(0);
		}
		return null;
	}
}
