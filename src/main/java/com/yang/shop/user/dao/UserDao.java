package com.yang.shop.user.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.user.entity.User;

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
	private Session getCurrentSession() {
		return this.sessionFactory.openSession();
	}
	//根据用户名查询是否有该用户
	public User findByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.user.entity.User user WHERE user.user_name = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		List<User> list = query.list();
		if(list != null && list.size() > 0) {
			return (User) list.get(0);
		}
		return null;
	}
	//将用户信息存入数据库
	public void save(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}
}
