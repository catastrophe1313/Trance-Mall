<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>web开发</title>
<!-- bt框架 -->
<link rel="stylesheet" href="bootstrap-4.4.1-dist/bootstrap.min.css">
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.min.js"></script>
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="bootstrap-4.4.1-dist/bootstrap.min.js"></script>
</head>
<body>

	<div class="container-fluid">
		<!-- 导航栏 -->
		<%@ include file="format/nav0.jsp"%>
		<div class="row">
		<div class="col-1">
		</div>
		<div class="col-10">
		<div class="row" style="margin-top: 10px">
			<!-- 左边栏 -->


			<!-- 中间内容 -->
			<div class="col-md">
			    <!-- 首页介绍？ -->
				<div class="jumbotron">
					<h1 class="display-4">安行</h1>
					<p class="lead">做关键时刻能救命的好保险</p>
					<hr class="my-4">

				</div>
				
				<!-- 轮播图 -->
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="img/1.png" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="img/2.png" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="img/3.png" alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

				<!-- 推荐旅游险 -->
				<div class="card-deck">
					<div class="card border-0 mb-3 mt-3">
						<div class="card-body border d-flex justify-content-start">
							<img src="img/lv1.png" alt="" class="mr-2"
								style="width: 220px; height: 220px;">
							<div class="align-self-center">
								<div>
									<h5 class="card-title">境外旅游险</h5>
									<p class="card-text">承保年龄：0-80周岁</p>
									<p class="card-text">保障期限：自由定制：1天起</p>
									<p class="card-text">产品特色:境内外适用 最高保额40万元</p>
									<p class="card-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp天数自选 1天1元 超值性价比</p>
									<h4 class="text-danger font-weight-bold">￥45起</h4>
								</div>
							</div>
							<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:190px 0 0 0">
								<a href="#" class="btn btn-primary ml-3">立即投保</a>
							</div>
						</div>
						<br>
						<div class="card-body border d-flex justify-content-start">
							<img src="img/lv2.png" alt="" class="mr-2"
								style="width: 200px; height: 200px;">
							<div class="align-self-center">
								<div>
									<h5 class="card-title">探险驴友旅行保险</h5>
									<p class="card-text">承保年龄：10-65周岁</p>
									<p class="card-text">保障期限：3天|7天|10天|15天</p>
									<p class="card-text">产品特色:高风险运动 野外探险 自驾车</p>
									<h4 class="text-danger font-weight-bold">￥9.9起</h4>
									
								</div>
							</div>
							<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:160px 0 0 0">
								<a href="#" class="btn btn-primary ml-3">立即投保</a>
							</div>
						</div>
						
						<br>
						<div class="card-body border d-flex justify-content-start">
							<img src="img/lv3.png" alt="" class="mr-2"
								style="width: 220px; height: 220px;">
							<div class="align-self-center">
								<div>
									<h5 class="card-title">境内旅行险</h5>
									<p class="card-text">承保年龄：30天至80周岁</p>
									<p class="card-text">保障期限：1天—30天</p>
									<p class="card-text">产品特色:性价比No.1 海陆空交通意外皆可保 涵盖风险运动</p>
									<p class="card-text">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp天数自选 1天1元 超值性价比</p>
									<h4 class="text-danger font-weight-bold">￥5起</h4>
								</div>
							</div>
							<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:190px 0 0 0">
								<a href="#" class="btn btn-primary ml-3">立即投保</a>
							</div>
						</div>
					</div>

				</div>
				<br>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1">上一页</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">下一页</a></li>
					</ul>
				</nav>

			</div>

			<!-- 右边栏 -->

		</div>
		</div>
		<div class="col-1">
		</div>
	</div>
	</div>

</body>
</html>