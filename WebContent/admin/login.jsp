<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../css/style.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>

<style type="text/css">
    	.slogan
    	{
    		color: transparent;
			background-color : black;
			text-shadow : rgba(255,255,255,0.5) 0 5px 6px, rgba(255,255,255,0.2) 1px 3px 3px;
			-webkit-background-clip : text;
    	
    	}
    	.moreShare
		{
			width: 55px;position: fixed;bottom: 248px;right: 40px;background-color: #6fb6fd;inline-block;z-index: 100;
			font-family: arial,tahoma,'Microsoft Yahei','\5b8b\4f53',sans-serif;
		}
		<!--分享样式-->
		.side-bar {background-image: url(img/rightSideIcon.png) no-repeat;} 
		.side-bar {width: 55px;position: fixed;bottom: 20px;right: 40px;font-size: 0;line-height: 0;z-index: 100;} 
		.side-bar a {width: 55px;height: 55px;display: inline-block;background-color: #ddd;margin-bottom: 2px;} 
		.side-bar a:hover {background-color: #669fdd;} 
		.side-bar .icon-qq {background-position: 0 -62px;} 
		.side-bar .icon-qzone {background-position: 0 -130px;position: relative;} 
		.side-bar .icon-blog {background-position: 0 -198px;} 
		.side-bar .icon-wechat {background-position: 0 -266px;} 
		
		
		
</style>

<script>
	<!--登录well下面的提示-->
	$(function(){
	    $("#loginBottomAlert").bind('closed.bs.alert', function () {
	        alert("您确定关闭提示吗？");
	    });
	});
	<!--轮播事件-->
	$(function(){
	
		// 循环轮播到下一个项目
		$(".next-slide").click(function(){
			$("#myCarousel").carousel('next');
			$("#myCarousel").carousel('pause');
		});
	
	});
</script>
    

    <body>
    	<div class="container">
    		<div class="row">
				<div class="col-lg-1">
					<img src="../img/shop.ico" style="margin-top: 35px;margin-left: 15px;"/>
				</div>
				<div class="col-lg-11">
					<strong><h1 class="slogan" style="margin-top: 65px;font-weight:bold;">在线购物系统</h1></strong>
				</div>
			</div>
    		
    		<!-- 主登录注册行 -->
    		<div class="row" style="margin-top: 5%;">
    		
    			<div class="col-lg-2">
    			</div>
    			
    			<div class="col-lg-8" >
    				<div id="myCarousel" class="carousel slide">
    				
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<!-- 轮播登录 -->
							<div class="item active">
							
								<div class="well well-lg" style="height:360px">
			    					<div class="row">
										<div class="col-lg-12" >
											<h4 style="margin-top:1px;">
												用户登录   &nbsp; |<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">用户注册</a>
											</h4><hr style="margin-top:1px;  height:1px;border:none;border-top:1px dashed #0066CC;"/>
										</div>
									</div>
									<form class="form-horizontal" role="form"  action="login.action" method="post">
									  <input type="hidden" name="action" name="action" value="login" />
									  <div class="form-group">
									    <label for="firstname" class="col-sm-2 control-label">名字</label>
									    <div class="col-sm-7">
									      <input type="text" class="form-control" name="userName" placeholder="请输入名字">
									    </div>
									  </div>
									  <div class="form-group">
									    <label for="lastname" class="col-sm-2 control-label">密码</label>
									    <div class="col-sm-7">
									      <input type="password" class="form-control" name="password" placeholder="请输入密码">
									    </div>
									  </div>
									
									  <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-12">
									      	<div class="row">
									      		<div class="col-sm-1" >
													
												</div>
												<div class="col-sm-3" >
													<button type="submit" class="btn btn-primary">登录</button>
												</div>
												<div class="col-sm-4">
													 <button type="reset" class="btn btn-primary">重置</button>
												</div>
											</div>
									    </div>
									  </div>
									  
									</form>
									
									
									<div id="loginBottomAlert" class="alert alert-success" style="text-align: center;font-size: 15px; margin-top:40px;">
									    <a href="#" class="close" data-dismiss="alert">&times;</a>
											<strong> 欢迎使用您使用在线购物平台:默认用户名：王兆信,默认密码：123456</strong>   
									</div>
			
			    				</div><!--well标签结束-->
							
							</div>
							<!-- 轮播注册 -->
							<div class="item">
								
								<div class="well well-lg" >
			    					<div class="row">
										<div class="col-lg-12">
											<h4 style="margin-top:1px;">
												用户注册   &nbsp; |<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">用户登录</a>
											</h4><hr style="margin-top:1px;  height:1px;border:none;border-top:1px dashed #0066CC;"/>
										</div>
									</div>
									<form class="form-horizontal" role="form"  action="login.action" method="post">
									  <input type="hidden" name="action" name="action" value="login" />
									  <div class="form-group">
									    <label for="firstname" class="col-sm-2 control-label">名字</label>
									    <div class="col-sm-7">
									      <input type="text" class="form-control" name="userName" placeholder="请输入名字">
									    </div>
									  </div>
									  
									  <div class="form-group">
									    <label for="lastname" class="col-sm-2 control-label">密码</label>
									    <div class="col-sm-7">
									      <input type="password" class="form-control" name="password" placeholder="请输入密码">
									    </div>
									  </div>
									  
									  <div class="form-group">
									     <label for="lastname" class="col-sm-2 control-label">性别</label>
									    <div class="col-sm-7">
									      	<div class="radio">
												<label>
													<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>男
												</label>&nbsp;&nbsp;&nbsp;&nbsp;
												<label>
													<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">女
												</label>
											</div>
									    </div>
									  </div>
									  
									   <div class="form-group">
										    <label for="e-mail" class="col-sm-2 control-label">邮箱</label>
										    <div class="col-sm-7">  
										       <div class="input-group">
													<span class="input-group-addon">e-mail</span>
													<input type="text" class="form-control" name="email" placeholder="请输入邮箱">
												</div>     
										    </div>
									  </div>
									  
									  <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-12">
									      	<div class="row">
									      		<div class="col-sm-1" >
													
												</div>
												<div class="col-sm-3" >
													<button type="submit" class="btn btn-primary">确定提交</button>
												</div>
												<div class="col-sm-4">
													 <button type="reset" class="btn btn-primary">重新填写</button>
												</div>
											</div>
									    </div>
									  </div>
									  
									</form>
									
			    				</div><!--well标签结束-->
								
							</div>
						</div>
					</div>
    			
    			 
    				
    			</div><!-- col-8结束 -->
    			
    			<div class="col-lg-2">
    			</div>
    		</div>
    		
    		
    		<!--右侧分享-->
		   	<div class="moreShare">
		    	<span class="shareTitle" style="margin-left: 12px; color:#fff;">分享</span>
		    </div>
			    
		   <!--注意点：多个class样式，有动作代码时，把动作放前面-->
		   <div class="side-bar ">    
			    <a class="icon-qq" href="http://connect.qq.com/widget/shareqq/index.html?url=http%3A%2F%2F127.0.0.1%3A8020%2F%25E9%25AB%2598%25E8%2580%2583%25E6%258A%25A5%25E8%2580%2583%25E7%25B3%25BB%25E7%25BB%259F%2Ftest.html%3F__hbt%3D1501681241740%230-sqq-1-90324-9737f6f9e09dfaf5d3fd14d775bfee85&title=%E9%AB%98%E8%80%83%E6%8A%A5%E8%80%83%E7%B3%BB%E7%BB%9F&desc=&summary=&site=baidu" >
			    	<img src="../img/qqIcon.png" style="margin-left: 7px ; margin-top: 5px;width: 40px;height: 43px;"/>
			    </a>  
			    <a class="icon-qzone" href="https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2F127.0.0.1%3A8020%2F%25E9%25AB%2598%25E8%2580%2583%25E6%258A%25A5%25E8%2580%2583%25E7%25B3%25BB%25E7%25BB%259F%2Ftest.html%3F__hbt%3D1501681241740%230-qzone-1-58024-d020d2d2a4e8d1a374a433f596ad1440&title=%E9%AB%98%E8%80%83%E6%8A%A5%E8%80%83%E7%B3%BB%E7%BB%9F&desc=&summary=&site=">
			    	<img src="../img/qzoneIcon.png" style="margin-left: 5px ; margin-top: 8px;width: 45px;height: 40px;"/>
			    </a>  
			    <a class="icon-blog" href="http://service.weibo.com/share/share.php?url=http%3A%2F%2F127.0.0.1%3A8020%2F%25E9%25AB%2598%25E8%2580%2583%25E6%258A%25A5%25E8%2580%2583%25E7%25B3%25BB%25E7%25BB%259F%2Ftest.html%3F__hbt%3D1501681241740%230-tsina-1-25216-397232819ff9a47a7b7e80a40613cfe1&title=%E9%AB%98%E8%80%83%E6%8A%A5%E8%80%83%E7%B3%BB%E7%BB%9F&appkey=1343713053&searchPic=true#_loginLayer_1501682834941">
			    	<img src="../img/SinaIcon.ico" style="height:48px;width:48px; margin-left: 4px ; margin-top: 4px;"/>
			    </a>  
			    <a class="icon-wechat">
			    	<img src="../img/wechatIcon.png" style="margin-left: 6px ; margin-top: 8px;height: 40px;width: 45px;"/>
			    </a> 
			</div> 
    	
    	</div><!--container标签结束-->

 	</body>
</html>