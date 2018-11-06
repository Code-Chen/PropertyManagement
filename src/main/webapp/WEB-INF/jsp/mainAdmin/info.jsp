<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
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
<form method="post" action="">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 小区基本信息</strong></div>

    <table class="table table-hover text-center">     
        <tr>
          <td>小区基本信息：</td>
          <td>${block.blockName}</td>
          <td>联系电话：</td>
          <td>${block.tel}</td>  
        </tr>
        
        <tr>
          <td>主要负责人：</td>
          <td>${block.manager}</td>
          <td>停车面积：</td>
          <td>${block.parkArea}</td>  
        </tr>
        
          <tr>
           <td>建造日期：</td>
          <td><fmt:formatDate value="${block.buildTime}" type = "date" pattern="yyyy-MM-dd" /></td>
          <td>道路面积：</td>
          <td>${block.roadArea}</td> 
        </tr>
        
          <tr>
          <td>建筑面积：</td>
          <td>${block.structArea}</td>
          <td>绿化面积：</td>
          <td>${block.greenArea}</td> 
        </tr>
        
          <tr>
          <td>楼宇数量：</td>
          <td>${block.number}</td>
          <td>小区地址：</td>
          <td>${block.address}</td> 
        </tr>
      <tr>
        <td>
        小区说明：
        </td>
        <td colspan="8" >
        ${block.detail}
        </td>
      </tr>
       <tr>
        <td colspan="8" >
       <div class="button-group"> <a type="button" class="button border-main" href="info_update.html"><span class="icon-edit"></span>修改</a>
       </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}

$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false; 		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body></html>