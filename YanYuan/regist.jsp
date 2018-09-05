<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<!--视口的作用：在移动浏览器中，当页面宽度超出设备，浏览器内部虚拟的一个页面容器，会将页面缩放到设备这么大来展示-->
		<!--width 	设置layout viewport  的宽度，为一个正整数，或字符串"width-device"(表示采用设备的宽度)
			initial-scale 	设置页面的初始缩放值，为一个数字，可以带小数
			minimum-scale 	允许用户的最小缩放值，为一个数字，可以带小数
			maximum-scale 	允许用户的最大缩放值，为一个数字，可以带小数
			height 	设置layout viewport  的高度，这个属性对我们并不重要，很少使用
			user-scalable 	是否允许用户进行缩放，值为"no"或"yes", no 代表不允许，yes代表允许
			如果设置"user-scalable=no",那么"minimum-scale"和"maximum-scale"无效
		-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>regist</title>

		<!-- 引入Bootstrap核心样式文件 -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入jQuery核心js文件，必须放置在bootStrap.js前面！ -->
		<script src="js/jquery-1.8.3.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="js/bootstrap.min.js"></script>

		<!--
        	作者：740022315@qq.com
        	时间：2018-06-12
        	描述：使用validate插件对表单进行校验
        -->
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="js/messages_zh.js"></script>

		<script>
			$(function() {
				$("#registid").validate({
					rules: {
						username: {
							required: true,
							minlength: 2
						},
						password: {
							required: true,
							minlength: 6
						},
						repassword: {
							equalTo: "[name='password']"
						},
						email: {
							email: "email"
						}
						
					},
					messages: {
						username: {
							required: "用户名不能为空!",
							minlength: "用户名不得少于两位！"
						},
						password: {
							required: "密码不能为空!",
							minlength: "密码不得少于6位!"
						},
						repassword: {
							equalTo: "两次密码输入不一致"
						}
					}
				});
			});
		</script>
		
	</head>

	<body>

		<div class="container-fluid" style="background-color: skyblue; height: 1048px;">
			<div style="width: 600px; height: 500px; padding-top: 300px; padding-right: 0px;">
				<form class="form-horizontal" id="registid" method="post" action="${pageContext.request.contextPath }/RegistServlet">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Username:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Username" placeholder="请输入用户名，用户名至少两位" name="username">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码，密码至少六位" name="password">
						</div>
					</div>
					<!-- 重复密码-->
					<div class="form-group">
						<label for="inputrepassword" class="col-sm-2 control-label">Repassword</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputrepassword" placeholder="请确认密码" name="repassword">
						</div>
					</div>
					<!-- Email-->
					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail" placeholder="请输入Email" name="email">
						</div>
					</div>
					

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">注册</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</body>

</html>