package com.yang.shop.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yang.shop.user.entity.User;

/**
 * 用户模块持久层的代码
 * @author yangruxi
 *
 */
public class UserDao extends HibernateDaoSupport{
	//根据用户名查询是否有该用户
	public User findByUsername(String username) {
		String hql = "from users where user_name = ?";
		List<Object> list = this.getHibernateTemplate().find(hql, username);
		if(list != null && list.size() > 0) {
			return (User) list.get(0);
		}
		return null;
	}
}
