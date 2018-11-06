<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改业主用户登录名</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=request.getContextPath()%>/updateLoginName">
      <div class="form-group">
      <input type="hidden" name="ownerId"
				value="${sessionScope.owner.ownerId}">
        <div class="label">
          <label for="sitename">原用户名：</label>
        </div>
        <div class="field">
          <label style="line-height:33px;">
         ${sessionScope.owner.loginName}
          </label>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">新用户名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="mpass" name="newLonginName" size="50" placeholder="请输入新用户名" data-validate="required:请输入新用户吗" />    
           <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 检测用户名</a>             
        </div>
      </div>      
      
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <input class="button bg-main icon-check-square-o" type="submit" value = "提交  "> 
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>