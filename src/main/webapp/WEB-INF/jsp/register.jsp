<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
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
			//用户注册表单校验
			function checkForm() {
				//校验用户名
				var username = document.getElementById("username").value;
				if (username == null || username == '') {
					//alert("请填写用户名！");
					msg1.innerHTML = "<font color=red size=2>请填写用户名！</font>";
					return false;
				}
				//校验密码
				var password = document.getElementById("password").value;
				if (password == null || password == '') {
					msg2.innerHTML = "<font color=red size=2>请填写密码！</font>";
					return false;
				}
				//校验再次输入的密码
				var passwordRepeat = document.getElementById("passwordRepeat").value;
				//是否为空
				if (passwordRepeat == null || passwordRepeat == '') {
					msg3.innerHTML = "<font color=red size=2>请再次输入密码确认！</font>";
					return false;
				}
				//校验两次输入是否一致
				if (passwordRepeat != password) {
					msg3.innerHTML = "<font color=red size=2>两次输入的密码不一致！</font>";
					return false;
				}
			}
			//店家注册页面表单校验
			function checkForm2() {
				//校验用户名
				var username = document.getElementById("shop_owner_username").value;
				if (username == null || username == '') {
					//alert("请填写用户名！");
					msg4.innerHTML = "<font color=red size=2>请填写用户名！</font>";
					return false;
				}
				//校验密码
				var password = document.getElementById("shop_owner_password").value;
				if (password == null || password == '') {
					msg5.innerHTML = "<font color=red size=2>请填写密码！</font>";
					return false;
				}
				//校验再次输入的密码
				var passwordRepeat = document.getElementById("shop_owner_passwordRepeat").value;
				//是否为空
				if (passwordRepeat == null || passwordRepeat == '') {
					msg6.innerHTML = "<font color=red size=2>请再次输入密码确认！</font>";
					return false;
				}
				//校验两次输入是否一致
				if (passwordRepeat != password) {
					msg6.innerHTML = "<font color=red size=2>两次输入的密码不一致！</font>";
					return false;
				}
			}
			function disable() {
				document.getElementById("accept").disabled = true
			}
			function enable() {
				document.getElementById("accept").disabled = false
			}
			function disable2() {
				document.getElementById("accept2").disabled = true
			}
			function enable2() {
				document.getElementById("accept2").disabled = false
			}
			//Ajax异步校验用户名
			function checkUsername() {
				//获得文本框的值
				var username = document.getElementById("username").value;
				//1.创建异步交互对象
				var xhr = createXmlHttp();
				//2.设置监听
				xhr.onreadystatechange = function() {
					if(xhr.readyState == 4 && xhr.status == 200) {
						document.getElementById("msg1").innerHTML = xhr.responseText;
					}
				}
				//3.打开连接
				xhr.open("GET", "${pageContext.request.contextPath}/user_findByUsername?time=" + new Date().getTime() + "&username=" + username, true);
				//4.发送
				xhr.send(null);
			}
			function createXmlHttp() {
				var xmlHttp;
				try {//现代主流浏览器
					xmlHttp = new XMLHttpRequest();
				} catch(e) {
					try {//IE
						xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
					} catch(e) {
						try {
							xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
						} catch(e) {
					
						}
					}
				}
				return xmlHttp;
			}
		</script>

	</head>

	<body>

		<div class="login-boxtitle">
			<div class="div-inline blank"></div>
			<div class="div-inline logo"><img src="${pageContext.request.contextPath}/images/logo.png" /></div>
		</div>
		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img class="login-img" src="${pageContext.request.contextPath}/images/login-background.jpeg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">用户注册</a></li>
								<li><a href="">商家注册</a></li>
							</ul>

							<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form action="${pageContext.request.contextPath}/user_save.action" method="post" onsubmit="return checkForm();">
								<div class="user-name">
									<label for="username"><i class="am-icon-male"></i></label> <input type="text" name="username" id="username" placeholder="请输入用户名" onblur="checkUsername()">
								</div>
								<div id="msg1"></div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input type="password" name="password" id="password" placeholder="设置密码">
								</div>
								<div id="msg2"></div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label><input type="password" name="passwordRepeat" id="passwordRepeat" placeholder="确认密码">
								</div>
								<div id="msg3"></div>
								<div class="user-realname">
									<label for="realname"><i class="am-icon-smile-o"></i></label> <input type="text" name="realname" id="realname" placeholder="请输入您的真实姓名">
								</div>
								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input type="email" name="email" id="email" placeholder="请输入邮箱">
								</div>
								<span><s:fielderror fieldName="email"/> </span>
								<div class="user-address">
									<label for="address"><i class="am-icon-home"></i></label> <input type="text" name="address" id="address" placeholder="请输入地址（默认收货地址）">
								</div>
								<span><s:fielderror fieldName="address"/> </span>
								<div class="user-tel">
									<label for="tel"><i class="am-icon-phone"></i></label> <input type="tel" name="tel" id="tel" placeholder="请输入电话">
								</div>
								<div class="login-links">
									 <div class="div-check"><input id="reader-me" type="checkbox" onclick="if(this.checked){enable()} else {disable()}"></div>
									 <div class="div-text">点击表示您同意商城《服务协议》</div>
								</div>
								<div class="am-cf">
									<input type="submit" id="accept" disabled="" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form>
							
						</div>

						<div class="am-tab-panel">
							<form method="post" onsubmit="return checkForm2();">
								<div class="user-name">
									<label for="username"><i class="am-icon-male"></i></label> <input type="text" name="username" id="shop_owner_username" placeholder="请输入用户名">
								</div>
								<div id="msg4"></div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="shop_owner_password" placeholder="设置密码">
								</div>
								<div id="msg5"></div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="passwordRepeat" id="shop_owner_passwordRepeat" placeholder="确认密码">
								</div>
								<div id="msg6"></div>
								<div class="login-links">
									 <div class="div-check"><input id="reader-me" type="checkbox" onclick="if(this.checked){enable2()} else {disable2()}"></div>
									 <div class="div-text">点击表示您同意商城《服务协议》</div>
								</div>
								<div class="am-cf">
									<input type="submit" id="accept2" disabled="" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form>
								
									<hr>
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
