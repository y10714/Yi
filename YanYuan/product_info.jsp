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
				</div>
			</div>
			</nav>

		</div>
		<!--第二行，黄色线-->
		<div class="row">
			<div class="col-xs-12 col-md-12"
				style="background-color: yellow; height: 5px;"></div>

		</div>
		</div>
		
	<!-- 进行商品信息展示的布局，商品在request中，name=pinfo -->
	
			<div class="container-fluid" style="background-color: dodgerblue;height:2000px">
			
			
			<div class="row" style=" padding-top: 150px; ">
				
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="text-align: right; ">
					<div style="margin-right: 20px;">
						
						<img src="${pinfo.y_pimg }" onmouseover="bigsize(this)" id="infoimg" onmouseout="normalImg(this)"/>
					</div>
				</div>
				<script>
				 $(function(){
				$("#infoimg").mouseover(function(){
					document.getElementById("infoimg").style.width="600px";
				});
				$("#infoimg").mouseout(function(){
					document.getElementById("infoimg").style.width="300px";
				});
					});
				</script>
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					<!--描述：四行，第一行：名字，第二行：评价，第三行：价格，第四行：描述-->
					<div style="font-size: 20px; padding-top: 15px; color: yellow; font-weight: 900;font-style:italic">${pinfo.y_pname }
					</div>
					
					<!-- 线条 -->
				    <div class="col-xs-12 col-md-12" style="background-color: yellow; height: 5px;"></div>
                  
			       <!-- 留言板 -->
					
					<div style="margin-top: 20px;">
				   <form action="${pageContext.request.contextPath }/LiuyanServlet?pid=${pinfo.y_pid }" method="post">  
						<a id="bte"  style="width: 70px; height: 30px; cursor:pointer;color:yellow">我要留言</a>
						<textarea style="width: 800px; height: 300px; display: none;" id="liuyan" name="p_content"></textarea>
						<input type="submit" value="提交"  style="display:  none;" id="sub"/>
						<!-- 	<span style="display: none; font-size: 20px; color: yellow;" id="succe">提交成功!</span>
					 <span style="display: none; font-size: 20px; color: yellow;" id="ping">请您登陆后再留言！</span>-->
					 <c:if test="${noUser!=null }"><!-- 如果nouser不为空，说明没登陆，显示一个按钮，点击去登陆页面 -->
					  <span style="font-size: 20px; color: red;" id="ping">${noUser }</span>
					 <input type="button" id="dw" value="点击我去登陆" style="width: 100px; height: 30px;"></input>
					  </c:if>
				   </form>
					</div>
					<script>
						 $(function(){
			
				            $("#bte").click(function(){
				 	        $("#bte").css("display","none");
				 	        $("#liuyan").css("display","block");
				          	$("#sub").css("display","block")
				         });
				            
				            $("#dw").click(function(){
					 	      
					 	     if(confirm("确认登陆吗?"))
					 	    	 {
					 	    	 location.href="${pageContext.request.contextPath }/login.jsp";
					 	    	 };
					         });
				          
					});
					
			<!-- 
					$(function(){
						$("#sub").click(function(){
							
						<c:if test="${user==null }">
						$("#ping").css("display","block");
						</c:if>
							$("#sub").css("display","none");
							$("#liuyan").css("display","none");
							 /*提交成功后显示提交成功，显示2秒，这几个字消失*/
							$("#succe").css("display","block");
							time=setInterval("disp()",2000);
						 });     
					});
					       function disp(){
							$("#succe").css("display","none");
						    clearInterval(time);//消除这个定时器
					       };
					
					       -->
					</script>
					
					
					
					
					<!-- 留言结束 -->
					
					
					<div style="font-size: 20px; padding-top: 15px; color: yellow; font-weight: 900;font-style:italic">￥：&nbsp;&nbsp;${pinfo.y_price }</div>
					<div style="font-size: 20px; padding-top: 15px; color: yellow; font-weight: 900;font-style:italic">产品详情:&nbsp;&nbsp;${pinfo.y_pdescript }</div>
				<!-- 添加到购物车 -->	<div id="gwc">
	                      <input type="button" value="添加到购物车" />
                   </div>
                  <span style="display: none; color: red;" id="hx"></span>
				  <script>
  	                  $("#gwc").click(function(){
  		                          $.get(
										 "${pageContext.request.contextPath}/GouwcServlet",//请求地址
										 {"UserGwc":"${pinfo.y_pname }"},//请求参数，json
										 function(data){
											$("#hx").html(data.info);
											$("#hx").css("display","block");
										 },//回调函数
										 "json"//返回参数的类型
								   );
                          	});
                </script>
                
                <!-- 点击购买 -->
                  <div id="gm">
	                      <input type="button" value="点击购买" />
                    </div>
                  <img src="images/2wm.jpg" style="display: none;" id="2wm" />
                  
                 <span style="display: none; color: red; font-size: 6;" id="sucfk"></span>
				  <script>
				 
				  	  $("#gm").click(function(){
  		                         $("#2wm").css("display","block");
  		                       var time=setInterval(dis,5000);
  		                       var time1=setInterval(function fk(){
  		                          $.get(
  											 "${pageContext.request.contextPath}/FukuanServlet",//请求地址
  											 {"fukuan":"${pinfo.y_price }"},//请求参数，json
  											 function(data){
  												 if(data!=null){
  													 $("#sucfk").html(data.suc+"实际付款:"+data.jg);
  													 $("#sucfk").css("display","block");
  												 }
  											 },//回调函数
  											 "json"//返回参数的类型
  									   );
  		                          clearInterval(time1);
  			                          
  	                     	},5000);
  		                    
                          	});
                          	
				  	$(function(){
                        
                      	});
                      	function dis(){
                      		 $("#2wm").css("display","none");
                      		clearInterval(time);
                      		 
                      	}
                         // 	 <!-- ajax，后台判断是否付款，付款后显示付款成功 -->
                          
                   </script>
                  
                   
				<!-- 此商品得留言，并且显示哪个用户留的言 -->
					<!-- 为此页面准备数据得servlet把留言存储到了request域中，name=ly   传过来得是留言类得集合-->
				
				 <div style="width: 800px; border: 0px solid red; margin-top: 90px;">
				 <div style="font-size: 20px; padding-top: 15px; color: yellow; font-weight: 900;font-style:italic">下面是其他客户对${pinfo.y_pname }商品的评价</div><br>
				<c:forEach items="${ly }" var="liuyanlei">
				<span style="font-size:18px;color:yellow">
				<!--  
				<c:forEach items="${id_name }" var="us">
				<c:if test="${us.uid==liuyanlei.l_uid }">
				   ${us.username }
				</c:if>
				
				</c:forEach>-->
				 客户id为${liuyanlei.l_uid }发表留言:&nbsp;&nbsp;&nbsp;${liuyanlei.l_cont }<br>
				    </span>
				</c:forEach>
				 </div>
				</div>
			</div>
			
			
		</div>
		
		
		
	        
</body>

</html>