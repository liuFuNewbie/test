<!--<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>点餐页面</title>
		<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				list-style-type: none;
			}
			
			body {
				background-color: #EFE6D5;
			}
			
			.content {
				font-size: 1rem;
			}
			
			.top {
				padding: 1.8% 0
			}
			
			.top img {
				width: 16%;
				height: 80%;
				border-radius: 20%;
				margin-left: 2%;
				vertical-align: middle;
			}
			
			.body {
				margin: 0;
				padding: 0;
				width: 100%;
			}
			
			.left {
				width: 25%;
				height: 100%;
				float: left;
				overflow: auto;
				background: rgba(240, 235, 235, .5);
			}
			
			.left ul {
				height: 100%;
			}
			
			.left ul li {
				height: 8%;
				line-height: 300%;
				text-align: center;
			}
			
			.left ul li a {
				color: #778899;
				text-decoration: none;
			}
			
			.right {
				float: right;
				width: 75%;
				height: 100%;
				overflow: auto;
				background: rgba(253, 250, 250, .8);
			}
			
			.right-con {
				margin-left: 5%;
			}
			
			.right-con h5 {
				color: rgba(246, 63, 63, 1);
			}
			
			.right-con ul li {
				margin: 10px 0;
			}
			
			.right-con ul li dt {
				width: 35%;
				height: 100%;
				float: left;
			}
			
			.clear {
				clear: both;
			}
			
			.right-con ul li img {
				width: 100%;
				border-radius: 5%;
			}
			
			.right-con dl {
				position: relative;
			}
			
			.right-con dd .sells {
				font-size: .8rem;
			}
			
			.right-con font {
				font-size: .9rem;
			}
			
			.right-con dd .price {
				line-height: 170%;
				color: rgba(246, 63, 63, 1);
			}
			
			.right-con dd span {
				margin-left: 2%;
			}
			
			.right-con .addend {
				float: right;
				margin-right: 8%;
			}
			
			.right-con .addend img {
				width: 25px;
				height: 25px;
				vertical-align: middle;
			}
			
			.addend .jian {
				display: none;
			}
			
			.addend label {
				display: none;
			}
			
			.discount {
				background-color: crimson;
				color: white;
				display: inline-block;
				float: right;
				transform: rotateZ(15deg);
				padding: 1%;
				font-size: 0.4rem;
				border-radius: 25%;
				margin-right: 4%;
			}
			
			.nav_visited {
				background-color: white;
			}
			
			.nav_visited>a {
				color: rgba(246, 63, 63, 1) !important;
			}
		</style>
		<script type="text/javascript">
			window.onload = function() {
				//获取屏高度
				var winHeight = document.documentElement.clientHeight;
				//获取.top
				var topHeight = document.getElementsByClassName("top")[0];
				//获取.body
				var bodyHeight = document.getElementsByClassName("body")[0];
				//设置高度
				bodyHeight.style.height = (winHeight - topHeight.clientHeight)*0.9 + "px";
				//导航条
				var navLi = document.getElementsByClassName("left")[0].getElementsByTagName("li");
				var navPre = 0;
				for(var i = 0; i < navLi.length; i++) {
					navLi[i].index = i;
					navLi[i].onclick = function() {
						navLi[navPre].classList.remove("nav_visited");
						navLi[this.index].classList.add("nav_visited");
						navPre = this.index;
					}
				}
				//滑动事件
				var rightContent = document.getElementsByClassName("right")[0];
				var sign = document.getElementsByClassName("sign");
				var direction = 0;
				rightContent.onscroll = function() {
					if(direction < rightContent.scrollTop) {
						if(topHeight.clientHeight > sign[navPre + 1].offsetTop - rightContent.scrollTop) {
							navLi[navPre].classList.remove("nav_visited");
							navLi[navPre + 1].classList.add("nav_visited");
							navPre = navPre + 1;
						}
					} else {
						if(navPre!=0&&topHeight.clientHeight < sign[navPre].offsetTop - rightContent.scrollTop) {
							navLi[navPre].classList.remove("nav_visited");
							navLi[navPre - 1].classList.add("nav_visited");
							navPre = navPre - 1;
						}
					}
					direction=rightContent.scrollTop;
				}
				//减
				var text = 0;
				var element = null;
				var jian = document.getElementsByClassName("jian");
				for(var i = 0; i < jian.length; i++) {
					jian[i].index = i;
					jian[i].onclick = function() {
						element = jian[this.index].nextElementSibling;
						text = parseInt(element.innerText) - 1;
						if(text <= 0) {
							jian[this.index].style.display = "none";
							element.style.display = "none";
						}
						element.innerHTML = text;
					}
				}
				//加法
				var jia = document.getElementsByClassName("jia");
				for(var i = 0; i < jia.length; i++) {
					jia[i].index = i;
					jia[i].onclick = function() {
						element = jia[this.index].previousElementSibling;
						text = parseInt(element.innerText) + 1;
						if(text == 1) {
							jian[this.index].style.display = "inline-block";
							element.style.display = "inline-block";
						}
						element.innerHTML = text;
					}
				}
			}
		</script>
	</head>

	<body>
		<div class="content">
			<div class="top">
				<img src="../img/20180314022355.jpg" />&nbsp;&nbsp;好好吃点餐
			</div>
			<div class="body">
				<div class="left">
					<ul>
						<li class="nav_visited">
							<a href="#specialty">招牌菜</a>
						</li>
						<li>
							<a href="#yuecuisine">粤菜</a>
						</li>
						<li>
							<a href="#chuancuisine">川菜</a>
						</li>
						<li>
							<a href="#xiangcuisine">湘菜</a>
						</li>
						<li>
							<a href="#lucuisine">鲁菜</a>
						</li>
						<li>
							<a href="#seafood">海鲜</a>
						</li>
						<li>
							<a href="#soup ">靓汤</a>
						</li>
						<li>
							<a href="#drink">饮料</a>
						</li>
						<li>
							<a href="#pastry">点心</a>
						</li>
					</ul>
				</div>
				<div class="right">
					<div class="right-con">
						<ul class="sign">
							<h5 id="specialty">招牌菜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="yuecuisine">粤菜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="chuancuisine">川菜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="xiangcuisine">湘菜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="lucuisine">鲁菜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="seafood">海鲜</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="soup">靓汤</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="drink">饮料</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
						<ul class="sign">
							<h5 id="pastry">点心</h5>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
							<li>
								<dl>
									<dt><img src="../img/yuecaixianyuqieguabao.jpg"/></dt>
									<dd><span>粤菜咸鱼茄瓜煲</span></dd>
									<dd><span class="price"><font>￥</font><label>35</label></span><span class="discount">会员<label>10</label>折</span></dd>
									<dd class="addend">
										<img src="../img/subtract.png" class="jian" />&nbsp;
										<label>0</label>&nbsp;
										<img src="../img/add.png" class="jia" />
									</dd>
								</dl>
								<div class="clear"></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="bottom">
				
			</div>
		</div>
	</body>

</html>