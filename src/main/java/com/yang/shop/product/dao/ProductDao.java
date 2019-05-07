package com.yang.shop.product.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.yang.shop.product.vo.Product;

/**
 * 商品模块持久层代码
 * @author yangruxi
 *
 */
public class ProductDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//首页热门商品的查询
	public List<Product> findHot() {
//		Session session = sessionFactory.getCurrentSession();
//		String hql = "FROM com.yang.shop.product.vo.Product product WHERE product.isHot = 1";
//		Query query = session.createQuery(hql);
//		List<Product> list = query.list();
//		if(list != null && list.size() > 0) {
//			return list;
//		}
		//使用离线条件查询
		DetachedCriteria dc = DetachedCriteria.forClass(Product.class);
		//查询热门商品，条件就是is_hot字段为1
		dc.add(Restrictions.eq("isHot", 1));
		//倒序排序输出
		dc.addOrder(Order.desc("ctime"));
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		criteria.setMaxResults(7);
		List<Product> list = criteria.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
}
