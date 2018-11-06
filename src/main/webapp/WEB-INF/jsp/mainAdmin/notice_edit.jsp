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
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 小区物业公告查询</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">

        <li><input type="checkbox" name="id[]" value="" /> 
        公告编号： 
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:110px; line-height:17px;display:inline-block" />
        </li>
        
        <li><input type="checkbox" name="id[]" value="" /> 
        公告日期：从 
          <input type="text" placeholder="请输入开始日期" name="keywords" class="input" style="width:110px; line-height:17px;display:inline-block" />
          到
          <input type="text" placeholder="请输入结束日期" name="keywords" class="input" style="width:110px; line-height:17px;display:inline-block" />
          
        </li>
        
        <li>
        <input type="checkbox" name="id[]" value="" /> 
        公告标题
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:110px; line-height:17px;display:inline-block" />
          
        </li>
        
        <li><input type="checkbox" name="id[]" value="" /> 发布人： <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:80px; line-height:17px;display:inline-block" />
        </li>
        
        
        <li><input type="checkbox" name="id[]" value="" /> 精确查询
         <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 查询</a>
         <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 显示全部</a>
        </li>
        
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="20%">公告编号</th>
        <th width="35%">公告标题</th>
        <th>公告日期</th>
        <th>发布人</th>
        <th>详细|编辑</th>
        <th width="10%" style="text-align:left; padding-left:20px;">选择删除</th>
      </tr>
      
      <volist name="list" id="vo">
        <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
         
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         <tr>
          <td>2015-10-10GG100001</td>
          <td>嘉年华小区入伙通知</td>
          <td>2015-10-10</td>
          <td>admin</td>
          <td>
          <div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div>
          </td>
            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
        </tr>
        
         
      <tr>

        <td colspan="7" style="text-align:center;padding-left:20px;"><a href="javascript:void(0)" class="button border-blue icon-edit" style="padding:5px 15px;" onclick="DelSelect()"> 全选</a> <a href="javascript:void(0)" class="button border-blue icon-edit" style="padding:5px 15px;" onclick="DelSelect()"> 反选</a> <a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()">取消</a> </td>
      </tr>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
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

//批量删除
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
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>