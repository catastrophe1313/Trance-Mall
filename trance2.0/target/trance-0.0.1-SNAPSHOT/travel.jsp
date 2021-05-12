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
		<%@ include file="format/nav.jsp"%>
		<div class="row">
		<div class="col-1">
		</div>
		<div class="col-10">
			<!-- 左边栏 -->
<div class="row" style="margin-top:80px">
			<div class="col">
				<h3 class="card-title" id="hot">国内目的地</h3>
				<hr>
				<div class="row">
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/sanya.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">三亚5日自由行(5钻)</p>
								<h4 class="text-danger font-weight-bold">¥1803 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p2260194/?city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/beijing.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">北京5日自由行(5钻)</p>
								<h4 class="text-danger font-weight-bold">¥2175 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p5091498/?city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/lijiang.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">丽江+大理6日自由行</p>
								<h4 class="text-danger font-weight-bold">¥2055 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p3422942/?city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top:50px">
			<div class="col">
				<h3 class="card-title" id="hot">国外目的地</h3>
				<hr>
				<div class="row">
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/swiss.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">瑞士苏黎世+卢塞恩+因特拉肯+日内瓦自由行</p>
								<h4 class="text-danger font-weight-bold">¥20409 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p1748670/?city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/usa.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">美国纽约+尼亚加拉瀑布9日7晚自由行</p>
								<h4 class="text-danger font-weight-bold">¥66754 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p18001816/?city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/japan.jpg"
									alt="Card image cap">
								<br>
								<br>
								<p class="card-text">日本北海道2-15日自由行</p>
								<h4 class="text-danger font-weight-bold">¥7766 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:50px 0 0 0">
								<a href="https://vacations.ctrip.com/travel/detail/p5986036/?imageid=30080157&city=17" class="btn btn-primary ml-3">去看看</a>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		

			<!-- 中间内容 -->
			</div>
		<div class="col-1">
		</div>
	</div>
	</div>

</body>
</html>