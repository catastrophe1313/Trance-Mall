<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>web开发</title>
<style>
	#rank{
		text-align:center;
	}
</style>
<!-- bt框架 -->
<link rel="stylesheet" href="/trance/bootstrap-4.4.1-dist/bootstrap.min.css">
<script src="/trance/bootstrap-4.4.1-dist/jquery-3.0.0.min.js"></script>
<script src="/trance/bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="/trance/bootstrap-4.4.1-dist/bootstrap.min.js"></script>
</head>

<body>
<script>
$(function(){
	$("[id=rank]").click(function(){
		var text = $(this).children().children().next().next().next().html();
		location.href='http://localhost:8080/trance/dealbuy?text='+text+'';
		
	})
})</script>
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
				<h3 class="card-title" id="hot">境外保险</h3>
				<hr>
				<div class="row">
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jw1.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境外工作保险</h3>
								<h4 class="text-danger font-weight-bold">¥691 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jw2.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境外学习保险</h3>
								<h4 class="text-danger font-weight-bold">¥206 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jw3.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">高端境外旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥180 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jw4.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境外旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥45 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top:50px">
			<div class="col">
				<h3 class="card-title" id="hot">境内保险</h3>
				<hr>
				<div class="row">
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jn1.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境内旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥5 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/hw2.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境内高原旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥38 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jn3.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境内节假日旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥88 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/jn4.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">境内自助游旅游保险</h3>
								<h4 class="text-danger font-weight-bold">¥3 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top:50px;margin-bottom:50px">
			<div class="col">
				<h3 class="card-title" id="hot">户外保险</h3>
				<hr>
				<div class="row">
					<div class="col-3">
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/hw2.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">探险驴友旅行保险</h3>
								<h4 class="text-danger font-weight-bold">¥9.9 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="card" id="rank">
							<div class="card-body">
								<img class="card-img-top" src="/trance/img/hw1.jpg"
									alt="Card image cap">
								<br>
								<br>
								<h3 class="card-text">自驾旅行保险</h3>
								<h4 class="text-danger font-weight-bold">¥1.3 /人起</h4>
								<div class=" padding-bottom-2  ml-auto " id="btn1" style="padding:30px 0 0 0">
								<a href="#" class="btn btn-primary ml-3" id="tb">立即投保</a>
							</div>
							</div>
						</div>
					</div>
					<div class="col-3">
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