package com.yang.shop.user.action;


import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.user.entity.User;
import com.yang.shop.user.service.UserService;

/**
 * 用户模块的Action类
 * @author yangruxi
 *
 */
public class UserAction extends ActionSupport implements ModelDriven<User>{
	//模型驱动使用的对象
	private User user = new User();
	//注入Service
	private UserService userService;
	
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	/**
	 * 跳转到注册页面的执行方法
	 */
	public String registPage(){
		return "registPage";
	}

	/**
	 * Ajax进行用户名异步校验
	 * @throws IOException 
	 */
	public String findByUsername() throws IOException {
		//调用Service进行查询
		User exitUser =  userService.findByUsername(user.getUser_name());
		//获得response对象，将页面进行输出
		HttpServletResponse response = ServletActionContext.getResponse();
		//设置编码
		response.setContentType("text/html;charset=UTF-8");
		//对结果进行判断
		if(exitUser != null) {
			//返回结果不为null，则代表使用该用户名的对象已存在
			response.getWriter().print("<font clolor='red'>该用户名已存在！</font>");
		} else {
			//返回结果为null，则代表该用户名可以使用
			response.getWriter().print("<font clolor='green'>该用户名可以使用</font>");
		}
		return NONE;
	}
}
