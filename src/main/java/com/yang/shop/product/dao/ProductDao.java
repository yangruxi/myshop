package com.yang.shop.product.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;
import com.yang.shop.utils.PageHibernateCallback;

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
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.firstCategory.firstCategoryId = 1 ORDER BY p.ctime DESC";
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
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.firstCategory.firstCategoryId = 2 ORDER BY p.ctime DESC";
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
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.firstCategory.firstCategoryId = 3 ORDER BY p.ctime DESC";
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
		String hql = "FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.firstCategory.firstCategoryId = 4 ORDER BY p.ctime DESC";
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

	/**
	 * 使用商品和商品详情图片、商品细节表之间的关联查询来做，这两个方法暂时用不上
	 * @return
	 */
	//根据商品ID查询商品详情图片
//	public ProductPic findPicByPid(Integer goodId) {
//		//使用离线条件查询
//		DetachedCriteria dc = DetachedCriteria.forClass(ProductPic.class);
//		dc.add(Restrictions.eq("product.goodId", goodId));
//		Session session = sessionFactory.getCurrentSession();
//		Criteria criteria = dc.getExecutableCriteria(session);
//		List<ProductPic> list = criteria.list();
//		if(list != null && list.size() > 0) {
//			return list.get(0);
//		}
//		return null;
//	}
	
	//根据商品ID查询商品细节（尺码、规格等等）
//	public List<ProductDetail> findDetailBypid(Integer goodId) {
//		//使用离线条件查询
//		DetachedCriteria dc = DetachedCriteria.forClass(ProductDetail.class);
//		dc.add(Restrictions.eq("product.goodId", goodId));
//		Session session = sessionFactory.getCurrentSession();
//		Criteria criteria = dc.getExecutableCriteria(session);
//		List<ProductDetail> list = criteria.list();
//		if(list != null && list.size() > 0) {
//			return list;
//		}
//		return null;
//	}

	//根据一级分类的ID查询商品个数
	public int findTotalCountByFCid(Integer firstCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.firstCategory.firstCategoryId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, firstCategoryId);
		List<Long> list = query.list();
		if (list != null & list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//根据一级分类ID查询商品的集合
	public List<Product> findByPageFCid(Integer firstCategoryId, int begin, int limit) throws Exception {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT p FROM com.yang.shop.product.vo.Product p JOIN p.thirdCategory t JOIN t.secondCategory s JOIN s.firstCategory f WHERE f.firstCategoryId = ?";
		PageHibernateCallback<Product> pageHibernateCallback = new PageHibernateCallback<Product>(hql, new Object[]{firstCategoryId}, begin, limit);
		List<Product> list = pageHibernateCallback.doInHibernate(session);
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//根据二级分类ID查询商品个数
	public int findTotalCountBySCid(Integer secondCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.secondCategory.secondCategoryId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, secondCategoryId);
		List<Long> list = query.list();
		if (list != null & list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//根据二级分类ID查询商品
	public List<Product> findByPageSCid(Integer secondCategoryId, int begin, int limit) throws Exception {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT p FROM com.yang.shop.product.vo.Product p JOIN p.thirdCategory t JOIN t.secondCategory s WHERE s.secondCategoryId = ?";
		PageHibernateCallback<Product> pageHibernateCallback = new PageHibernateCallback<Product>(hql, new Object[]{secondCategoryId}, begin, limit);
		List<Product> list = pageHibernateCallback.doInHibernate(session);
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//根据三级分类ID查询商品个数
	public int findTotalCountByTCid(Integer thirdCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM com.yang.shop.product.vo.Product p WHERE p.thirdCategory.thirdCategoryId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, thirdCategoryId);
		List<Long> list = query.list();
		if (list != null & list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//根据三级分类ID查询商品
	public List<Product> findByPageTCid(Integer thirdCategoryId, int begin, int limit) throws Exception {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT p FROM com.yang.shop.product.vo.Product p JOIN p.thirdCategory t WHERE t.thirdCategoryId = ?";
		PageHibernateCallback<Product> pageHibernateCallback = new PageHibernateCallback<Product>(hql, new Object[]{thirdCategoryId}, begin, limit);
		List<Product> list = pageHibernateCallback.doInHibernate(session);
		if(list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
