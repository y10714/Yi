<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<!--轮播图开始-->
<style type="text/css">
	* {
		padding: 0;
		margin: 0;
		list-style-type: none;
	}
	
	body {
		background-color: white;
	}
	
	
	img {
		border: 0;
	}
	
	body {
		font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
	}
	/* demo */
	/*五张图片在缩略图时所显示的位置调整*/
	
	#demo li:nth-of-type(1) img {
		transform: translate(-210px);
	}
	
	#demo li:nth-of-type(2) img {
		transform: translate(-180px);
	}
	
	#demo li:nth-of-type(3) img {
		transform: translate(-380px);
	}
	
	#demo li:nth-of-type(4) img {
		transform: translate(-450px);
	}
	
	#demo li:nth-of-type(5) img {
		transform: translate(-320px);
	}
	
	#demo {
		width: 1160px;
		height: 512px;
		margin: 60px auto 0 auto;
	}
	
	#demo img {
		width: 820px;
		height: 512px;
		max-width: 820px;
	}
	
	#demo li {
		float: left;
		position: relative;
		width: 82px;
		height: 100%;
		overflow: hidden;
		cursor: pointer;
		transition: 0.5s;
		transform-origin: bottom;
		filter: alpha(opacity=50);
		opacity: 0.5;
	}
	
	#demo li img {
		transition: 1.2s;
	}
	
	#demo li a {
		display: block;
	}
	
	#demo li div {
		position: absolute;
		bottom: 0;
		left: 0;
		width: 100%;
		background: #000;
		line-height: 32px;
		filter: alpha(opacity=70);
		opacity: 0.7;
		text-indent: 2em;
	}
	
	#demo li div a {
		color: #FFF;
		text-decoration: none;
	}
	
	#demo li div a:hover {
		color: #F00;
		text-decoration: none;
	}
	
	#demo li.active {
		cursor: pointer;
		transform: scale(1.02, 1.08);
		z-index: 3;
		width: 820px;
		filter: alpha(opacity=100);
		opacity: 1;
	}
	
	#demo li.active img {
		transform: translate(0px);
	}
	
	#demo li:nth-of-type(1) {
		transform-origin: bottom left;
	}
	
	#demo li:nth-of-type(5) {
		transform-origin: bottom right;
	}
	
	
	
</style>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.indexSlidePattern.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		var opt = {
			"speed": "fast", //变换速度,三速度可选 slow,normal,fast;
			"by": "mouseover", //触发事件,click或者mouseover;
			"auto": true, //是否自动播放;
			"sec": 3000 //自动播放间隔;
		};
		$("#demo").IMGDEMO(opt);
	});
</script>
<!--轮播图结束-->
</head>

<body>
	<!--正文从此处开始-->
	<div class="container-fluid">
		<!--第一行:网站logo-->
		<div class="row">
			<div class="col-xs-4 col-md-4" style="height: 60px; text-align: right; background-color: black;">
				<a href="javascript:void(0)"><img src="images/logo.jpg" style="height: 100%;" /></a>
			</div>
