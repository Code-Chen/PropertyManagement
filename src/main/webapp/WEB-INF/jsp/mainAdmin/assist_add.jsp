<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 添加小区周边设施</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
    <div class="form-group">
      <div class="field">
        <div class="body-content">
          <div class="form-group">
            <div class="field">
              <div class="body-content">
                <div class="form-group">
                  <div class="label">
                    <label>公共区设施名称：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50" name="facilityName" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="label">
                    <label>主要负责人：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50"  height="60px" name="facilityManager" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="label">
                    <label>设施类型：</label>
                  </div>
                  <div class="field">
                   <select  class="select w50" name="title" value="${codeManage.name} " >
                  <c:forEach items="${requestScope.codeList}" var="codeManage">
                    <option>${codeManage.name} </option>
                    <input type = "hidden" value = "${codeManage.id}">
                    </c:forEach> </select>
                     <input type="button" class="button bg-blue margin-left" id="image1" value="添加类型"  style="float:left;">
          <div class="tipss">如果选项没有，点击添加按钮</div>
                    
                   </div>
                </div>
                <div class="form-group">
                  <div class="label">
                    <label>联系人：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50" name="facilityContact" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
               
                 
                 <div class="form-group">
                  <div class="label">
                    <label>联系电话：</label>
                  </div>
                  <div class="field">
                    <input type="text" class="input w50" name="ContactTel" value="" />
                    <div class="tips"></div>
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="label">
                    <label>详细说明：</label>
                  </div>
                  <div class="field">
                    <textarea name="facilityDetail" class="input" style="height:120px;"></textarea>
                    <div class="tips"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="label">
                    <label></label>
                  </div>
                  <div class="field">
                    <input class="button bg-main icon-check-square-o" type="submit" value = "提交"> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
  </div>
</div>
</body></html>