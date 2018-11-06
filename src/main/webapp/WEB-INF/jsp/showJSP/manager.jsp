<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>物管人员</title>
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
            <p class="f16 c_red"></p>
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
    	<div class="title clearfix"><font class="yh f16">物业管理人员</font><span class="fright f12">网站首页 > <a href="#">物业管理人员</a></span></div>
    	 
    	 <div class="newsnr">
    	 	<h1 class="bt">物业管理人员</h1>
            <p></p>
            <p></p>
            <div class="fleft">
    	 	<table  align="center" width="350" height="180" border="1px" cellspacing="0" cellpadding="0" >
              <tbody>
                <tr >
                  <td  rowspan="5" width="130"><img src="images/c1.jpg" width="130" height="180"/></td>
                  <td width="80">编号：</td>
                  <td width="100">2434</td>

                </tr>
                <tr>
                  <td>姓名</td>
                  <td>李三</td>

                </tr>
                <tr>
                  <td>职务</td>
                  <td>经理</td>

                </tr>
                <tr>
                  <td>工作安排</td>
                  <td>打杂</td>

                </tr>
                <tr>
                  <td>联系电话</td>
                  <td>0550-8888888</td>

                </tr>
              </tbody>
            </table>
            </div>
            <div class="fright">
            	<table  align="center" width="350" height="180" border="1px" cellspacing="0" cellpadding="0" >
              <tbody>
                <tr >
                  <td  rowspan="5" width="130"><img src="images/c2.png" width="130" height="180"/></td>
                  <td width="80">编号：</td>
                  <td width="100">2434</td>

                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>

                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>

                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>

                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>

                </tr>
              </tbody>
            </table>
            </div>



        <div class="page clearfix">页次：1/1 每页9 总数5    首页  上一页  下一页  尾页    转到:<select name=select onchange="self.location.href=this.options[this.selectedIndex].value"><option value='/news/index.html' selected>第 1 页</option></select></div>
        
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