<!--导航开始-->
			<div class="col-xs-8 col-md-8" style="background-color: #101010; height: 60px;">
			
				<nav class="navbar navbar-inverse"  style="background-color: #000000; margin-top: 7px;">
					
						
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                               <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
							<a class="navbar-brand" href="javascript:void(0)">首页</a>
						</div>

						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">手机数码&nbsp;&nbsp;&nbsp;|</a></li>
								<li><a href="#">婴幼保健&nbsp;&nbsp;&nbsp;|</a></li>
								<li><a href="#">美容美妆&nbsp;&nbsp;&nbsp;</a></li>
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">所有分类 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">家居家装</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">办公文具</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">家用电器</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">运动户外</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">影视乐器</a>
									</li>
								</ul>
							</li>
								

                            </ul>
							<form class="navbar-form navbar-left" action="${pageContext.request.contextPath }/TiaoLeiServlet" method="post">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="搜索分类" id="Search" onkeyup="searchWord(this)" name="lei" >
								</div>
								<div id="showDiv" style="display:none; position:absolute;z-index:1000;background:#fff; width:179px;border:1px solid #ccc;">
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
							</script>
							<ul class="nav navbar-nav navbar-right">
							<c:if test="${sessionScope.user!=null }">
							<!-- 这里必须从request中取user，因为我在session中也存储了user，如果这不从request中取，那么点击退出，域中
							还有user，所以还是不会显示登陆和注册 -->
							      <li><a style="font-size: 15px; color: white;" href="${pageContext.request.contextPath }/InfoGwcServlet">我的购物车</a></li>
							      <li><a style="font-size: 15px; color: white;">${sessionScope.user.username }</a></li>
							      <li><a href="${pageContext.request.contextPath }/RemoveUserServlet" style="font-size: 15px; color: white;" id="tui">退出</a></li>
							   
							</c:if>
							<c:if test="${sessionScope.user==null }">
							<li><a href="${pageContext.request.contextPath }/login.jsp">登陆</a></li>
							<li><a href="${pageContext.request.contextPath }/regist.jsp">注册</a></li>
							</c:if>	
							</ul>
						</div>
					</div>
				</nav>
				
			</div>
			<!--第二行，黄色线-->
			<div class="row">
				<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 5px;"></div>
				
			</div>
			
		<!-- 第三行，轮播图 -->
		<div class="row" style="background-color: #DDDDDD; height: 670px; padding-top: 35px;">
			
			<div class="col-xs-12 col-md-12">

				<ul id="demo">
					<li class="active">
						<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1"><img src="images/1.jpg" /></a>
						<div><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">YanYuan_1</a></div>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1"><img src="images/2.jpg" /></a>
						<div><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">YanYuan_2</a></div>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1"><img src="images/3.jpg" /></a>
						<div><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">YanYuan_3</a></div>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1"><img src="images/4.jpg" /></a>
						<div><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">YanYuan_4</a></div>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1"><img src="images/5.jpg" /></a>
						<div><a href="${pageContext.request.contextPath }/ProductListServlet?currentPage=-1">YanYuan_5</a></div>
					</li>
				</ul>
			</div>
		</div>
		
		
		<!--
        	
        	描述：热门商品
        -->
		<div class="row" style="text-align: left; height: 40px; padding-top: 10px; padding-left: 20px;">
			<font size="5" face="微软雅黑">热门商品</font>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
		
		<!--
        	描述：热门商品布局
        -->
        
        <div class="row" style="padding-top: 35px;">
        	<div class="col-md-2 col-lg-2 col-sm-2 col-xs-2">
        		<div><img src="remen/zuo-1.jpg" style="width: 310px; height: 550px;"/></div>
             	<div style="margin-top: 20px;"><a style="cursor: pointer; font-size: 15px;">火力不停，狂欢再续-->唯品会618主会场</a></div>
        	</div>
        	<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10"  id="remen">
        	
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;">
        				<img src="remen/1.jpg" style="height:257px; width: 100%;" />
        				<a style="cursor: pointer; font-size: 13px;">【享3期免息】Nokia/诺基亚 X6智能4G全网通全面屏手机X6手机 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;">
        				<img src="remen/2.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">最高特惠800元 Meizu/魅族 PRO 7 全网通OLED屏4G智能手机pro7 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;" >
        				<img src="remen/3.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">【低至5188元】Apple/苹果iPhone 8 Plus 64G 智能手机 苹果8p </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;" >
        				<img src="remen/4.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">Xiaomi/小米 红米Note5千元全面屏新品超薄note5智能双摄学生手机</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/5.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">小孩益智玩具 1-2-3岁周岁男女孩女童宝宝游戏幼儿早教儿童4-5-6 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/6.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">灵动跳跃战士2变形战车玩具男孩烈火骑士跳越小子飞车3魔幻车神4 </a>
        			</div>
        		
        	
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/7.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">Xiaomi/小米 6X新品手机智能双摄骁龙660处理器官网时尚拍照手机</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/8.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">[新品] 华为honor/荣耀 荣耀9i全面屏智能手机青春正品官方旗舰店</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/9.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">贝易积木儿童玩具1-2周岁3-6岁男孩女孩宝宝益智早教拼插拼装玩具 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/10.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">磁力片积木儿童玩具吸铁石磁铁1-2-3-6-7-8-10周岁男孩益智拼装 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/11.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">灵动跳跃战士2变形战车玩具男孩烈火骑士跳越小子飞车3魔幻车神4 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/12.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">米兔Hape 70粒益智积木婴幼儿启蒙拼搭积木男孩女孩益智玩具  </a>
        			</div>
        		
        	</div>
        </div>
        
        <!--
        	作者：740022315@qq.com
        	时间：2018-06-19
        	描述：选取选择器，选取到下面的所有img，使得鼠标放上去图片放大一点
        -->
        <script>
        	$("#remen img").mouseover(function(){
              $(this).css("height","267px");
              $(this).css("width","267px");
        	});
        	$("#remen img").mouseout(function(){
              $(this).css("height","257px");
              $(this).css("width","227px");
        	
        	});
        </script>
		
		<!--
        	作者：740022315@qq.com
        	时间：2018-06-19
        	描述：三张图片：热门推荐
        -->
       
		<div class="row" style="text-align: left; height: 40px; padding-top: 10px; padding-left: 20px;">
			<font size="5" face="微软雅黑">热门推荐</font>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
		<div class="row" style="background-color: skyblue; height: 175px;" id="rmtj">
			<div class="col-md-5 col-lg-5 col-xs-5 col-sm-5" style="padding-left: 200px; margin-top:20px ;">
				<img src="santu/1.jpg" style="cursor: pointer;"/>
			</div>
			<div class="col-md-3 col-lg-3 col-xs-3 col-sm-3">
				<img src="santu/2.jpg" style="cursor: pointer; margin-top:20px ;"/>
			</div>
			<div class="col-md-4 col-lg-4 col-xs-4 col-sm-4" style="padding-left: 145px; margin-top:20px ;">
				<img src="santu/3.jpg" style="cursor: pointer;"/>
			</div>
			
		</div>
		 <script>
        	$("#rmtj img").mouseover(function(){
              $(this).css("height","155px");
              $(this).css("width","385px");
        	});
        	$("#rmtj img").mouseout(function(){
              $(this).css("height","130px");
              $(this).css("width","375px");
        	
        	});
        </script>
		<!--
        	作者：740022315@qq.com
        	时间：2018-06-19
        	描述：热门商品
        -->
		<div class="row" style="text-align: left; height: 40px; padding-top: 10px; padding-left: 20px;">
			<font size="5" face="微软雅黑">限时促销</font>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
		
		<!--
        	描述：热门商品布局
        -->
        
        <div class="row" style="padding-top: 35px;">
        	<div class="col-md-2 col-lg-2 col-sm-2 col-xs-2">
        		<div><img src="remen/zuo-1.jpg" style="width: 310px; height: 550px;"/></div>
             	<div style="margin-top: 20px;"><a style="cursor: pointer; font-size: 15px;">火力不停，狂欢再续-->唯品会618主会场</a></div>
        	</div>
        	<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10"  id="remen">
        	
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;">
        				<img src="remen/1.jpg" style="height:257px; width: 100%;" />
        				<a style="cursor: pointer; font-size: 13px;">【享3期免息】Nokia/诺基亚 X6智能4G全网通全面屏手机X6手机 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;">
        				<img src="remen/2.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">最高特惠800元 Meizu/魅族 PRO 7 全网通OLED屏4G智能手机pro7 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;" >
        				<img src="remen/3.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">【低至5188元】Apple/苹果iPhone 8 Plus 64G 智能手机 苹果8p </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2" style="height:  310px;" >
        				<img src="remen/4.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">Xiaomi/小米 红米Note5千元全面屏新品超薄note5智能双摄学生手机</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/5.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">小孩益智玩具 1-2-3岁周岁男女孩女童宝宝游戏幼儿早教儿童4-5-6 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/6.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">灵动跳跃战士2变形战车玩具男孩烈火骑士跳越小子飞车3魔幻车神4 </a>
        			</div>
        		
        	
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/7.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">Xiaomi/小米 6X新品手机智能双摄骁龙660处理器官网时尚拍照手机</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/8.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">[新品] 华为honor/荣耀 荣耀9i全面屏智能手机青春正品官方旗舰店</a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/9.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">贝易积木儿童玩具1-2周岁3-6岁男孩女孩宝宝益智早教拼插拼装玩具 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/10.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">磁力片积木儿童玩具吸铁石磁铁1-2-3-6-7-8-10周岁男孩益智拼装 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/11.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">灵动跳跃战士2变形战车玩具男孩烈火骑士跳越小子飞车3魔幻车神4 </a>
        			</div>
        			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"  style="height:  310px;">
        				<img src="remen/12.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">米兔Hape 70粒益智积木婴幼儿启蒙拼搭积木男孩女孩益智玩具  </a>
        			</div>
        		
        	</div>
        </div>
        
        <!--
        	作者：740022315@qq.com
        	时间：2018-06-19
        	描述：选取选择器，选取到下面的所有img，使得鼠标放上去图片放大一点
        -->
        <script>
        	$("#remen img").mouseover(function(){
              $(this).css("height","267px");
              $(this).css("width","267px");
        	});
        	$("#remen img").mouseout(function(){
              $(this).css("height","257px");
              $(this).css("width","227px");
        	
        	});
        </script>
		
		<!--第五行--猜你喜欢-->
		<div class="row" style="text-align: left; height: 40px; padding-top: 10px; padding-left: 20px;">
			<font size="5" face="微软雅黑">猜你喜欢</font>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
		
		<div class="row" style="margin-top: 40px;">
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/1.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">唐狮春秋新款加绒加厚卫衣女连帽卫衣女韩版潮学生卫衣女宽松外套</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/2.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">迪士尼3D儿童橡皮泥无毒彩泥套装雪糕机粘土工具幼儿园手工泥玩具</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/3.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">2017秋冬装新款 ulzzang带帽刺绣加绒卫衣女韩版潮学生宽松bf风薄</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/4.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">儿童大块积木桶装1-2-3-6周岁益智早教婴儿宝宝男女孩木头玩具</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/5.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">直降70【529起抢32G选电源礼Meizu/魅族 魅蓝6全网通手机note6t</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/6.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">数字多米诺积木4男孩子2女童1宝宝3-6周岁7早教5益智力幼儿童玩具</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/7.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">小宅Z4 VR眼镜 原装正品 数量有限 清仓 头戴式3D立体游戏影院</a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/8.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">双马7002蓝鲸双马达急速快艇 遥控快艇 玩具船 充电遥控船 </a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/9.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">超轻单车油碟30 diy变速山地车组装自行车nono pro mosso missile </a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/10.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">儿童法兰绒睡衣秋冬季男童连帽加厚珊瑚绒套装男孩小孩宝宝家居服 </a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/11.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">VOTO IX20（GT20）全面屏5.72寸全网通4G指纹解锁正品智能手机 </a>
			</div>
			<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
				<img src="cainixihuan/12.jpg" style="height:257px; width: 100%;"/>
        				<a style="cursor: pointer; font-size: 13px;">儿童电动玩具船宝宝能在水上行驶玩具益智消防船会喷水轮船模型 </a>
			</div>
		</div>
		
		
		<!--
        	作者：740022315@qq.com
        	时间：2018-06-19
        	描述：抢购
        -->
           <script type="text/javascript"> 
              function getRTime(){ 
               var EndTime= new Date('2018/06/22 18:00:00'); //截止时间 
               var NowTime = new Date(); 
               var t =EndTime.getTime() - NowTime.getTime(); 
               var d=Math.floor(t/1000/60/60/24); 
               var h=Math.floor(t/1000/60/60%24); 
               var m=Math.floor(t/1000/60%60); 
               var s=Math.floor(t/1000%60); 
 
              document.getElementById("t_d").innerHTML = d + "天"; 
              document.getElementById("t_h").innerHTML = h + "时"; 
              document.getElementById("t_m").innerHTML = m + "分"; 
              document.getElementById("t_s").innerHTML = s + "秒"; 
               } 
              setInterval(getRTime,1000); 
                 </script> 
         <div class="row" style="text-align: left; height: 40px; padding-top: 10px; padding-left: 20px; margin-top: 20px;">
         	<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2" style="padding-left: 80px;">
			<font size="5" face="微软雅黑">YanYuan抢购时间</font>
			</div>
			<div class="col-md-1 col-xs-1 col-lg-1 col-xs-1" style="padding-right: 40px; padding-top: 3px; text-align: right;"><font size="3" color="red">抢购剩余时间:</font></div>
			
           <div id="CountMsg" class="HotDate col-md-2 col-xs-2 col-lg-2 col-xs-2" style="padding-top: 3px;font-size: 18px;"> 
            <span id="t_d" style="background-color: yellow;">00天</span> 
            -
            <span id="t_h" style="background-color: yellow;">00时</span> 
            -
            <span id="t_m" style="background-color: yellow;">00分</span> 
            -
            <span id="t_s" style="background-color: yellow;">00秒</span> 
            </div> 
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
		<div class="row" style="padding-top: 30px; background-color: skyblue;">
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<img src="qianggou/1.jpg" />
		</div>
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<div><font size="3">【低至7198起】Apple/苹果 iPhone X 全网通4G 智能手机 苹果X </font></div>
			<div style="margin-top: 40px;"><font size="3">原价:&nbsp;&nbsp;&nbsp;</font><del style="color: red;"><font size="3">￥ 8388</font></del></div>
			<div style="padding-top: 10px;"><font size="3">￥ 7398</font></div>
			<a style="cursor: pointer;"><div style="padding-top: 10px;"><font color="red" size="3">马上抢</font></div></a>
			<div style="padding-top: 10px;"><font color="blue" size="3">疯狂进行中</font></div>
		</div>
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<img src="qianggou/2.png" />
		</div>
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<div><font size="3">Dell/戴尔G3游匣i7独显GTX1060吃鸡学生笔记本电脑游戏本15.6英寸</font></div>
			<div style="margin-top: 40px;"><font size="3">原价:&nbsp;&nbsp;&nbsp;</font><del style="color: red;"><font size="3">￥ 8599</font></del></div>
			<div style="padding-top: 10px;"><font size="3">￥ 6299</font></div>
			<a style="cursor: pointer;"><div style="padding-top: 10px;"><font color="red" size="3">马上抢</font></div></a>
			<div style="padding-top: 10px;"><font color="blue" size="3">疯狂进行中</font></div>
		</div>
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<img src="qianggou/3.jpg" />
		</div>
		<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
			<div><font size="3">Robam/老板 26A7+30B3/33g1/免拆洗抽油烟机燃气灶套装侧吸式家用 </font></div>
			<div style="margin-top: 40px;"><font size="3">原价:&nbsp;&nbsp;&nbsp;</font><del style="color: red;"><font size="3">￥ 7060</font></del></div>
			<div style="padding-top: 10px;"><font size="3">￥ 3480</font></div>
			<a style="cursor: pointer;"><div style="padding-top: 10px;"><font color="red" size="3">马上抢</font></div></a>
			<div style="padding-top: 10px;"><font color="blue" size="3">疯狂进行中</font></div>
		</div>
	</div>
	<!--
    	作者：740022315@qq.com
    	时间：2018-06-19
    	描述：网页底部
    -->
       <div class="row">
			<div class="col-xs-12 col-md-12" style="background-color: yellow; height: 2px;"></div>
		</div>
       <div class="row" style="padding-top: 20px;background-color: #DDDDDD;">
       	<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2" style="margin-left: 500px;">
       		<div><font size="4" style="font-weight: bolder;">消费者保障</font></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>保障范围</font></a></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>服务中心</font></a></div>
       		<div style="padding-left: 12px;"><a style="cursor: pointer;"><font>退货退款流程</font></a></div>
       	</div>
       	<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
       		<div><font size="4" style="font-weight: bolder; padding-left: 10px;">新手上路</font></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>消费警示</font></a></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>交易安全</font></a></div>
       		<div style="padding-left: 5px;"><a style="cursor: pointer;"><font>24小时在线帮助</font></a></div>
       	</div>
       	<div class="col-md-2 col-xs-2 col-lg-2 col-xs-2">
       		<div><font size="4" style="font-weight: bolder;padding-left: 10px;">付款方式</font></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>快捷支付</font></a></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>蚂蚁花呗</font></a></div>
       		<div style="padding-left: 20px;"><a style="cursor: pointer;"><font>货到付款</font></a></div>
       	</div>
       </div>
       
</div>
		

</body>

</html>