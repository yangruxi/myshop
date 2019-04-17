package com.yang.shop.user.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户模块的Action类
 * @author yangruxi
 *
 */
public class UserAction extends ActionSupport{
	/**
	 * 跳转到注册页面的执行方法
	 */
	public String registPage(){
		return "registPage";
	}
}
