<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/skin.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>
		<div class="hmtop">
			<%@ include file="menu.jsp" %>
		</div>
		<div class="banner">
            <!--轮播 -->
			<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
				<ul class="am-slides">
					<li class="banner2"><a href="introduction.html"><img src="${pageContext.request.contextPath}/images/ad2.jpg" /></a></li>
					<li class="banner3"><a><img src="${pageContext.request.contextPath}/images/ad3.jpg" /></a></li>
					<li class="banner1"><a><img src="${pageContext.request.contextPath}/images/ad1.jpg" /></a></li>
					<li class="banner4"><a><img src="${pageContext.request.contextPath}/images/ad4.jpg" /></a></li>

				</ul>
			</div>
			<div class="clear"></div>	
		</div>
			<div class="shopNav">
				<div class="slideall">
					<%@ include file="nav.jsp" %>					
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<s:iterator var="f" value="cList">
												<li class="appliance js_toggle relative">
													<div class="category-info">
														<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/flower.png"></i><a href="${pageContext.request.contextPath}/product_findByFirstCategoryId.action?firstCategoryId=<s:property value="#f.firstCategoryId"/>" class="ml-22"><s:property value="#f.firstCategoryName"/></a></h3>
														<em>&gt;</em></div>
														<div class="menu-item menu-in top">
														<div class="area-in">
																<div class="area-bg menu-srot">
																	<div class="sort-side ">
																		<s:iterator var="sec" value="#f.secondCategories">
																			<dl class="dl-sort">
																				<dt><a href="#"><span><s:property value="#sec.secondCategoryName"/></span></a></dt>
																				<s:iterator var="t" value="#sec.thirdCategories">
																					<dd><a href="#"><span><s:property value="#t.thirdCategoryName"/></span></a></dd>
																				</s:iterator>
																			</dl>
																		</s:iterator>
																	</div>
																	
																	<div class="brand-side">
																		<dl class="dl-sort">
																			<dt><span>实力商家</span></dt>
																			<s:subset source="#f.shops" start="0" count="6">
																				<s:iterator var="shop">
																					<dd><a rel="nofollow" target="_blank" href="#" rel="nofollow"><span  class="red" ><s:property value="#shop.shopName"/></span></a></dd>
																				</s:iterator>
																			</s:subset>
																		</dl>
																	</div>
																</div>
															</div>
													</div>	
												</li>
											</s:iterator>
										</ul>
								</div>

							</div>
						</div>
						<br/>
						
						<!--轮播-->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>



					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="${pageContext.request.contextPath}/images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
		<div class="shopMain" id="shopmain">

			<!--今日推荐 -->

			<div class="am-g am-g-fixed recommendation">
				<div class="clock am-u-sm-3"">
					<p>今日热门商品</p>
				</div>
				<s:iterator var="p" value="hList">
					<div class="am-u-sm-4 am-u-lg-3 ">
						<div class="info">
							<h2>
								<s:property value="#p.goodName" />
							</h2>
							<br />
							<h3>
								现价：¥<s:property value="#p.nowPrice" />
							</h3>
							<h5>
								原价：¥<s><s:property value="#p.oldPrice" /></s>
							</h5>
						</div>
						<div class="recommendationMain one">
							<a href="${pageContext.request.contextPath }/product_findByPid.action?goodId=<s:property value="#p.goodId"/>"><img src="${pageContext.request.contextPath}/<s:property value="#p.goodPic"/> "></img></a>
						</div>
					</div>
				</s:iterator>
			</div>
			<div class="clear "></div>
			<!--热门活动 -->

			<div class="am-container activity ">
				<div class="shopTitle ">
					<h4>活动</h4>
					<h3>每期活动 优惠享不停</h3>
					<span class="more "> <a href="# ">全部活动<i
							class="am-icon-angle-right" style="padding-left:10px ;"></i></a>
					</span>
				</div>
				<div class="am-g am-g-fixed ">
					<div class="am-u-sm-3 ">
						<div class="icon-sale one "></div>
						<h4>秒杀</h4>
						<div class="activityMain ">
							<img
								src="${pageContext.request.contextPath}/images/activity1.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 ">
						<div class="icon-sale two "></div>
						<h4>特惠</h4>
						<div class="activityMain ">
							<img
								src="${pageContext.request.contextPath}/images/activity2.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 ">
						<div class="icon-sale three "></div>
						<h4>团购</h4>
						<div class="activityMain ">
							<img
								src="${pageContext.request.contextPath}/images/activity3.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 last ">
						<div class="icon-sale "></div>
						<h4>超值</h4>
						<div class="activityMain ">
							<img
								src="${pageContext.request.contextPath}/images/activity.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

				</div>
			</div>
			<div class="clear "></div>


			<div id="f1">
				<!-- 第一个分类 -->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<s:property value="cList.get(0).firstCategoryName" />
						</h4>
						<span class="more "> <a href="# ">更多<i
								class="am-icon-angle-right" style="padding-left:10px ;"></i></a>
						</span>
					</div>
				</div>

				<div class="am-g am-g-fixed flood">
					<s:iterator var="n1" value="nList1">
						<div class="am-u-sm-6 am-u-md-3 text-five category-new-product">
							<a href="${pageContext.request.contextPath }/product_findByPid.action?goodId=<s:property value="#n1.goodId"/>">
								<div class="product-img img">
									<img class="product-img"
										src="${pageContext.request.contextPath}/<s:property value="#n1.goodPic"/>" />
								</div>
								<div class="outer-con">
									<div class="title ">
										<s:property value="#n1.goodName" />
									</div>
									<div class="sub-title ">
										<s:property value="#n1.nowPrice" />
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
					</s:iterator>
				</div>
				<div class="clear "></div>
			</div>
			
			<div id="f2">
				<!-- 第二个分类 -->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<s:property value="cList.get(1).firstCategoryName" />
						</h4>
						<span class="more "> <a href="# ">更多<i
								class="am-icon-angle-right" style="padding-left:10px ;"></i></a>
						</span>
					</div>
				</div>

				<div class="am-g am-g-fixed flood">
					<s:iterator var="n2" value="nList2">
						<div class="am-u-sm-6 am-u-md-3 text-five category-new-product">
							<a href="${pageContext.request.contextPath }/product_findByPid.action?goodId=<s:property value="#n2.goodId"/>"">
								<div class="product-img img">
									<img class="product-img"
										src="${pageContext.request.contextPath}/<s:property value="#n2.goodPic"/>" />
								</div>
								<div class="outer-con">
									<div class="title ">
										<s:property value="#n2.goodName" />
									</div>
									<div class="sub-title ">
										<s:property value="#n2.nowPrice" />
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
					</s:iterator>
				</div>
				<div class="clear "></div>
			</div>
			
			<div id="f3">
				<!-- 第三个分类 -->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<s:property value="cList.get(2).firstCategoryName" />
						</h4>
						<span class="more "> <a href="# ">更多<i
								class="am-icon-angle-right" style="padding-left:10px ;"></i></a>
						</span>
					</div>
				</div>

				<div class="am-g am-g-fixed flood">
					<s:iterator var="n3" value="nList3">
						<div class="am-u-sm-6 am-u-md-3 text-five category-new-product">
							<a href="${pageContext.request.contextPath }/product_findByPid.action?goodId=<s:property value="#n3.goodId"/>"">
								<div class="product-img img">
									<img class="product-img"
										src="${pageContext.request.contextPath}/<s:property value="#n3.goodPic"/>" />
								</div>
								<div class="outer-con">
									<div class="title ">
										<s:property value="#n3.goodName" />
									</div>
									<div class="sub-title ">
										<s:property value="#n3.nowPrice" />
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
					</s:iterator>
				</div>
				<div class="clear "></div>
			</div>
			
			<div id="f4">
				<!-- 第四个分类 -->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<s:property value="cList.get(3).firstCategoryName" />
						</h4>
						<span class="more "> <a href="# ">更多<i
								class="am-icon-angle-right" style="padding-left:10px ;"></i></a>
						</span>
					</div>
				</div>

				<div class="am-g am-g-fixed flood">
					<s:iterator var="n4" value="nList4">
						<div class="am-u-sm-6 am-u-md-3 text-five category-new-product">
							<a
								href="${pageContext.request.contextPath }/product_findByPid.action?goodId=<s:property value="#n4.goodId"/>"">
								<div class="product-img img">
									<img class="product-img"
										src="${pageContext.request.contextPath}/<s:property value="#n4.goodPic"/>" />
								</div>
								<div class="outer-con">
									<div class="title ">
										<s:property value="#n4.goodName" />
									</div>
									<div class="sub-title ">
										<s:property value="#n4.nowPrice" />
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
					</s:iterator>
				</div>
				<div class="clear "></div>
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
			</div>
		<!--引导 -->
		<div class="navCir">
			<li class="active"><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="${pageContext.request.contextPath}/person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>


		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="# ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="${pageContext.request.contextPath}/images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名sl1903</li>
									<li>级&nbsp;别普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="# ">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					<div id="asset " class="item ">
						<a href="# ">
							<span class="view "></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="foot " class="item ">
						<a href="# ">
							<span class="zuji "></span>
						</a>
						<div class="mp_tooltip ">
							我的足迹
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="${pageContext.request.contextPath}/images/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href="# ">
							<span class="chongzhi "><img src="${pageContext.request.contextPath}/images/chongzhi.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我要充值
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="# "><span class="kfzx "></span></a>
							<div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
						</li>
						<!--二维码 -->
						<li class="qtitem ">
							<a href="#none "><span class="mpbtn_qrcode "></span></a>
							<div class="mp_qrcode " style="display:none; "><img src="${pageContext.request.contextPath}/images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
						</li>
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list ">
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">优惠券</div>
					</a>
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">红包</div>
					</a>
					<a href="# " target="_blank " class="pl money ">
						<div class="num ">￥0</div>
						<div class="text ">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="${pageContext.request.contextPath}/basic/js/quick_links.js "></script>
	</body>

</html>