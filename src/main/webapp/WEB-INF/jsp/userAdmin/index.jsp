<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>业主后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />业主使用中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="<%=request.getContextPath() %>/index" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="<%=request.getContextPath() %>/exit"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本信息</h2>
  <ul style="display:block">
    <li><a href="<%=request.getContextPath() %>/info" target="right"><span class="icon-caret-right"></span>我的个人信息</a></li>
    <li><a href="<%=request.getContextPath() %>/username" target="right"><span class="icon-caret-right"></span>修改登录账号</a></li>
    <li><a href="<%=request.getContextPath() %>/pass" target="right"><span class="icon-caret-right"></span>修改密码</a></li>   
  </ul>   
  
  <h2><span class="icon-pencil-square-o"></span>物业收费</h2>
  <ul>
    <li><a href="property_list.html" target="right"><span class="icon-caret-right"></span>物业费用类型</a></li>
    <li><a href="fee_list.html" target="right"><span class="icon-caret-right"></span>我的物业费用</a></li>      
  </ul> 
  
   <h2><span class="icon-pencil-square-o"></span>报修服务</h2>
  <ul>
    <li><a href="request_add.html" target="right"><span class="icon-caret-right"></span>我要报修 </a></li>
    <li><a href="request_list.html" target="right"><span class="icon-caret-right"></span>我的报修记录</a></li>
    <li><a href="request_list_not.html" target="right"><span class="icon-caret-right"></span>未审核报修</a></li>    
    <li><a href="request_list_ok.html" target="right"><span class="icon-caret-right"></span>已审核报修</a></li>       
  </ul> 
  
     <h2><span class="icon-pencil-square-o"></span>投诉服务</h2>
  <ul>
    <li><a href="Complaints_add.html" target="right"><span class="icon-caret-right"></span>我要投诉</a></li>
    <li><a href="Complaints_list.html" target="right"><span class="icon-caret-right"></span>我的投诉记录</a></li>
    <li><a href="Complaints_list_not.html" target="right"><span class="icon-caret-right"></span>未处理投诉</a></li>    
    <li><a href="Complaints_list_ok.html" target="right"><span class="icon-caret-right"></span>已处理投诉</a></li>       
  </ul> 
  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>