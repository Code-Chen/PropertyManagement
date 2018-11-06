<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>天创物业首页</title>
<meta name="description" content="[!--pagedes--]" />
<meta name="keywords" content="[!--pagekey--]" />
<link href="css/master.css" type="text/css" rel="stylesheet" />
<link href="css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>

</head>


<body>
<div class="head clearfix yh">

	<!--logo-->
    <div class="logo block clearfix">
    	<a href="/" class="fleft"><img src="images/logo.png"></a>
        <div class="fright">
        	<p class="tright"><a onclick="SetHome(window.location)" href="javascript:void(0)">设为首页</a> | <a onclick="AddFavorite(window.location,document.title)" href="javascript:void(0)">加入收藏</a></p>
            <br>
            <p class="f16 c_red"> </p>
        </div>
    </div>
    
    <!--nav-->
	<div class="nav clearfix">
    	<ul class="block">
        	<li><a href="<%=request.getContextPath() %>/index" class="L"> 网站首页</a></li>
            <li><a href="<%=request.getContextPath() %>/list?pageIndex=1" class="L">物业公告</a></li>
            <li><a href="<%=request.getContextPath() %>/assist" class="L">小区设施</a></li>
            <li><a href="<%=request.getContextPath() %>/manager" class="L">物管人员</a></li>
            <li><a href="<%=request.getContextPath() %>/introduce" class="L">小区介绍</a></li>
            <li><a href="<%=request.getContextPath() %>/about" class="L">关于我们</a></li>
        </ul>
    </div>
    
    <div class="focusBox">
			<ul class="pic">
					<li><a href="#" target="_blank"><img src="images/banner.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="images/banner.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="images/banner.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="images/banner.jpg"/></a></li>
			</ul>
			<ul class="hd">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
	</div>


</div>

<div class="main clearfix ofHidden block yh">

	<!--左侧-->
	<div class="sidebar fleft">
    	<div class="title">用户登录 </div>
        <form method="post"  action="<%=request.getContextPath() %>/ownerLogin">
        <ul class="menu">
        	<li>用户名：<input type="text" class="input w50"  height="60px" name="loginName" value="" /> </li>
            <li>密&nbsp;&nbsp;&nbsp;码：<input type="password" class="input w50"  height="60px" name="password" value="" /></li> 
          <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" value = "登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "reset" value = "重置"></li>   
          </ul>
        </form>
        <div class="title mt10">联系我们 </div>
        <div class="contact_nr">
            <p>负责人：${block.manager}</p>
            <p>传真：${block.tel}</p>
            <p>地址：${block.address}</p>
        </div>
        
    </div>

	<!--右侧-->
    <div class="main_right fright">
    
    	<div class="clearfix">
        
    	<!--公司简介-->
    	<div class="company fleft">
        	<div class="t1"><a href=""><img src="images/more.jpg"></a><span>小区简介</span></div>
            <div class="nr f13">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宏泰·中央华府位于荆州市沙市区江津路与红门路交汇处的东北角（大润发超市东侧），项目占地13.25公顷，紧邻荆州市商业繁华区，交通便利，周边学校、医院等公共服务设施齐备，且分布均匀，地理位置优越。宏泰·中央华府定位高端，项目规划、设计、施工、后期的服务与管理等各个方面不断完善和学习先进的理念，项目一经推出即受到广大消费者的厚爱与追捧。...<a href="" class="c_red">[详细]</a></p> 
            </div>
        </div>
        </div>
        
        <!--产品展示-->
        <div class="cp_show clearfix">
        
        
        
        
          <!--新闻中心-->
        <div class="news fleft">
        	<div class="t1"><a href=""><img src="images/more.jpg"></a><span>物业公告</span></div>
            <ul> 
            <c:forEach items="${requestScope.indexShowPublishList}" var="publish">
            	  <li><a href="<%=request.getContextPath() %>/book?id=${publish.publishId}" ><fmt:formatDate value="${publish.pubDate}" type = "date" pattern="yyyy-MM-dd" />&nbsp;&nbsp;&nbsp; ${publish.name}</a></li>
                </c:forEach>
            </ul>
        </div>
        
        <div class="info fright">
        	<div class="t1"><a href=""><img src="images/more.jpg"></a><span>小区信息</span></div>
            <ul>
            	<li>小区名称：${block.blockName}</li>
                <li>道路面积：${block.roadArea}</li>
                <li>绿化面积：${block.greenArea}</li>
                <li>建筑面积：${block.structArea}</li>
                <li>楼宇数量：${block.number}</li>
            </ul>
        </div>
        
        </div>
        
    </div>



</div>


<div class="foot tcenter yh f13">
	<p>联系人：${block.manager} ${block.tel}</p>
	<p>Copyright © 2014-2015 www.haiis.com,All Rights Reserved </p>
    
</div>


<script src="js/all.js" type="text/javascript"></script>
</body>
</html>