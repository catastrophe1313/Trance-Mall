<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<br>
		<div class="row" style="margin-top: 10px">
			<!-- 左边栏 -->

			
				<div class="col-1">
		</div>
		<%@ include file="format/luser.jsp"%>
			<!-- 中间内容 -->
			<div class="col-9">						
				<h5>订单信息</h5>
				<hr>
				<table class="table table-bordered" style="text-align:center;">
							<thead>
								<tr>
									<th scope="col">订单号</th>
									<th scope="col">订单名</th>
									<th scope="col">价格</th>
									<th scope="col">状态</th>
									<th scope="col">生成时间</th>
									<th scope="col" width="10%">操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${order}" var="item"> 
								<tr>
									<th scope="row" name='id'>${item.orderid}</th>
									<td>${item.ordername}</td>
									<td>${item.price}</td>
									<td>${item.status}</td>
									<td>${item.date}</td>
									<td><a type="button" href="searchdetail?id=${item.orderid}" class="btn btn-dark">详情</a></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
			</div>
			<div class="col-1">
			</div>

			<!-- 右边栏 -->

		</div>
	</div>

</body>
</html>