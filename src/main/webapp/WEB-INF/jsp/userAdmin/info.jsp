<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
			<div class="panel-head">
				<strong class="icon-reorder"> 小区业主个人基本信息</strong>
			</div>

			<table class="table table-hover text-center">
				<tr>
					<td>业主姓名：</td>
					<td>${sessionScope.owner.name}</td>
				</tr>

				<tr>
					<td>联系电话：</td>
					<td>${sessionScope.owner.tel}</td>
				</tr>

				<tr>
					<td>联系地址：</td>
					<td>${sessionScope.owner.address}</td>
				</tr>

				<tr>
					<td>电子邮件：</td>
					<td>${sessionScope.owner.email}</td>
				</tr>

				<tr>
					<td>房产证号：</td>
					<td>${sessionScope.owner.ownerInfo.houseId}</td>
				</tr>

				<tr>
					<td>工作单位：</td>
					<td>${sessionScope.owner.workAddress}</td>
				</tr>

				<tr>
					<td>手机：</td>
					<td>${sessionScope.owner.phone}</td>
				</tr>

				<tr>
					<td>身份证号码：</td>
					<td>${sessionScope.owner.userId}</td>
				</tr>

				<tr>
					<td>备注信息：</td>
					<td>${sessionScope.owner.detail}</td>
				</tr>

				<tr>
					<td>登陆系统的用户名：</td>
					<td>${sessionScope.owner.loginName}</td>
				</tr>

				<tr>
					<td colspan="8">
						<div class="button-group">
							<a type="button" class="button border-main"
								href="<%=request.getContextPath() %>/info_update"><span class="icon-edit"></span>修改</a>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript">
		function del(id) {
			if (confirm("您确定要删除吗?")) {

			}
		}

		$("#checkall").click(function() {
			$("input[name='id[]']").each(function() {
				if (this.checked) {
					this.checked = false;
				} else {
					this.checked = true;
				}
			});
		})

		function DelSelect() {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {
				var t = confirm("您确认要删除选中的内容吗？");
				if (t == false)
					return false;
			} else {
				alert("请选择您要删除的内容!");
				return false;
			}
		}
	</script>
</body>
</html>