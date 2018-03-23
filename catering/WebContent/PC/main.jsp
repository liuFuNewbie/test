<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>点餐系统首页</title>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../css/animate.min.css" />
		<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		<style type="text/css">
			body {
				background-color: #EFE6D5;
			}
			
			@media(min-width:1241px) {
				.content {
					width: 85%;
				}
			}
			@media(max-width:1240px) {
				.content {
					width: 98%;
				}
			}
			
			.function_left {
				width: 50%;
				padding-right: 0px;
			}
			
			.function_left img {
				width: 100%;
			}
			
			.function_right {
				width: 50%;
			}
			
			.function_right img {
				width: 100%;
			}
			
			.function_right .order {
				width: 97.5%;
				height: 2%;
			}
			
			.function_right .centre {
				width: 97.5%;
				margin-top: 0.6%;
			}
			
			.function_right .centre .serve {
				width: 65.9%;
				float: left;
			}
			
			.function_right .centre .weChatQRcode {
				width: 33.3%;
				float: right;
			}
			
			.function_right .below {
				width: 97.5%;
				margin-top: 0.6%;
			}
			
			.function_right .below .left {
				float: left;
				width: 66%;
			}
			
			.function_right .below .right {
				float: right;
				width: 33.3%;
			}
			
			.function_right .below .update {
				float: left;
				width: 49.5%;
			}
			
			.function_right .below .introduce {
				float: right;
				width: 49.5%;
			}
			.function img:hover{
				transform: scale(1.03);
			}
		</style>
	</head>

	<body>
		<div class="container content">
			<!--显示logo和系统时间-开始-->
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">LOGO</div>
			</div>
			<br />
			<!--显示logo和系统时间-结束-->

			<!--显示功能模块-开始-->
			<div class="row function">
				<!--营养小贴士-->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 function_left">
					<a href="#">
						<img id="animation_img1" alt="营养小贴士" data-animation="bounceIn" src="../img/shuiguopinpan1.jpg" />
					</a>
					<a href="#">
						<img id="animation_img2" style="display: none;" data-animation="bounceIn" alt="图片" src="../img/shuiguoshala1.jpg" />
					</a>
					<a href="#">
						<img id="animation_img3" style="display: none;" data-animation="bounceIn" alt="图片" src="../img/honshaopaigu1.jpg" />
					</a>
					<a href="#">
						<img id="animation_img4" style="display: none;" data-animation="bounceIn" alt="图片" src="../img/qingtanghonguo1.jpg" />
					</a>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 function_right">
					<!--开始点餐-->
					<div class="row">
						<div class="order">
							<a href="menu.jsp">
								<img alt="开始点餐" src="../img/kaishidiancan1.jpg" />
							</a>
						</div>
					</div>
					<div class="row">
						<div class="centre">
							<!--服务员呼叫-->
							<div class="serve">
								<a href="#">
									<img alt="服务员呼叫" src="../img/fuwuyuanhujiao1.jpg" />
								</a>
							</div>
							<!--微信点餐-->
							<div class="weChatQRcode">
								<a href="#">
									<img alt="微信二维码" src="../img/weixinerweima1.jpg" />
								</a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="below">
							<div class="left">
								<!--菜谱更新-->
								<div class="update">
									<a href="#">
										<img alt="菜谱更新" src="../img/caipugengxin1.jpg" />
									</a>
								</div>
								<!--餐厅介绍-->
								<div class="introduce">
									<a href="#">
										<img alt="餐厅介绍" src="../img/cantingjieshao1.jpg" />
									</a>
								</div>
							</div>
							<!--订单信息-->
							<div class="right">
								<a href="#">
									<img alt="订单信息" src="../img/dingdanxinxi1.jpg" />
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--显示功能模块-结束-->
			<br />
			<!--显示订餐电话-开始-->
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">123</div>
			</div>
			<!--显示订餐电话-结束-->
		</div>

		<script>
			$(document).ready(function() {
				//计算body的高
				var bodyHeight = document.documentElement.clientHeight;
				//获取.content
				var content=$(".content");
				content.attr("style","margin-top:"+((bodyHeight-content[0].clientHeight)*0.4)+"px");
				<!--营养小贴士动画轮播开始-->
				var num = 0;

				function show1() {
					if(num == 0) {
						$("#animation_img1").css("display", "none");
						$("#animation_img2").css("display", "block");
						$("#animation_img2").removeAttr("class").attr("class", "");
						var animation1 = $("#animation_img2").attr("data-animation");
						$("#animation_img2").addClass("animated");
						$("#animation_img2").addClass(animation1);
						num = num + 1;
					} else if(num == 1) {
						$("#animation_img2").css("display", "none");
						$("#animation_img3").css("display", "block");
						$("#animation_img3").removeAttr("class").attr("class", "");
						var animation1 = $("#animation_img3").attr("data-animation");
						$("#animation_img3").addClass("animated");
						$("#animation_img3").addClass(animation1);
						num = num + 1;
					} else if(num == 2) {
						$("#animation_img3").css("display", "none");
						$("#animation_img4").css("display", "block");
						$("#animation_img4").removeAttr("class").attr("class", "");
						var animation1 = $("#animation_img4").attr("data-animation");
						$("#animation_img4").addClass("animated");
						$("#animation_img4").addClass(animation1);
						num = num + 1;
					} else if(num == 3) {
						$("#animation_img4").css("display", "none");
						$("#animation_img1").css("display", "block");
						$("#animation_img1").removeAttr("class").attr("class", "");
						var animation1 = $("#animation_img1").attr("data-animation");
						$("#animation_img1").addClass("animated");
						$("#animation_img1").addClass(animation1);
						num = 0;
					}
				};
				setInterval(show1, 3000);
				<!--营养小贴士动画轮播结束-->
			})
		</script>
	</body>

</html>