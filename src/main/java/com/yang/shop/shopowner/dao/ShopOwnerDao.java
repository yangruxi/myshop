package com.yang.shop.shopowner.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
/**
 * 商家模块持久层代码
 */
import org.hibernate.SessionFactory;

import com.yang.shop.shopowner.vo.ShopOwner;

public class ShopOwnerDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//根据商家用户名查询该商家是否存在
	public ShopOwner findByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM com.yang.shop.shopowner.vo.ShopOwner shopOwner WHERE shopOwner.username = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, name);
		List<ShopOwner> list = query.list();
		if(list != null && list.size() >0) {
			return (ShopOwner) list.get(0);
		}
		return null;
	}

	//将商家信息存入数据库
	public void save(ShopOwner shopOwner) {
		Session session = sessionFactory.getCurrentSession();
		session.save(shopOwner);
	}
	
}
