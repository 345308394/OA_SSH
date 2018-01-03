
<!-- index和其他页面的不同在于content显示的主页面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>在线购物系统后台</title>
        
        
        
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
		<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <link rel='stylesheet' type='text/css' >
        <link href="assets/css/icons.css" rel="stylesheet" />
        <!-- jQueryUI -->
        <link href="assets/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- Plugins stylesheets (all plugin custom css) -->
        <link href="assets/css/plugins.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="assets/css/main.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/img/ico/apple-touch-icon-57-precomposed.png">
        <link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
        <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
        
        <script>
		<!--轮播事件-->
		$(function(){
		
			// 商品管理循环轮播到下一个项目
			$(".next-slide").click(function(){
				$("#myCarousel").carousel('next');
				$("#myCarousel").carousel('pause');
			});
			
			// 商品管理循环轮播到下一个项目
			$(".next-slide").click(function(){
				$("#myPronounceCarousel").carousel('next');
				$("#myPronounceCarousel").carousel('pause');
			});
		
		});
		</script>
    </head>
    <body>
    	
    	
        <!-- Start #header -->
        <div id="header">
        	
            <div class="container-fluid">
            	<!--navbarDiv-->
                <div class="navbar">
                	
                	<!--系统slogan-->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="">
                            <i class="fa-shopping-cart text-logo-element animated bounceIn"></i><span class="text-logo">Shapp</span><span class="text-slogan">ing</span> 
                        </a>
                    </div>
                    
                    <!--人物头像一栏-->
                    <nav class="top-nav" role="navigation">
                        <ul class="nav navbar-nav pull-right">
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">
                                    	${sessionScope.CURRENT_USER.userName}&nbsp;
                                </a>
                            </li>
                            <li class="dropdown">
                            	<a class="navbar-brand"  href="javascript:void(0)"  onclick="if(confirm('您确定退出系统？')) location.href='login!logout.action';"><i class="en-logout"></i>退出系统</a>
                            </li>
                        </ul>
                    </nav>
                  </div><!--navbarDivENd-->
                </div> <!-- End #container-fluid -->
        </div><!--headerEnd-->
        
        
        
        <!-- Start #sidebar -->
        <div id="sidebar">
            <!-- Start .sidebar-inner -->
            <div class="sidebar-inner">
                <!-- Start #sideNav -->
                <ul id="sideNav" class="nav nav-pills nav-stacked">
                	
                    <li class="top-search">
                        <form>
                            <input type="text" name="search" placeholder="Search ...">
                            <button type="submit"><i class="ec-search s20"></i>
                            </button>
                        </form>
                    </li>
                    
                    <li><a href="#home" data-toggle="tab" >主&nbsp;&nbsp;&nbsp;页 <i class="im-screen"></i></a>
                    </li>
                    
                    <li><a href="#typeManager" data-toggle="tab">类型管理 <i class="br-type"></i></a>
                    </li>
                    
                    <li>
                        <a href="ProductList.action" > 商品管理 <i class="im-paragraph-justify"></i></a>
                    </li>
                    
                    <li><a href="orderList.action"> 订单管理<i class="im-table2"></i></a>
                    </li>
                    
                    <li><a href="findUser.action"> 用户管理 <i class="im-user"></i></a>
                    </li>
                    
                    <li><a href="#email" data-toggle="tab"><i class="br-info"></i> 公司公告</a>
                    </li>
                   
                </ul>
                <!-- End #sideNav -->
        </div>
        <!-- End #sidebar -->
        
       <!--  右边内容 -->
       <div class="container">
        <div id="content">
        
        	<div class="panel panel-primary">
				<!--面板头部-->
			    <div class="panel-heading" style="margin-left: -38px;margin-top:-45px;height:35px ;width:1200px;margin-bottom:0px;">
			        <h4 style="margin-top:10px;">欢迎使用在线购物系统</h4>
			    </div>
			    
			    
			    <!--面板体-->
			    <div class="panel-body" style="height: 540px;margin-left: -38px;width:1150px">
			    	 <!--tab体-->
			    	<div id="myTabContent" class="tab-content">
			    		<!--tab默认界面-->
						<div class="tab-pane fade in active" id="default">
							<img src="../img/WelcomePic.jpg" style="height: 540px;margin-top: -30px;margin-left: -30px;width:1150px"/>
						</div>
						<div class="tab-pane fade" id="home">
							<h3>主页测试界面：暂时没什么内容可做，来凑数</h3>
							<h3>
								实现页面：
								<p>商品管理、用户管理、订单管理、公司公告</p>
							</h3>
						</div>
						
						<div class="tab-pane fade" id="typeManager">
							<h3>类型测试界面：暂时没什么内容可做，来凑数</h3>
							<h3>
								实现页面：
								<p>商品管理、用户管理、订单管理、公司公告</p>
							</h3>
						</div>
						
						<div class="tab-pane fade" id="productManager" >
								<!-- 轮播最外层DiV-->
								<div id="myCarousel" class="carousel slide">
    				
									<!-- 轮播（Carousel）项目 -->
									<div class="carousel-inner">
										<!-- 轮播产品列表 -->
										<div class="item active">
										
											<a  class="btn" style="font-size: 18px;">商品列表</a>|<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">添加商品</a>
											<hr>
											
										</div>
										<!-- 轮播添加产品 -->
										<div class="item">
											
											<a  class="btn" style="font-size: 18px;">添加商品</a>|<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">商品列表</a>
											<hr/>
											
											<form action="saveProduct.action" method="post">
												<div class="form-group">
													<label>名称：</label>
													<input type="text" id="ProductName" name="product.ProductName" placeholder="请输入商品名称" class="form-control" style="width:400px;margin-top: -30px;margin-left: 80px;">
												</div>
												
												<div class="form-group">
													<label for="name">类型：</label>
													<select class="form-control" name="product.ProductType"  style="width:400px;margin-top: -30px;margin-left: 80px;">
														<option>类型1</option>
														<option>类型2</option>
														<option>类型3</option>
														<option>类型4</option>
														<option>类型5</option>
													</select>
												</div>
												
												<div class="form-group">
												    <label for="lastname" class="control-label">数量：</label>
												    <input type="text" name="product.ProductNum" class="form-control" id="lastname" placeholder="请输入商品数量" style="width:400px;margin-top: -30px;margin-left: 80px;">
											    </div>
											    
											    <div class="form-group">
												    <label for="lastname" class="control-label">市场价格：</label>
												    <input type="text" name="product.MarketPrice" class="form-control" id="lastname" placeholder="请输入市场价格" style="width:400px;margin-top: -30px;margin-left: 80px;">
											    </div>
											    
											    <div class="form-group">
												    <label for="lastname" class="control-label">网站价格：</label>
												    <input type="text" name="product.WebPrice" class="form-control" id="lastname" placeholder="请输入网站价格" style="width:400px;margin-top: -30px;margin-left: 80px;">
											    </div>
											    
											    <div class="form-group">
												    <label for="name">描述：</label>
												    <textarea class="form-control" name="product.ProductDec" rows="3" style="width:400px;margin-top: -30px;margin-left: 80px;"></textarea>
											 	</div>
											 	
											 	<div class="form-group">
											 		<label class="control-label">是否上架：</label>
												    <div class="radio" style="width:400px;margin-top: -30px;margin-left: 80px;">
														<label>
															<input type="radio"  name="product.ProductOn" id="optionsRadios1" value="上架" checked><sapn>上架</sapn>
															<input type="radio"  name="product.ProductOn" id="optionsRadios2" value="下架" style="margin-left: 40px;"><sapn style="margin-left: 60px;">下架</sapn>
														</label>
													</div>
											 	</div>
											 	
											 	<div class="form-group">
												    <input type="submit" class="btn btn-primary btn-lg btn-block" style="width:500px;">
											 	</div>
												
											</form>
											
										</div>
									</div>
									
								</div><!-- 公告轮播结束 -->
								
							</div>
							
							<div class="tab-pane fade" id="orderManager">
								订单管理测试界面
							</div>
							<div class="tab-pane fade" id="userManager">
								用户管理测试界面
							</div>
							
							<!-- 公告栏 tab页面-->
							<div class="tab-pane fade" id="email">
							
								<div id="myPronounceCarousel" class="carousel slide">
	    				
									<!-- 轮播（Carousel）项目 -->
									<div class="carousel-inner">
										<!-- 轮播登录 -->
										<div class="item active">
										
											<div class="well well-lg" style="height:500px;overflow-y:scroll;overflow-x:hidden;">
						    					<div class="row">
													<div class="col-lg-12" >
														<h4 style="margin-top:1px;">
															公告板  &nbsp; |<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">留言板</a>
														</h4><hr style="margin-top:1px;  height:1px;border:none;border-top:1px dashed #0066CC;"/>
													</div>
													
													<div class="row">
														<div class="col-lg-12" >
															<ul class="list-group">
																<!-- 公告栏第一行 -->
																<li class="list-group-item">
																	<ul class="media-list">
																		<li class="media">
																			<a class="media-left">
																				<img class="media-object" src="../img/loginShop.gif" alt="图片显示不出的占位符" style="height:100px;width:100px;">
																			</a>
																			<div class="media-body">
																				<h4 class="media-heading">紧急通告(2017年12月31日)</h4>
																				<p>元旦节放假回家敲代码，回来上交。元旦节放假回家敲代码，回来上交。
																				</p>
																			</div>
																		</li>
																	</ul>
																	<span class="badge" style="margin-top: -15px;">必读</span>
																</li>
																<!-- 公告栏第二行 -->
																<li class="list-group-item">
																	免费 Window 空间托管(2017年12月31日)
																</li>
																<!-- 公告栏第三行 -->
																<li class="list-group-item">
																	图像的数量(2017年12月31日)
																</li>
																<!-- 公告栏第四行 -->
																<li class="list-group-item">
																	<span class="badge">新</span>
																	24*7 支持(2017年12月31日)
																</li>
																<!-- 公告栏第五行 -->
																<li class="list-group-item">
																	每年更新成本(2017年12月31日)
																</li>
																<!-- 公告栏第六行 -->
																<li class="list-group-item">
																	折扣优惠(2017年12月31日)
																	<span class="badge" style="position:relative;left:850px;">必读</span>
																</li>
																<!-- 公告栏第七行 -->
																<li class="list-group-item">
																	<ul class="media-list">
																		<li class="media">
																			<a class="media-left">
																				<img class="media-object" src="../img/loginShop.gif" alt="图片显示不出的占位符" style="height:100px;width:100px;">
																			</a>
																			<div class="media-body">
																				<h4 class="media-heading">紧急通告</h4>
																				<p>元旦节放假回家敲代码，回来上交。元旦节放假回家敲代码，回来上交。
																					元旦节放假回家敲代码，回来上交。元旦节放假回家敲代码，回来上交。
																					元旦节放假回家敲代码，回来上交。元旦节放假回家敲代码，回来上交。
																				</p>
																			</div>
																		</li>
																	</ul>
																	<span class="badge" style="margin-top: -15px;">必读</span>
																</li>
															</ul>
														</div>
													</div>
												</div>
												
						    				</div><!--well标签结束-->
										
										</div>
										<!-- 轮播注册 -->
										<div class="item">
											
											<div class="well well-lg" style="height:500px;overflow-y:scroll;">
						    					<div class="row">
													<div class="col-lg-12" >
														<h4 style="margin-top:1px;">
															留言板  &nbsp; |<a  class="btn next-slide" value="Next Slide" style="font-size: 18px;">公告板</a>
														</h4><hr style="margin-top:1px;  height:1px;border:none;border-top:1px dashed #0066CC;"/>
													</div>
												</div>
												
												<h1>时间有限，暂未实现</h1>
												
						    				</div><!--well标签结束-->
											
										</div>
									</div>
								</div>
						 </div><!-- 公告栏 tab结束-->
					</div>
			        
			    </div>
			</div>
        
        </div><!-- content结束 -->
       </div><!--  container结束-->
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!-- Javascripts -->
        <!-- Load pace first -->
        <script src="assets/plugins/core/pace/pace.min.js"></script>
        <!-- Important javascript libs(put in all pages) -->
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script>
        window.jQuery || document.write('<script src="assets/js/libs/jquery-2.1.1.min.js">\x3C/script>')
        </script>
        <script src="assets/js/jquery-ui.js"></script>
        <script>
        window.jQuery || document.write('<script src="assets/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
        </script>
        <!--[if lt IE 9]>
  <script type="text/javascript" src="assets/js/libs/excanvas.min.js"></script>
  <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script type="text/javascript" src="assets/js/libs/respond.min.js"></script>
<![endif]-->
        <!-- Bootstrap plugins -->
        <script src="assets/js/bootstrap/bootstrap.js"></script>
        <!-- Core plugins ( not remove ever) -->
        <!-- Handle responsive view functions -->
        <script src="assets/js/jRespond.min.js"></script>
        <!-- Custom scroll for sidebars,tables and etc. -->
        <script src="assets/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
        <!-- Resize text area in most pages -->
        <script src="assets/plugins/forms/autosize/jquery.autosize.js"></script>
        <!-- Proivde quick search for many widgets -->
        <script src="assets/plugins/core/quicksearch/jquery.quicksearch.js"></script>
        <!-- Bootbox confirm dialog for reset postion on panels -->
        <script src="assets/plugins/ui/bootbox/bootbox.js"></script>
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="assets/plugins/charts/flot/jquery.flot.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.pie.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.resize.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.time.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.growraf.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.categories.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.stack.js"></script>
        <script src="assets/plugins/charts/flot/jquery.flot.tooltip.min.js"></script>
        <script src="assets/plugins/charts/flot/date.js"></script>
        <script src="assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="assets/plugins/forms/icheck/jquery.icheck.js"></script>
        <script src="assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
        <script src="assets/plugins/forms/tinymce/tinymce.min.js"></script>
        <script src="assets/plugins/misc/highlight/highlight.pack.js"></script>
        <script src="assets/plugins/misc/countTo/jquery.countTo.js"></script>
        <script src="assets/plugins/ui/weather/skyicons.js"></script>
        <script src="assets/plugins/ui/notify/jquery.gritter.js"></script>
        <script src="assets/plugins/ui/calendar/fullcalendar.js"></script>
        <script src="assets/js/jquery.sprFlat.js"></script>
        <script src="assets/js/app.js"></script>
        <script src="assets/js/pages/dashboard.js"></script>
    </body>
</html>