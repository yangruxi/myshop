package com.yang.shop.category.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.category.vo.FirstCategory;

/**
 * 一级分类持久层
 * @author yangruxi
 *
 */
public class FirstCategoryDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//查询所有一级分类
	public List<FirstCategory> findAll() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.category.vo.FirstCategory";
		Query query = session.createQuery(hql);
		List<FirstCategory> list = query.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
	
}
