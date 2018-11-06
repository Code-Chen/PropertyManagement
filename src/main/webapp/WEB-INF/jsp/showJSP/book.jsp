<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>物业公告</title>
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
            <p class="f16 c_red">咨询电话：13023288071</p>
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
        <div class="title mt10">联系我们 </div>
        <div class="contact_nr">
            <p>负责人：${block.manager}</p>
            <p>传真：${block.tel}</p>
            <p>地址：${block.address}</p>
        </div>
        
    </div>

	<!--右侧-->
    <div class="main_right fright">
    	<div class="title clearfix"><font class="yh f16">物业公告</font><span class="fright f12">网站首页 > <a href="#"> 物业公告 </a></span></div>
    	
        <div class="newsnr">
      <h1 class="bt">${publish.name}</h1>
      <div class="date"><span><fmt:formatDate value="${publish.pubDate}" type = "date" pattern="yyyy-MM-dd" /></span><span>来源：<a href="" target="_blank">物业管理网</a></span><span>浏览数: 18</span></div>
      <div class="nr">
        <p style="text-indent: 2em">${publish.content}</p>
        
      </div>
      
      <div class="share clearfix">

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