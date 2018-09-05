<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>YanYuan</title>
<!-- 引入Bootstrap核心样式文件 -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">


<script src="js/jquery-1.8.3.js"></script>

<script src="js/bootstrap.min.js"></script>

<!--导航-->
<link rel="stylesheet" type="text/css" href="css/index.css">

</head>

<body>
	<!--正文从此处开始-->
	<div class="container-fluid">
		<!--第一行:网站logo-->
		<div class="row">
			<div class="col-xs-4 col-md-4"
				style="height: 60px; text-align: right; background-color: black;">
				<a href="javascript:void(0)"><img src="images/logo.jpg"
					style="height: 100%;" /></a>
			</div>
			<!--导航开始-->
			<div class="col-xs-8 col-md-8"
				style="background-color: #101010; height: 60px;">

				<nav class="navbar navbar-inverse"
					style="background-color: #000000; margin-top: 7px;">


				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/index.jsp">首页</a>
				</div>


				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">婴幼保健&nbsp;&nbsp;&nbsp;|</a></li>
						<li><a href="#">美容美妆&nbsp;&nbsp;&nbsp;</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">所有分类 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">家居家装</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">办公文具</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">家用电器</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">运动户外</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">影视乐器</a></li>
							</ul></li>


					</ul>
					<form class="navbar-form navbar-left" action="${pageContext.request.contextPath }/TiaoproServlet" method="post">
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Search products" id="Search"
								onkeyup="searchproducts(this)" name="p1">
						</div>
						<div id="showDiv"
							style="display: none; position: absolute; z-index: 1000; background: #fff; width: 179px; border: 1px solid #ccc;">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<script>
					 function overFn(obj){
							$(obj).css("background","#DBEAF9");
						}
						function outFn(obj){
							$(obj).css("background","#fff");
						}
						
						function clickFn(obj){
							$("#Search").val($(obj).html());
							$("#showDiv").css("display","none");
						}
							   function searchproducts(obj){
								  
								  var pro= $(obj).val();//获取输入的内容
								  var content ="";
								   $.get(
										 "${pageContext.request.contextPath}/SearchProductServlet",//请求地址
										 {"product":pro},//请求参数，json
										 function(data){
											 if(data.length>=0){
												 
												 for(var i=0;i<data.length;i++)
													 {
													 content+="<div style='padding:5px;cursor:pointer' onclick='clickFn(this)' onmouseover='overFn(this)' onmouseout='outFn(this)'>"+data[i].y_pname+"</div>";
													 }
												 $("#showDiv").html(content);
												   $("#showDiv").css("display","block");
											 }
										 },//回调函数
										 "json"//返回参数的类型
								   );
							   }
							</script>
					<!-- 
							<script>
							  
							function overFn(obj){
								$(obj).css("background","#DBEAF9");
							}
							function outFn(obj){
								$(obj).css("background","#fff");
							}
							
							function clickFn(obj){
								$("#Search").val($(obj).html());
								$("#showDiv").css("display","none");
							}
							
						
							function searchWord(obj){
								//1、获得输入框的输入的内容
								var word = $(obj).val();
								//2、根据输入框的内容去数据库中模糊查询---List<Category>
								var content ="";
								$.get(
									"${pageContext.request.contextPath}/searchWord",
									{"category":word},
									function(data){//回调函数，data返回的的数据
										//3、将返回的商品的名称 显示showDiv中
										if(data.length>=0){
											for(var i=0;i<data.length;i++){
												content+="<div style='padding:5px;cursor:pointer' onclick='clickFn(this)' onmouseover='overFn(this)' onmouseout='outFn(this)'>"+data[i].cname+"</div>";
											}
											$("#showDiv").html(content);
										    $("#showDiv").css("display","block");
										}
										
									},
									"json"
								);
								
							}
							</script> -->
				</div>
			</div>
			</nav>

		</div>
		<!--第二行，黄色线-->
		<div class="row">
			<div class="col-xs-12 col-md-12"
				style="background-color: yellow; height: 5px;"></div>

		</div>




		<!-- 展示商品 -->
		
		<!--  
		<div class="row" style="width: 1210px; margin: 0 auto;">
			<c:forEach items="${productslist }" var="product">
				<div class="col-md-2" style="height: 300px">
					<a href="${pageContext.request.contextPath }/ProinfoServlet?infoimg=${product.y_pimg }&infodescript=${product.y_pdescript }&infoname=${product.y_pname }&infoprice=${product.y_price }&infopid=${product.y_pid }"> <img
						src="${pageContext.request.contextPath }/${product.y_pimg}"
						width="170" height="170" style="display: inline-block;">
					</a>
					<p>
					<a href="${pageContext.request.contextPath }/ProinfoServlet?infoimg=${product.y_pimg }&infodescript=${product.y_pdescript }&infoname=${product.y_pname }&infoprice=${product.y_price }&infopid=${product.y_pid }" style="color: green">${product.y_pdescript }</a>
					</p>
					<p>
						<font color="#FF0000">商城价：&yen;${product.y_price }</font>
					</p>
				</div>
			</c:forEach>        -->
			<div class="row" style="width: 1210px; margin: 0 auto;">
		  <c:forEach items="${pageBean.productList }" var="products">
			<div class="col-md-2" style="height:250px">
				<a href="${pageContext.request.contextPath }/ProinfoServlet?infoimg=${products.y_pimg }&infodescript=${products.y_pdescript }&infoname=${products.y_pname }&infoprice=${products.y_price }&infopid=${products.y_pid }"> 
					<img src="${pageContext.request.contextPath }/${products.y_pimg}" width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="${pageContext.request.contextPath }/ProinfoServlet?infoimg=${products.y_pimg }&infodescript=${products.y_pdescript }&infoname=${products.y_pname }&infoprice=${products.y_price }&infopid=${products.y_pid }" style='color: green'>${products.y_pname }</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;${products.y_price }</font>
				</p>
			</div>
		 </c:forEach>
	     </div>
	             
	             <!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<!-- 上一页 -->
			<!-- 判断当前页是否是第一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<li>
					<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>	
			<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
				<!-- 判断当前页 -->
				<c:if test="${pageBean.currentPage==page }">
					<li class="active"><a href="javascript:void(0);">${page}</a></li>
				</c:if>
				<c:if test="${pageBean.currentPage!=page }">
					<li><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=${page}">${page}</a></li>
				</c:if>
			</c:forEach>
			<!-- 判断当前页是否是最后一页 -->
			<c:if test="${pageBean.currentPage==pageBean.totalPage }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
				<li>
					<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
		
		</ul>
	</div>
	<!-- 分页结束 -->
	     
	     
	     
	     
 </div>
</body>

</html>