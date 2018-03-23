<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="screen-orientation" content="portrait">
		<title>点餐系统首页</title>
		<script type="text/javascript">
			document.onreadystatechange = function() {
				//获取屏幕的高度
				var winHeight = document.documentElement.clientHeight;
				//获取.top
				var topHeight = document.getElementsByClassName("top");
				//获取.body
				var bodyHeight = document.getElementsByClassName("body");
				//设置.body的高度
				bodyHeight[0].style.height = (winHeight - topHeight[0].clientHeight - winHeight * 0.03) + "px";
				//设置.head高度
				var head = document.getElementsByClassName("head")[0];
				var headImg = head.getElementsByTagName("img");
				for(var i = 0; i < headImg.length; i++) {
					headImg[i].style.height = Math.ceil(head.clientHeight) + "px";
					headImg[i].style.width = Math.ceil(head.clientWidth) + "px";
				}
				//图片弹动
				var animation_img = document.getElementsByClassName("animation_img");
				var num=0;
				window.setInterval(function() {
					animation_img[num%animation_img.length].style.display="none";
					animation_img[num%animation_img.length].className="animation_img";
					animation_img[(num+1)%animation_img.length].style.display="block";
					animation_img[(num+1)%animation_img.length].className="animation_img animated bounceIn";
					num++;
				}, 3000);
			}
		</script>
		<style type="text/css">
			* {
				padding: 0;
				margin: 0;
			}
			
			body {
				padding: 1%;
				background-color: #EFE6D5;
			}
			
			.content {
				font-size: 1rem;
				height: 100%;
				width: 100%;
			}
			
			.top {
				padding: 4% 1%;
			}
			
			.top .topLeft {
				float: left;
			}
			
			.top .topRight {
				float: right;
			}
			
			.clear {
				clear: both;
			}
			
			.body {
				width: 100%;
			}
			
			.head {
				position: relative;
				width: 100%;
				height: 44%;
			}
			
			.head a {
				position: absolute;
			}
			
			.middle {
				padding-top: 1%;
				padding-bottom: 2%;
				height: 33%;
			}
			
			.middle>a>img {
				width: 100%;
				height: 50%;
			}
			
			.middle>div {
				width: 100%;
				height: 50%;
			}
			
			.middle>div #waiter {
				height: 100%;
				width: 66.5%;
				float: left;
			}
			
			.middle>div #weChat {
				height: 100%;
				width: 33.5%;
				float: right;
			}
			
			.bottom {
				height: 20%;
			}
			
			.bottom img {
				width: 33.3%;
				float: left;
				height: 100%;
			}
			.animated {
				-webkit-animation-duration: 1s;
				animation-duration: 1s;
				-webkit-animation-fill-mode: both;
				animation-fill-mode: both;
				z-index: 100
			}
			@-webkit-keyframes bounceIn {
				0% {
					opacity: 0;
					-webkit-transform: scale(.3);
					transform: scale(.3)
				}
				50% {
					opacity: 1;
					-webkit-transform: scale(1.05);
					transform: scale(1.05)
				}
				70% {
					-webkit-transform: scale(.9);
					transform: scale(.9)
				}
				100% {
					opacity: 1;
					-webkit-transform: scale(1);
					transform: scale(1)
				}
			}
			
			@keyframes bounceIn {
				0% {
					opacity: 0;
					-webkit-transform: scale(.3);
					-ms-transform: scale(.3);
					transform: scale(.3)
				}
				50% {
					opacity: 1;
					-webkit-transform: scale(1.05);
					-ms-transform: scale(1.05);
					transform: scale(1.05)
				}
				70% {
					-webkit-transform: scale(.9);
					-ms-transform: scale(.9);
					transform: scale(.9)
				}
				100% {
					opacity: 1;
					-webkit-transform: scale(1);
					-ms-transform: scale(1);
					transform: scale(1)
				}
			}
			
			.bounceIn {
				-webkit-animation-name: bounceIn;
				animation-name: bounceIn
			}
		</style>
	</head>

	<body>
		<div>
			<div class="content">
				<div class="top">
					<span class="topLeft">LOGO</span>
					<span class="topRight">订餐号码：<a href="tel:18316639432">18316639432</a></span>
					<div class="clear"></div>
				</div>
				<div class="body">
					<div class="head">
						<a href="#">
							<img class="animation_img" alt="营养小贴士" src="../img/shuiguopinpan1.jpg" style="display: block;"/>
						</a>
						<a href="#">
							<img class="animation_img" alt="图片" src="../img/shuiguoshala1.jpg"  style="display: none;"/>
						</a>
						<a href="#">
							<img class="animation_img" alt="图片" src="../img/honshaopaigu1.jpg"  style="display: none;"/>
						</a>
						<a href="#">
							<img class="animation_img" alt="图片" src="../img/qingtanghonguo1.jpg"  style="display: none;"/>
						</a>
					</div>
					<div class="middle">
						<a href="menu.jsp">
							<img alt="开始点餐" src="../img/kaishidiancan1.jpg" />
						</a>
						<div>
							<a href="#">
								<img alt="服务员呼叫" src="../img/fuwuyuanhujiao1.jpg" id="waiter" />
							</a>
							<a href="#">
								<img alt="微信二维码" src="../img/weixinerweima1.jpg" id="weChat" />
							</a>
							<div class="clear"></div>
						</div>
					</div>
					<div class="bottom">
						<a href="#">
							<img alt="菜谱更新" src="../img/caipugengxin1.jpg" />
						</a>
						<a href="#">
							<img alt="餐厅介绍" src="../img/cantingjieshao1.jpg" />
						</a>
						<a href="#">
							<img alt="订单信息" src="../img/dingdanxinxi1.jpg" />
						</a>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>