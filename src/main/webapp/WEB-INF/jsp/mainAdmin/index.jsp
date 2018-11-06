<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />物业管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="<%=request.getContextPath() %>/adminIndex" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="<%=request.getContextPath() %>/adminExit"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>小区管理</h2>
  <ul style="display:block">
    <li><a href="<%=request.getContextPath() %>/admin_info" target="right"><span class="icon-caret-right"></span>小区基本信息</a></li>
    <li><a href="<%=request.getContextPath() %>/assist_add" target="right"><span class="icon-caret-right"></span>添加周边设施</a></li>
    <li><a href="<%=request.getContextPath() %>/assist_edit" target="right"><span class="icon-caret-right"></span>编辑周边设施</a></li>  
    <li><a href="<%=request.getContextPath() %>/notice_add" target="right"><span class="icon-caret-right"></span>添加公告</a></li>   
    <li><a href="<%=request.getContextPath() %>/notice_edit" target="right"><span class="icon-caret-right"></span>编辑公告</a></li>     
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>楼盘管理</h2>
  <ul>
    <li><a href="buildings_add.html" target="right"><span class="icon-caret-right"></span>楼盘信息添加</a></li>
    <li><a href="buildings_edit.html" target="right"><span class="icon-caret-right"></span>编辑楼盘信息</a></li>
    <li><a href="estate_add.html" target="right"><span class="icon-caret-right"></span>房产信息添加</a></li>      
    <li><a href="estate_edit.html" target="right"><span class="icon-caret-right"></span>房产信息查询</a></li>    
  </ul> 
  
   <h2><span class="icon-pencil-square-o"></span>物业管理</h2>
  <ul>
    <li><a href="Complaints_edit.html" target="right"><span class="icon-caret-right"></span>编辑住户投诉</a></li>
    <li><a href="service_edit.html" target="right"><span class="icon-caret-right"></span>编辑住户维修</a></li>   
  </ul> 
    
   <h2><span class="icon-pencil-square-o"></span>收费管理</h2>
  <ul>
    <li><a href="property_add.html" target="right"><span class="icon-caret-right"></span>添加收费类型</a></li>
    <li><a href="property_list.html" target="right"><span class="icon-caret-right"></span>编辑收费类型</a></li>   
  <li><a href="fee_add.html" target="right"><span class="icon-caret-right"></span>住户费用添加</a></li>
    <li><a href="fee_list.html" target="right"><span class="icon-caret-right"></span>编辑住户费用</a></li> 
   </ul>
   
   <h2><span class="icon-pencil-square-o"></span>住户管理</h2>
  <ul>
    <li><a href="owner_add.html" target="right"><span class="icon-caret-right"></span>添加住户信息</a></li>
    <li><a href="owner_list.html" target="right"><span class="icon-caret-right"></span>编辑住户信息</a></li>   
  <li><a href="manager_add.html" target="right"><span class="icon-caret-right"></span>添加物业管理人员</a></li>
    <li><a href="manager_list.html" target="right"><span class="icon-caret-right"></span>编辑物业管理人员</a></li> 
   </ul>
   
   <h2><span class="icon-pencil-square-o"></span>系统管理</h2>
  <ul>
    <li><a href="code.html" target="right"><span class="icon-caret-right"></span> 系统代码维护 </a></li>
    <li><a href="admin_list.html" target="right"><span class="icon-caret-right"></span> 编辑管理员 </a></li> 
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span> 修改密码 </a></li>   
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