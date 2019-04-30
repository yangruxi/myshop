package com.yang.shop.admin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.admin.vo.Admin;

public class AdminDao {
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//根据用户名和密码查询该超级管理员是否存在
	public Admin signin(Admin admin) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.admin.vo.Admin admin WHERE username = ? AND password = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, admin.getUsername());
		query.setParameter(1, admin.getPassword());
		List<Admin> list = query.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
