package com.yang.shop.category.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.category.vo.SecondCategory;

/**
 * 二级分类持久层
 * @author yangruxi
 *
 */
public class SecondCategoryDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//根据二级分类ID进行查询
	public SecondCategory findBySecondCategoryId(Integer secondCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.category.vo.SecondCategory s WHERE s.secondCategoryId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, secondCategoryId);
		List<SecondCategory> list = query.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
}
