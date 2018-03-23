<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>菜单</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
		<style type="text/css">
			body {
				background-color: #EFE6D5;
			}
			
			@media(min-width:1231px) {
				.main {
					margin-top: 10px;
					margin-bottom: 10px;
					width: 85%;
				}
			}
			
			@media(max-width:1230px) {
				.main {
					margin-top: 10px;
					margin-bottom: 10px;
					width: 100%;
				}
			}
			
			.tilte {
				border-bottom: 1px solid #DCDCDC;
				margin-bottom: 10px;
				padding-bottom: 10px;
			}
			
			.logo {
				text-align: center;
			}
			
			.logo img {
				width: 60px;
				height: 40px;
			}
			
			.logo span {
				color: brown;
				font-weight: 600;
			}
			
			.titleMenu {
				padding: 0;
				background-color: #B79478;
				border-radius: 14px;
				font-size: 16px;
				height: 35px;
			}
			
			.titleMenu span {
				color: brown;
				line-height: 35px;
				font-weight: 600;
			}
			
			.titleMenu a {
				text-decoration: none;
				line-height: 35px;
				color: white;
			}
			
			.titleMenu a:hover {
				color: #DFDFDF;
			}
			
			.navContent li {
				border-bottom: 1px solid #BCBCBC;
			}
			
			.navContent a {
				color: brown;
				font-size: 16px;
				font-weight: 700;
			}
			
			.navContent span {
				float: right;
			}
			
			.navContent a:hover {
				transform: scale(1.04);
				background-color: #EC971F !important;
			}
			
			.navContent .current a {
				color: white !important;
				background-color: brown !important;
			}
			
			.imgMaxSize {
				width: 165px;
				height: 110px;
			}
			
			.imgContent div[class='media'] {
				border-bottom: 1px solid #BCBCBC;
			}
			
			.imgContent div[class='media']:hover {
				transform: scale(1.02);
			}
			
			.discount {
				background-color: crimson;
				color: white;
				display: inline-block;
				float: right;
				transform: rotateZ(20deg);
				border-bottom: 1px solid #DCDCDC;
				padding: 3px;
				font-size: 12px;
				border-radius: 10px;
			}
			
			.discount label {
				margin-bottom: 0;
			}
			
			.money {
				font-size: 18px;
				font-weight: 800;
				color: orange;
			}
			
			.topMarger {
				margin-top: 8px;
			}
			
			.information {
				background-color: #999999;
				padding: 5px 15px;
				border-radius: 15px;
				text-decoration: none;
				color: white;
				cursor: pointer;
				font-weight: 600;
			}
			
			.operate {
				background-color: #EC971F;
				padding: 5px 15px;
				margin-right: 30px;
				margin-left: 3px;
				border-radius: 15px;
				text-decoration: none;
				color: white;
				cursor: pointer;
				font-weight: 600;
			}
			
			.information:hover,
			.operate:hover {
				text-decoration: none;
			}
			
			.mediaTitle {
				color: brown;
				font-weight: 700;
			}
			
			.pageIndex {
				margin-top: 8px;
				margin-bottom: 5px;
				margin-right: 30px;
			}
			
			.modelContent {
				text-align: center;
			}
			
			.modelContent #modelImg {
				width: 280px;
			}
			
			.modelLine #modelTitle {
				color: brown;
				font-weight: 700;
				display: inline-block;
				font-size: 20px;
			}
			
			.modelLine #modelDiscount {
				background-color: crimson;
				color: white;
				border-bottom: 1px solid #DCDCDC;
				padding: 3px;
				font-size: 10px;
				border-radius: 10px;
			}
			
			.modelLine #modelDiscount label {
				margin-bottom: 0;
			}
			
			.modelContent .modalMoney {
				font-size: 18px;
				font-weight: 800;
				color: orange;
				margin-top: 10px;
			}
			
			.modelNum .modelSub,
			.modelNum .modelAdd {
				background-color: #EC971F;
				padding: 3px 10px;
				color: white;
				font-size: 18px;
				font-weight: bolder;
				border-radius: 10px;
				cursor: pointer;
				border: none;
			}
			
			.modelNum .modelSub:focus,
			.modelNum .modelAdd:focus {
				outline: 0;
			}
		</style>
	</head>

	<body>
		<div class="container main">
			<div class="row tilte">
				<div class="col-xs-3 logo">
					<img src="${pageContext.request.contextPath }/img/20180314022355.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<span>好好吃点餐</span>
				</div>
				<div class="col-xs-6">
					<div class="row titleMenu">
						<div class="col-xs-3 text-center"><span>菜品推介</span></div>
						<div class="col-xs-3">
							<a href="#">人参炖鸡</a>
						</div>
						<div class="col-xs-3">
							<a href="#">鱼善肉丝</a>
						</div>
						<div class="col-xs-3">
							<a href="#">海鲜面条</a>
						</div>
					</div>
				</div>
				<div class="col-xs-3 search center-block">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="搜索菜名" />
						<span class="input-group-btn">
							<button class="btn btn-success" type="button"><span class="glyphicon glyphicon-search"></span></button>
						</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<ul class="nav nav-pills nav-stacked navContent">
						<li class="current">
							<a href="#">招牌菜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">粤&nbsp;&nbsp;菜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">川&nbsp;&nbsp;菜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">湘&nbsp;&nbsp;菜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">鲁&nbsp;&nbsp;菜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">海&nbsp;&nbsp;鲜<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">靓&nbsp;&nbsp;汤<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">饮&nbsp;&nbsp;料<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">点&nbsp;&nbsp;心<span>&gt;</span></a>
						</li>
						<li>
							<a href="#">会员折扣<span>&gt;</span></a>
						</li>
					</ul>
				</div>
				<div class="col-xs-9 imgContent">
					<div class="media">
						<div class="media-left">
							<img class="media-object imgMaxSize" src="${pageContext.request.contextPath }/img/20180314022320.jpg" />
						</div>
						<div class="media-body">
							<div class="row">
								<div class="col-xs-8">
									<h4 class="media-heading mediaTitle">油炸龙虾1</h4></div>
								<div class="col-xs-4"><span class="discount">会员<label>6</label>折</span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-9"><span>口感描述：</span><span class="describe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒1</span></div>
								<div class="col-xs-3 text-center"><span><label class="money">35</label>元/<small>份</small></span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-offset-8 text-right">
									<a href="#" class="information">详情</a>
									<a class="operate" data-toggle="modal" data-target="#operate">点菜</a>
								</div>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img class="media-object imgMaxSize" src="${pageContext.request.contextPath }/img/20180314022350.jpg" />
						</div>
						<div class="media-body">
							<div class="row">
								<div class="col-xs-8">
									<h4 class="media-heading mediaTitle">油炸龙虾2</h4></div>
								<div class="col-xs-4"><span class="discount">会员<label>7</label>折</span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-9"><span>口感描述：</span><span class="describe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒2</span></div>
								<div class="col-xs-3 text-center"><span><label class="money">36</label>元/<small>份</small></span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-offset-8 text-right">
									<a href="#" class="information">详情</a>
									<a class="operate" data-toggle="modal" data-target="#operate">点菜</a>
								</div>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img class="media-object imgMaxSize" src="${pageContext.request.contextPath }/img/20180314022355.jpg" />
						</div>
						<div class="media-body">
							<div class="row">
								<div class="col-xs-8">
									<h4 class="media-heading mediaTitle">油炸龙虾3</h4></div>
								<div class="col-xs-4"><span class="discount">会员<label>8</label>折</span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-9"><span>口感描述：</span><span class="describe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒3</span></div>
								<div class="col-xs-3 text-center"><span><label class="money">37.3</label>元/<small>份</small></span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-offset-8 text-right">
									<a href="#" class="information">详情</a>
									<a class="operate" data-toggle="modal" data-target="#operate">点菜</a>
								</div>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img class="media-object imgMaxSize" src="${pageContext.request.contextPath }/img/20180314022358.jpg" />
						</div>
						<div class="media-body">
							<div class="row">
								<div class="col-xs-8">
									<h4 class="media-heading mediaTitle">油炸龙虾4</h4></div>
								<div class="col-xs-4"><span class="discount">会员<label>9</label>折</span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-9"><span>口感描述：</span><span class="describe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒4</span></div>
								<div class="col-xs-3 text-center"><span><label class="money">38</label>元/<small>份</small></span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-offset-8 text-right">
									<a href="#" class="information">详情</a>
									<a class="operate" data-toggle="modal" data-target="#operate">点菜</a>
								</div>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img class="media-object imgMaxSize" src="${pageContext.request.contextPath }/img/20180314022402.jpg" />
						</div>
						<div class="media-body">
							<div class="row">
								<div class="col-xs-8">
									<h4 class="media-heading mediaTitle">油炸龙虾5</h4></div>
								<div class="col-xs-4"><span class="discount">会员<label>10</label>折</span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-9"><span>口感描述：</span><span class="describe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒5</span></div>
								<div class="col-xs-3 text-center"><span><label class="money">39</label>元/<small>份</small></span></div>
							</div>
							<div class="row topMarger">
								<div class="col-xs-offset-8 text-right">
									<a href="#" class="information">详情</a>
									<a class="operate" data-toggle="modal" data-target="#operate">点菜</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row text-right">
						<ul class="pagination pageIndex">
							<li class="disabled">
								<a href="#">&laquo;</a>
							</li>
							<li class="active">
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">&raquo;</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<script>
			$(function() {
				//记录导航条点击事件
				var navContentLi = $(".navContent li");
				//记录导航条点击事件
				var navIndex = 0;
				navContentLi.click(function() {
					navContentLi.eq(navIndex).removeClass("current");
					navIndex = navContentLi.index($(this));
					$(this).addClass("current");
				});
				//点菜按钮
				var operate = $(".operate");
				//减份数
				var modelSub = $(".modelSub");
				//加份数
				var modelAdd = $(".modelAdd");
				//总金额
				var totalMoney = $("#totalMoney");
				//会员金额
				var totalMemberPrice = $("#totalMemberPrice");
				//菜名
				var modelTitle = "";
				//折扣
				var memberPrice = 0;
				//图片
				var modelImg = "";
				//菜价
				var unitPrice = 0;
				//描述
				var modelDescribe = $("#modelDescribe");
				var result = $("#result");
				var num = 0;
				operate.click(function() {
					//记录下标
					var index = operate.index($(this));
					//菜名
					modelTitle = $(".mediaTitle").eq(index).text();
					$("#modelTitle").text(modelTitle);
					//计算折扣
					memberPrice = parseFloat($(".discount").eq(index).find("label").text());
					$("#memberPrice").text(memberPrice);
					memberPrice = memberPrice / 10;
					//图片路径
					modelImg = $(".imgMaxSize").eq(index).attr("src");
					$("#modelImg").attr("src", modelImg);
					//菜价
					unitPrice = parseFloat($(".money").eq(index).text());
					$("#unitPrice").text(unitPrice);
					//描述
					modelDescribe.text($(".describe").eq(index).text());
					num = 1;
					result.text(num);
					totalMoney.text(num * unitPrice);
					totalMemberPrice.text(parseFloat(totalMoney.text()) * memberPrice);
				});
				modelSub.click(function() {
					if(num == 1) {
						return;
					}
					num -= 1;
					result.text(num);
					totalMoney.text((num * unitPrice).toFixed(2));
					totalMemberPrice.text((parseFloat(totalMoney.text()) * memberPrice).toFixed(2));
				});
				modelAdd.click(function() {
					num += 1;
					result.text(num);
					totalMoney.text((num * unitPrice).toFixed(2));
					totalMemberPrice.text((parseFloat(totalMoney.text()) * memberPrice).toFixed(2));
				});

			});
		</script>
		<div class="modal fade" id="operate" tabindex="-1" role="dialog" aria-labelledby="operateLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<span>点菜总金额：<label id="totalMoney">0</label>元&nbsp;&nbsp;会员总价：<label id="totalMemberPrice">0</label>元</span>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
					</div>
					<div class="modal-body">
						<div class="modelContent">
							<div class="modelLine">
								<h4 id="modelTitle">油炸龙虾</h4>&nbsp;&nbsp;
								<span id="modelDiscount">会员<label id="memberPrice">9</label>折</span>
							</div>
							<img id="modelImg" src="" />
							<div class="modalMoney"><label id="unitPrice">35</label>元/<small>份</small></div>
							<h5><span>口感描述：</span><span id="modelDescribe">法国德菲丝松露精品巧克力500g/盒，法国德菲丝松露精品巧克力500g/盒</span></h5>
							<div class="modelNum">
								<button class="modelSub">&nbsp;&minus;&nbsp;</button> &nbsp;
								<label id="result">1</label>&nbsp;
								<button class="modelAdd">&nbsp;+&nbsp;</button>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div>
							<button type="button" class="btn btn-warning">加入我的菜单</button>&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-warning" data-dismiss="modal" aria-hidden="true">取&nbsp;消</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>

</html>