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
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/t-shirt.png"></i><a class="ml-22"><s:property value="cList.get(0).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="男装">男装</span></dt>
																		<dd><a title="T恤" href="#"><span>T恤</span></a></dd>
																		<dd><a title="牛仔裤" href="#"><span>牛仔裤</span></a></dd>
																		<dd><a title="休闲裤" href="#"><span>休闲裤</span></a></dd>
																		<dd><a title="衬衫" href="#"><span>衬衫</span></a></dd>
																		<dd><a title="POLO衫" href="#"><span>POLO衫</span></a></dd>
																		<dd><a title="针织衫" href="#"><span>针织衫</span></a></dd>
																		<dd><a title="卫衣" href="#"><span>卫衣</span></a></dd>
																		<dd><a title="毛呢大衣" href="#"><span>毛呢大衣</span></a></dd>
																		<dd><a title="夹克" href="#"><span>夹克</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="女装">女装</span></dt>
																		<dd><a title="连衣裙" href="#"><span>连衣裙</span></a></dd>
																		<dd><a title="半身裙" href="#"><span>半身裙</span></a></dd>
																		<dd><a title="牛仔裤" href="#"><span>牛仔裤</span></a></dd>
																		<dd><a title="休闲裤" href="#"><span>休闲裤</span></a></dd>
																		<dd><a title="雪纺衫" href="#"><span>雪纺衫</span></a></dd>
																		<dd><a title="毛衣" href="#"><span>毛衣</span></a></dd>
																		<dd><a title="马甲" href="#"><span>马甲</span></a></dd>
																		<dd><a title="吊带/背心" href="#"><span>吊带/背心</span></a></dd>
																		<dd><a title="礼服" href="#"><span>礼服</span></a></dd>
																	</dl>

																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
											<b class="arrow"></b>	
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/hufu.png"></i><a class="ml-22"><s:property value="cList.get(1).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="面膜">面膜</span></dt>
																		<dd><a title="补水" href="#"><span>补水</span></a></dd>
																		<dd><a title="保湿" href="#"><span>保湿</span></a></dd>
																		<dd><a title="美白" href="#"><span>美白</span></a></dd>
																		<dd><a title="抗衰老" href="#"><span>抗衰老</span></a></dd>
																		<dd><a title="平衡油脂" href="#"><span>平衡油脂</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="眼霜">眼霜</span></dt>
																		<dd><a title="眼膜" href="#"><span>眼膜</span></a></dd>
																		<dd><a title="眼胶" href="#"><span>眼胶</span></a></dd>
																		<dd><a title="眼部啫喱" href="#"><span>眼部啫喱</span></a></dd>
																		<dd><a title="眼贴" href="#"><span>眼贴</span></a></dd>
																		<dd><a title="眼霜" href="#"><span>眼霜</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="化妆水">化妆水</span></dt>
																		<dd><a title="平衡滋润" href="#"><span>平衡滋润</span></a></dd>
																		<dd><a title="平衡收敛" href="#"><span>平衡收敛</span></a></dd>
																		<dd><a title="平衡美白" href="#"><span>平衡美白</span></a></dd>
																		<dd><a title="补水保湿" href="#"><span>补水保湿</span></a></dd>
																		<dd><a title="控油" href="#"><span>控油</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="玛狮路男装旗舰店" target="_blank" href="#" rel="nofollow"><span >玛狮路男装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="劳威特品牌男装" target="_blank" href="#" rel="nofollow"><span >劳威特品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/makeup.png"></i><a class="ml-22"><s:property value="cList.get(2).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="面部">面部</span></dt>
																		<dd><a title="粉饼/蜜粉/散粉" href="#"><span>粉饼/蜜粉/散粉</span></a></dd>
																		<dd><a title="隔离/妆前乳" href="#"><span>隔离/妆前乳</span></a></dd>
																		<dd><a title="修容粉/阴影粉" href="#"><span>修容粉/阴影粉</span></a></dd>
																		<dd><a title="腮红" href="#"><span>腮红</span></a></dd>
																		<dd><a title="遮瑕" href="#"><span>遮瑕</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="眉眼">眉眼</span></dt>
																		<dd><a title="眼影" href="#"><span>眼影</span></a></dd>
																		<dd><a title="眼线液笔/眼线胶笔" href="#"><span>眼线液笔/眼线胶笔</span></a></dd>
																		<dd><a title="睫毛膏/睫毛增长液" href="#"><span>睫毛膏/睫毛增长液</span></a></dd>
																		<dd><a title="眉粉/眉笔/染眉膏" href="#"><span>眉粉/眉笔/染眉膏</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="唇部">唇部</span></dt>
																		<dd><a title="唇膏/口红" href="#"><span>唇膏/口红</span></a></dd>
																		<dd><a title="唇彩/唇蜜" href="#"><span>唇彩/唇蜜</span></a></dd>
																		<dd><a title="唇部打底" href="#"><span>唇部打底</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="工具">工具</span></dt>
																		<dd><a title="双眼皮贴" href="#"><span>双眼皮贴</span></a></dd>
																		<dd><a title="化妆海绵/化妆棉/美妆蛋" href="#"><span>化妆海绵/化妆棉/美妆蛋</span></a></dd>
																		<dd><a title="睫毛夹" href="#"><span>睫毛夹</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="猫儿朵朵 " target="_blank" href="#" rel="nofollow"><span >猫儿朵朵 </span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/gehu.png"></i><a class="ml-22"><s:property value="cList.get(3).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="洗发护发">洗发护发</span></dt>
																		<dd><a title="洗发水" href="#"><span>洗发水</span></a></dd>
																		<dd><a title="护发素" href="#"><span>护发素</span></a></dd>
																		<dd><a title="发膜" href="#"><span>发膜</span></a></dd>
																		<dd><a title="精油" href="#"><span>精油</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="口腔护理">口腔护理</span></dt>
																		<dd><a title="牙膏" href="#"><span>牙膏</span></a></dd>
																		<dd><a title="牙刷" href="#"><span>牙刷</span></a></dd>
																		<dd><a title="牙线" href="#"><span>牙线</span></a></dd>
																		<dd><a title="漱口水" href="#"><span>漱口水</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="身体护理">身体护理</span></dt>
																		<dd><a title="沐浴露" href="#"><span>沐浴露</span></a></dd>
																		<dd><a title="身体乳" href="#"><span>身体乳</span></a></dd>
																		<dd><a title="精油" href="#"><span>精油</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/riyong.png"></i><a class="ml-22"><s:property value="cList.get(4).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="生活日用">生活日用</span></dt>
																		<dd><a title="收纳日用" href="#"><span>收纳日用</span></a></dd>
																		<dd><a title="净化除味" href="#"><span>净化除味</span></a></dd>
																		<dd><a title="清洁工具" href="#"><span>清洁工具</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="厨卫用品">厨卫用品</span></dt>
																		<dd><a title="厨房置物架" href="#"><span>厨房置物架</span></a></dd>
																		<dd><a title="卫生纸" href="#"><span>卫生纸</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵呵嘿官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵呵嘿官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
																		<dd><a rel="nofollow" title="华伊阁旗舰店" target="_blank" href="#" rel="nofollow"><span >华伊阁旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="独家折扣旗舰店" target="_blank" href="#" rel="nofollow"><span >独家折扣旗舰店</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/shumachanpin.png"></i><a class="ml-22"><s:property value="cList.get(5).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="摄影摄像">摄影摄像</span></dt>
																		<dd><a title="数码相机" href="#"><span>数码相机</span></a></dd>
																		<dd><a title="单反相机" href="#"><span>单反相机</span></a></dd>
																		<dd><a title="拍立得" href="#"><span>拍立得</span></a></dd>
																		<dd><a title="摄像机" href="#"><span>摄像机</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="数码配件">数码配件</span></dt>
																		<dd><a title="存储卡" href="#"><span>存储卡</span></a></dd>
																		<dd><a title="三脚架" href="#"><span>三脚架</span></a></dd>
																		<dd><a title="闪光灯" href="#"><span>闪光灯</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="影音娱乐">影音娱乐</span></dt>
																		<dd><a title="耳机/耳麦" href="#"><span>耳机/耳麦</span></a></dd>
																		<dd><a title="音箱/音响" href="#"><span>音箱/音响</span></a></dd>
																		<dd><a title="收音机" href="#"><span>收音机</span></a></dd>
																		<dd><a title="麦克风" href="#"><span>麦克风</span></a></dd>
																		<dd><a title="MP3/MP4" href="#"><span>MP3/MP4</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="电子教育">电子教育</span></dt>
																		<dd><a title="学生平板" href="#"><span>学生平板</span></a></dd>
																		<dd><a title="点读机" href="#"><span>点读机</span></a></dd>
																		<dd><a title="电子词典" href="#"><span>电子词典</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
																		<dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
																		<dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
																		<dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
																		<dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/dianqi.png"></i><a class="ml-22"><s:property value="cList.get(6).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="电视">电视</span></dt>
																		<dd><a title="超薄电视" href="#"><span>超薄电视</span></a></dd>
																		<dd><a title="全面屏电视" href="#"><span>全面屏电视</span></a></dd>
																		<dd><a title="智能电视" href="#"><span>智能电视</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="空调">空调</span></dt>
																		<dd><a title="空调挂机" href="#"><span>空调挂机</span></a></dd>
																		<dd><a title="空调柜机" href="#"><span>空调柜机</span></a></dd>
																		<dd><a title="中央空调" href="#"><span>中央空调</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="洗衣机">洗衣机</span></dt>
																		<dd><a title="滚筒洗衣机" href="#"><span>滚筒洗衣机</span></a></dd>
																		<dd><a title="波轮洗衣机" href="#"><span>波轮洗衣机</span></a></dd>
																		<dd><a title="洗烘一体机" href="#"><span>洗烘一体机</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="冰箱">冰箱</span></dt>
																		<dd><a title="多门" href="#"><span>多门</span></a></dd>
																		<dd><a title="对开门" href="#"><span>对开门</span></a></dd>
																		<dd><a title="三门" href="#"><span>三门</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
																		<dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
																		<dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
																		<dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
																		<dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
																		<dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
																		<dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/bag.png"></i><a class="ml-22"><s:property value="cList.get(7).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="男包">男包</span></dt>
																		<dd><a title="男士钱包" href="#"><span>男士钱包</span></a></dd>
																		<dd><a title="双肩包" href="#"><span>双肩包</span></a></dd>
																		<dd><a title="斜挎包" href="#"><span>斜挎包</span></a></dd>
																		<dd><a title="商务公文包" href="#"><span>商务公文包</span></a></dd>
																		<dd><a title="卡包名片夹" href="#"><span>卡包名片夹</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="女包">女包</span></dt>
																		<dd><a title="单肩包" href="#"><span>单肩包</span></a></dd>
																		<dd><a title="手提包" href="#"><span>手提包</span></a></dd>
																		<dd><a title="斜挎包" href="#"><span>斜挎包</span></a></dd>
																		<dd><a title="钱包" href="#"><span>钱包</span></a></dd>
																		<dd><a title="卡包" href="#"><span>卡包</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="功能箱包">功能箱包</span></dt>
																		<dd><a title="拉杆箱" href="#"><span>拉杆箱</span></a></dd>
																		<dd><a title="旅行包" href="#"><span>旅行包</span></a></dd>
																		<dd><a title="电脑包" href="#"><span>电脑包</span></a></dd>
																		<dd><a title="登山包" href="#"><span>登山包</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="炫点服饰" target="_blank" href="#" rel="nofollow"><span >炫点服饰</span></a></dd>
																		<dd><a rel="nofollow" title="雪茵美内衣厂批发" target="_blank" href="#" rel="nofollow"><span >雪茵美内衣厂批发</span></a></dd>
																		<dd><a rel="nofollow" title="金钻夫人" target="_blank" href="#" rel="nofollow"><span >金钻夫人</span></a></dd>
																		<dd><a rel="nofollow" title="伊美莎内衣" target="_blank" href="#" rel="nofollow"><span  class="red" >伊美莎内衣</span></a></dd>
																		<dd><a rel="nofollow" title="粉客内衣旗舰店" target="_blank" href="#" rel="nofollow"><span >粉客内衣旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="泽芳行旗舰店" target="_blank" href="#" rel="nofollow"><span >泽芳行旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="彩婷" target="_blank" href="#" rel="nofollow"><span  class="red" >彩婷</span></a></dd>
																		<dd><a rel="nofollow" title="黛兰希" target="_blank" href="#" rel="nofollow"><span >黛兰希</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/lingshi.png"></i><a class="ml-22"><s:property value="cList.get(8).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="休闲食品">休闲食品</span></dt>
																		<dd><a title="膨化食品" href="#"><span>膨化食品</span></a></dd>
																		<dd><a title="坚果炒货" href="#"><span>坚果炒货</span></a></dd>
																		<dd><a title="肉干/熟食" href="#"><span>肉干/熟食</span></a></dd>
																		<dd><a title="蜜饯/果干" href="#"><span>蜜饯/果干</span></a></dd>
																		<dd><a title="糖果/巧克力" href="#"><span>糖果/巧克力</span></a></dd>
																		<dd><a title="饼干" href="#"><span>饼干</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="进口食品">进口食品</span></dt>
																		<dd><a title="牛奶" href="#"><span>牛奶</span></a></dd>
																		<dd><a title="水" href="#"><span>水</span></a></dd>
																		<dd><a title="咖啡粉" href="#"><span>咖啡粉</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a title="今生只围你" target="_blank" href="#" rel="nofollow"><span >今生只围你</span></a></dd>
																		<dd><a title="忆佳人" target="_blank" href="#" rel="nofollow"><span  class="red" >忆佳人</span></a></dd>
																		<dd><a title="斐洱普斯" target="_blank" href="#" rel="nofollow"><span  class="red" >斐洱普斯</span></a></dd>
																		<dd><a title="聚百坊" target="_blank" href="#" rel="nofollow"><span  class="red" >聚百坊</span></a></dd>
																		<dd><a title="朵朵棉织直营店" target="_blank" href="#" rel="nofollow"><span >朵朵棉织直营店</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative last">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/images/brand.png"></i><a class="ml-22"><s:property value="cList.get(9).firstCategoryName"/></a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="运动">运动</span></dt>
																		<dd><a title="阿迪达斯（adidas）" href="#"><span>阿迪达斯（adidas）</span></a></dd>
																		<dd><a title="耐克（NIKE）" href="#"><span>耐克（NIKE）</span></a></dd>
																		<dd><a title="李宁（LI-NING）" href="#"><span>李宁（LI-NING）</span></a></dd>
																		<dd><a title="安踏（ANTA）" href="#"><span>安踏（ANTA）</span></a></dd>
																		<dd><a title="乔丹" href="#"><span>乔丹</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="美容美妆">美容美妆</span></dt>
																		<dd><a title="雅诗兰黛" href="#"><span>雅诗兰黛</span></a></dd>
																		<dd><a title="兰蔻" href="#"><span>兰蔻</span></a></dd>
																		<dd><a title="伊丽莎白·雅顿" href="#"><span>伊丽莎白·雅顿</span></a></dd>
																		<dd><a title="克里斯汀·迪奥" href="#"><span>克里斯汀·迪奥</span></a></dd>
																		<dd><a title="倩碧" href="#"><span>倩碧</span></a></dd>
																		<dd><a title="娇兰" href="#"><span>娇兰</span></a></dd>
																		<dd><a title="娇韵诗" href="#"><span>娇韵诗</span></a></dd>
																		<dd><a title="资生堂" href="#"><span>资生堂</span></a></dd>
																	</dl>
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a title="琳琅鞋业" target="_blank" href="#" rel="nofollow"><span >琳琅鞋业</span></a></dd>
																		<dd><a title="宏利鞋业" target="_blank" href="#" rel="nofollow"><span >宏利鞋业</span></a></dd>
																		<dd><a title="比爱靓点鞋业" target="_blank" href="#" rel="nofollow"><span >比爱靓点鞋业</span></a></dd>
																		<dd><a title="浪人怪怪" target="_blank" href="#" rel="nofollow"><span >浪人怪怪</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>

											</li>
										</ul>
									</div>
								</div>

							</div>
						</div>
						
						
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
						<div class="clock am-u-sm-3" ">
							<p>今日热门商品</p>
						</div>
						<s:iterator var="p" value="hList">
							<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h2><s:property value="#p.goodName"/></h2>
								<br/>
								<h3>现价：¥<s:property value="#p.nowPrice"/></h3>
								<h5>原价：¥<s><s:property value="#p.oldPrice"/></s></h5>
							</div>
							<div class="recommendationMain one">
								<a href="#"><img src="${pageContext.request.contextPath}/<s:property value="#p.goodPic"/> "></img></a>
							</div>
						</div>						
						</s:iterator>
					</div>
					<div class="clear "></div>
					<!--热门活动 -->

					<div class="am-container activity ">
						<div class="shopTitle ">
							<h4>活动</h4>
							<h3>每期活动 优惠享不停 </h3>
							<span class="more ">
                              <a href="# ">全部活动<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					  <div class="am-g am-g-fixed ">
						<div class="am-u-sm-3 ">
							<div class="icon-sale one "></div>	
								<h4>秒杀</h4>							
							<div class="activityMain ">
								<img src="${pageContext.request.contextPath}/images/activity1.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>														
						</div>
						
						<div class="am-u-sm-3 ">
						  <div class="icon-sale two "></div>	
							<h4>特惠</h4>
							<div class="activityMain ">
								<img src="${pageContext.request.contextPath}/images/activity2.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>								
							</div>							
						</div>						
						
						<div class="am-u-sm-3 ">
							<div class="icon-sale three "></div>
							<h4>团购</h4>
							<div class="activityMain ">
								<img src="${pageContext.request.contextPath}/images/activity3.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>							
						</div>						

						<div class="am-u-sm-3 last ">
							<div class="icon-sale "></div>
							<h4>超值</h4>
							<div class="activityMain ">
								<img src="${pageContext.request.contextPath}/images/activity.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>													
						</div>

					  </div>
                   </div>
					<div class="clear "></div>


                    <div id="f1">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="${pageContext.request.contextPath}/images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
  
                    <div id="f2">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>

        
                    <div id="f3">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="${pageContext.request.contextPath}/images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>
  

                    <div id="f4">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>


                     <div id="f5">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="${pageContext.request.contextPath}/images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>
  

                  <div id="f6">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
				   </div>
   
   
   
                     <div id="f7">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="${pageContext.request.contextPath}/images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
                    <div id="f8">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>
  
                    <div id="f9">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="${pageContext.request.contextPath}/images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="${pageContext.request.contextPath}/images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
  
                    <div id="f10">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="${pageContext.request.contextPath}/images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
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