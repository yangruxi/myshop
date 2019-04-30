package com.yang.shop.admin.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.admin.service.AdminService;
import com.yang.shop.admin.vo.Admin;

/**
 * 超级管理员模块的Action类
 * @author yangruxi
 *
 */
public class AdminAction extends ActionSupport implements ModelDriven<Admin>{
	//模型驱动使用的对象
	private Admin admin = new Admin();
	
	//注入Service
	private AdminService adminService;
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public Admin getModel() {
		return admin;
	}
	
	//超级管理员登录
	public String signin(){
		Admin existAdmin = adminService.signin(admin);
		if(existAdmin == null) {
			//登录失败
			this.addActionError("管理员登录失败：用户名或密码错误！");
			return LOGIN;
		} else {
			//登录成功
			ServletActionContext.getRequest().getSession().setAttribute("existAdmin", existAdmin);
			return "signinSuccess";
		}
	}
	
	//超级管理员退出登录
	public String quit() {
		//销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quit";
	}
}
