package com.yang.shop.shopowner.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.shopowner.service.ShopOwnerService;
import com.yang.shop.shopowner.vo.ShopOwner;

/**
 * 商家模块的Action类
 * @author yangruxi
 *
 */
public class ShopOwnerAction extends ActionSupport implements ModelDriven<ShopOwner>{
	//模型驱动使用的对象
	private ShopOwner shopOwner = new ShopOwner();
	
	//注入Service
	private ShopOwnerService shopOwnerService;
	
	public ShopOwner getShopOwner() {
		return shopOwner;
	}

	public void setShopOwner(ShopOwner shopOwner) {
		this.shopOwner = shopOwner;
	}

	public ShopOwnerService getShopOwnerService() {
		return shopOwnerService;
	}

	public void setShopOwnerService(ShopOwnerService shopOwnerService) {
		this.shopOwnerService = shopOwnerService;
	}

	public ShopOwner getModel() {
		return shopOwner;
	}
	
	/**
	 * Ajax异步校验商家用户名
	 * @return
	 * @throws IOException
	 */
	public String findByName() throws IOException {
		//调用Service进行查询
		HttpServletRequest request = ServletActionContext.getRequest();
		String name = request.getParameter("shop_owner_username");
		ShopOwner existShopOwner = shopOwnerService.findByName(name);
		//获得response对象对页面进行输出
		HttpServletResponse response = ServletActionContext.getResponse();
		//设置编码
		response.setContentType("text/html;charset=UTF-8");
		//对结果进行判断
		if(existShopOwner != null) {
			//结果不为null,说明使用该名字的商家存在
			response.getWriter().print("<font color=red size=2>该用户已存在！</font>");
		} else {
			//结果为null，说明该用户名可以使用
			response.getWriter().print("<font color=green size=2>该用户可以使用！</font>");
		}
		return NONE;
	}
	
	//商家注册的方法
	public String save() {
		long ctime = System.currentTimeMillis();
		shopOwner.setCtime(ctime);
		shopOwnerService.save(shopOwner);
		return NONE;
	}
	
	//商家登录的方法
	public String signin() {
		System.out.println("test:商家登录方法");
		ShopOwner existShopOwner = shopOwnerService.signin(shopOwner);
		if(existShopOwner == null) {
			//登录失败
			this.addActionError("商家登录失败：用户名或密码不正确！");
			return LOGIN;
		} else {
			//登录成功
			ServletActionContext.getRequest().getSession().setAttribute("existShopOwner", existShopOwner);
			return "signinSuccess";
		}
	}
}
