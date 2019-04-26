<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="${pageContext.request.contextPath}/css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
		<script type="text/javascript">
			//用户登录表单校验
			function checkForm() {
				//校验用户名
				var user = document.getElementById("user").value;
				if(user == null || user == '') {
					msg1.innerHTML = "<font  color=red size=2>用户名不能为空！</font>";
					return false;
				}
				//校验密码
				var password = document.getElementById("password").value;
				if(password == null || password == '') {
					msg2.innerHTML = "<font  color=red size=2>密码不能为空！</font>";
					return false;
				}
			}
			//商家登录表单验证
			function checkForm2() {
				//校验用户名
				var user = document.getElementById("user").value;
				if(user == null || user == '') {
					msg3.innerHTML = "<font  color=red size=2>用户名不能为空！</font>";
					return false;
				}
				//校验密码
				var password = document.getElementById("password").value;
				if(password == null || password == '') {
					msg4.innerHTML = "<font  color=red size=2>密码不能为空！</font>";
					return false;
				}
			}
			//管理员登录表单验证
			function checkForm3() {
				//校验用户名
				var user = document.getElementById("user").value;
				if(user == null || user == '') {
					msg5.innerHTML = "<font  color=red size=2>用户名不能为空！</font>";
					return false;
				}
				//校验密码
				var password = document.getElementById("password").value;
				if(password == null || password == '') {
					msg6.innerHTML = "<font  color=red size=2>密码不能为空！</font>";
					return false;
				}
			}
		</script>
	</head>

	<body>

		<div class="login-boxtitle">
			<div class="div-inline blank"></div>
			<div class="div-inline logo"><img src="${pageContext.request.contextPath}/images/logo.png" /></div>
		</div>
		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img class="login-img" src="${pageContext.request.contextPath}/images/login-background.jpeg" /></div>
				<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">用户登录</a></li>
						<li><a href="">商家登录</a></li>
						<li><a href="">管理员登录</a></li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form action="" method="post" onsubmit="return checkForm();">
								<div class="user-name">
									<label for="user"><i class="am-icon-user"></i></label> <input
										type="text" name="" id="user" placeholder="邮箱/手机/用户名">
								</div>
								<div id="msg1"></div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="" id="password" placeholder="请输入密码">
								</div>
								<div id="msg2"></div>
								<div class="login-links">
									<div class="div-check">
										<input id="remember-me" type="checkbox">
									</div>
									<div class="div-text">记住密码</div>
									<a href="#" class="am-fr">忘记密码</a>
									<br />
								</div>
								<div class="am-cf">
									<input type="submit" name="" value="登 录"
										class="am-btn am-btn-primary am-btn-sm">
								</div>
							</form>
							<div class="regist-now">
								<a href="${pageContext.request.contextPath}/user_registPage.action" class="">没有账号？立即注册</a>
							</div>
						</div>

						<div class="am-tab-panel">
							<form action="" method="post" onsubmit="return checkForm2();">
								<div class="user-name">
									<label for="user"><i class="am-icon-user"></i></label> <input
										type="text" name="" id="user" placeholder="邮箱/手机/用户名">
								</div>
								<div id="msg3"></div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="" id="password" placeholder="请输入密码">
								</div>
								<div id="msg4"></div>
								<div class="login-links">
									<div class="div-check">
										<input id="remember-me" type="checkbox">
									</div>
									<div class="div-text">记住密码</div>
									<a href="#" class="am-fr">忘记密码</a>
									<br />
								</div>
								<div class="am-cf">
									<input type="submit" name="" value="登 录"
										class="am-btn am-btn-primary am-btn-sm">
								</div>
							</form>
							<div class="regist-now">
								<a href="${pageContext.request.contextPath}/user_registPage.action" class="">没有商家账号？立即注册</a>
							</div>
						</div>
						<div class="am-tab-panel">
							<form action="" method="post" onsubmit="return checkForm3();">
								<div class="user-name">
									<label for="user"><i class="am-icon-user"></i></label> <input
										type="text" name="" id="user" placeholder="邮箱/手机/用户名">
								</div>
								<div id="msg5"></div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="" id="password" placeholder="请输入密码">
								</div>
								<div id="msg6"></div>
								<div class="login-links">
									<div class="div-check">
										<input id="remember-me" type="checkbox">
									</div>
									<div class="div-text">记住密码</div>
									<a href="#" class="am-fr">忘记密码</a>
									<br />
								</div>
								<div class="am-cf">
									<input type="submit" name="" value="登 录"
										class="am-btn am-btn-primary am-btn-sm">
								</div>
							</form>
						</div>

						<script>
							$(function() {
								$('#doc-my-tabs').tabs();
							})
						</script>

					</div>
				</div>

			</div>	
			</div>
		</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">XIXI科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于XIXI</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Xixi.com 版权所有</em>
							</p>
						</div>
					</div>
	</body>

</html>
