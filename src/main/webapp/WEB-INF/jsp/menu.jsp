<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!--顶部导航条 -->
<div class="am-container header">
	<ul class="message-l">
		<div class="topMessage">
			<div class="menu-hd">
				<s:if test="#session.existUser == null && #session.existShopOwner == null && #session.existAdmin == null">
					<a href="${pageContext.request.contextPath}/user_loginPage.action" target="_top" class="h">亲，请登录</a> 
					<span>&nbsp;&nbsp;</span>
					<a href="${pageContext.request.contextPath}/user_registPage.action" target="_top">免费注册</a>
				</s:if>
				<s:elseif test="#session.existUser != null">
					<font color="#d26f73">用户：<s:property value="#session.existUser.username"/></font>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="#">我的订单</a>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="${pageContext.request.contextPath}/user_quit.action">退出登录</a>
				</s:elseif>
				<s:elseif test="#session.existShopOwner != null">
					<font color="#d26f73">商家：<s:property value="#session.existShopOwner.username"/></font>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="#">我的店铺</a>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="${pageContext.request.contextPath}/shopowner_quit.action">退出登录</a>
				</s:elseif>
				<s:elseif test="#session.existAdmin != null">
					<font color="#d26f73">超级管理员：<s:property value="#session.existAdmin.username"/></font>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="#">管理员页面</a>
					<span>&nbsp;&nbsp;</span>|<span>&nbsp;&nbsp;</span>
					<a href="${pageContext.request.contextPath}/admin_quit.action">退出登录</a>
				</s:elseif>
			</div>
		</div>
	</ul>
	<ul class="message-r">
		<div class="topMessage home">
			<div class="menu-hd">
				<a href="${pageContext.request.contextPath}/index.action" target="_top" class="h">商城首页</a>
			</div>
		</div>
		<div class="topMessage my-shangcheng">
			<div class="menu-hd MyShangcheng">
				<a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
			</div>
		</div>
		<div class="topMessage mini-cart">
			<div class="menu-hd">
				<a id="mc-menu-hd" href="${pageContext.request.contextPath}/cart_myCart.action" target="_top"><i
					class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span>
				</a>
			</div>
		</div>
	</ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
	<div class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" /></div>
	<div class="logoBig">
		<li><img src="${pageContext.request.contextPath}/images/logo.png" /></li>
	</div>

	<div class="search-bar pr">
		<a name="index_none_header_sysc" href="#"></a>
		<form>
			<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="想要什么？" autocomplete="off">
			<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
		</form>
	</div>
</div>
<div class="clear"></div>