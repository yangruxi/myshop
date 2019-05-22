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
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;

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
	
	//查询第一个分类的最新商品，限制10个
	public List<Product> findByCategory1() {
		Session session = sessionFactory.getCurrentSession();
		//多表查询，按照ctime倒序
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.thirdCategoryId IN (SELECT t.thirdCategoryId FROM com.yang.shop.category.vo.ThirdCategory t WHERE t.secondCategory.secondCategoryId IN (SELECT s.secondCategoryId FROM com.yang.shop.category.vo.SecondCategory s WHERE s.firstCategory.firstCategoryId=1)) ORDER BY p.ctime DESC";
		Query query = session.createQuery(hql);
		//限制查询结果为8个
		query.setMaxResults(8);
		List<Product> list = query.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
	//查询第二个分类的最新商品
	public List<Product> findByCategory2() {
		Session session = sessionFactory.getCurrentSession();
		//多表查询，按照ctime倒序
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.thirdCategoryId IN (SELECT t.thirdCategoryId FROM com.yang.shop.category.vo.ThirdCategory t WHERE t.secondCategory.secondCategoryId IN (SELECT s.secondCategoryId FROM com.yang.shop.category.vo.SecondCategory s WHERE s.firstCategory.firstCategoryId=2)) ORDER BY p.ctime DESC";
		Query query = session.createQuery(hql);
		//限制查询结果为8个
		query.setMaxResults(8);
		List<Product> list = query.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//查询第三个分类的最新商品
	public List<Product> findByCategory3() {
		Session session = sessionFactory.getCurrentSession();
		//多表查询，按照ctime倒序
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.thirdCategoryId IN (SELECT t.thirdCategoryId FROM com.yang.shop.category.vo.ThirdCategory t WHERE t.secondCategory.secondCategoryId IN (SELECT s.secondCategoryId FROM com.yang.shop.category.vo.SecondCategory s WHERE s.firstCategory.firstCategoryId=3)) ORDER BY p.ctime DESC";
		Query query = session.createQuery(hql);
		//限制查询结果为8个
		query.setMaxResults(8);
		List<Product> list = query.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
	//查询第四个分类的最新商品
	public List<Product> findByCategory4() {
		Session session = sessionFactory.getCurrentSession();
		//多表查询，按照ctime倒序
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.thirdCategoryId IN (SELECT t.thirdCategoryId FROM com.yang.shop.category.vo.ThirdCategory t WHERE t.secondCategory.secondCategoryId IN (SELECT s.secondCategoryId FROM com.yang.shop.category.vo.SecondCategory s WHERE s.firstCategory.firstCategoryId=4)) ORDER BY p.ctime DESC";
		Query query = session.createQuery(hql);
		//限制查询结果为8个
		query.setMaxResults(8);
		List<Product> list = query.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//根据商品ID查询商品
	public Product findByPid(Integer goodId) {
		//使用离线条件进行查询
		DetachedCriteria dc = DetachedCriteria.forClass(Product.class);
		dc.add(Restrictions.eq("goodId", goodId));
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<Product> list = criteria.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	//根据商品ID查询商品详情图片
	public ProductPic findPicByPid(Integer goodId) {
		//使用离线条件查询
		DetachedCriteria dc = DetachedCriteria.forClass(ProductPic.class);
		dc.add(Restrictions.eq("product.goodId", goodId));
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<ProductPic> list = criteria.list();
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public List<ProductDetail> findDetailBypid(Integer goodId) {
		//使用离线条件查询
		DetachedCriteria dc = DetachedCriteria.forClass(ProductDetail.class);
		dc.add(Restrictions.eq("product.goodId", goodId));
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<ProductDetail> list = criteria.list();
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
}
