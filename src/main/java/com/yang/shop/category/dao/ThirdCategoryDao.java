package com.yang.shop.category.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yang.shop.category.vo.SecondCategory;
import com.yang.shop.category.vo.ThirdCategory;

/**
 * 三级分类持久层
 * @author yangruxi
 *
 */
public class ThirdCategoryDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//根据三级分类ID进行查询
	public ThirdCategory findByThirdCategoryId(Integer thirdCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.category.vo.ThirdCategory t WHERE t.thirdCategoryId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, thirdCategoryId);
		List<ThirdCategory> list = query.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
}
