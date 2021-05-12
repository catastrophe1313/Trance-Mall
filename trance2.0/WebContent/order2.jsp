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

	<div class="container">
		<!-- 导航栏 -->
		<%@ include file="format/nav.jsp"%>
		<br>
		<div class="row" style="margin-top: 10px">
			<!-- 左边栏 -->

			<%@ include file="format/luser.jsp"%>


			<!-- 中间内容 -->
			<div class="col-md">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">

					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">1个月以内订单</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">3个月以内订单</a> <a
								class="dropdown-item" href="#">1年以内订单</a> <a
								class="dropdown-item" href="#">1年以上订单</a>
						</div>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a class="" href="#">绑定新订单</a>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a class="" href="#">刷新</a>

					</div>
					<form class="form-inline  " id="sear" style="padding: 0 0 0 333px">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</nav>
				<br>
				<div class="row text-center mx-1 my-3">
					<div class="col-3 ">投保单内容</div>
					<div class="col-2 ">金额（元）</div>
					<div class="col-1 ">状态</div>
					<div class="col-2 ">生成日期</div>
					<div class="col-2 ">订单来源</div>
					<div class="col-2 ">操作</div>
				</div>
				<div class="row text-center mx-1 my-3">
					<div class="col-3 ">欧洲旅游保险</div>
					<div class="col-2 ">98</div>
					<div class="col-1 ">承保中</div>
					<div class="col-2 ">2020-04-05</div>
					<div class="col-2 ">境外旅行</div>
					<div class="col-2 ">退保</div>
				</div>
				<div class="row text-center mx-1 my-3">
					<div class="col-3 ">探险旅游旅行保险</div>
					<div class="col-2 ">59</div>
					<div class="col-1 ">承保中</div>
					<div class="col-2 ">2020-02-05</div>
					<div class="col-2 ">户外运动</div>
					<div class="col-2 ">退保</div>
				</div>
				<div class="row text-center mx-1 my-3">
					<div class="col-3 ">境内高原游保险</div>
					<div class="col-2 ">28</div>
					<div class="col-1 ">承保中</div>
					<div class="col-2 ">2019-05-05</div>
					<div class="col-2 ">境内旅行</div>
					<div class="col-2 ">退保</div>
				</div>


			</div>

			<!-- 右边栏 -->

		</div>
	</div>

</body>
</html>