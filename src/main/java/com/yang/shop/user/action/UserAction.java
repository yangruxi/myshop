package com.yang.shop.user.action;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.user.service.UserService;
import com.yang.shop.user.vo.User;

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
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public User getModel() {
		return user;
	}
	
	//跳转到注册页面的执行方法
	public String registPage() {
		return "registPage";
	}

	/**
	 * Ajax进行用户名异步校验
	 * @throws IOException 
	 */
	public String findByUsername() throws IOException {
		//调用Service进行查询
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		User existUser =  userService.findByUsername(username);
		//获得response对象，将页面进行输出
		HttpServletResponse response = ServletActionContext.getResponse();
		//设置编码
		response.setContentType("text/html;charset=UTF-8");
		//对结果进行判断
		if(existUser != null) {
			//返回结果不为null，则代表使用该用户名的对象已存在
			response.getWriter().print("<font color=red size=2>该用户名已存在！</font>");
		} else {
			//返回结果为null，则代表该用户名可以使用
			response.getWriter().print("<font color=green size=2>该用户名可以使用!</font>");
		}
		return NONE;
	}
	
	@Override
	public void addActionError(String anErrorMessage) {
		// TODO Auto-generated method stub
		super.addActionError(anErrorMessage);
	}
	@Override
	public void addActionMessage(String aMessage) {
		// TODO Auto-generated method stub
		super.addActionMessage(aMessage);
	}
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		// TODO Auto-generated method stub
		super.addFieldError(fieldName, errorMessage);
	}
	
	//用户注册的方法
	public String save() {
		Long ctime = System.currentTimeMillis();
		user.setCtime(ctime);
		userService.save(user);
		return NONE;
	}
	
	//跳转到用户登录的方法
	public String loginPage() {
		return "loginPage";
	}
	
	//用户登录的方法
	public String signin() {
		User existUser = userService.signin(user);
		if(existUser == null) {
			//登录失败
			this.addActionError("用户登录失败：用户名或密码错误！");
			return LOGIN;
		} else {
			//登录成功
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			return "signinSuccess";
		}
	}
	
	//用户退出登录的方法
	public String quit() {
		//销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quit";
	}
}
