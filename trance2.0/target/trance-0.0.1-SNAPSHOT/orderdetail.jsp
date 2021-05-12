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
				<h5>订单详情</h5>
				<hr>
                    
                    <ul  style="font-size:12px; ">
                    <c:forEach items="${order}" var="item">
                        <li class="list-group-item">订单号： ${item.orderid}</li>
                        <li class="list-group-item">订单名：${item.ordername}</li>
                        <li class="list-group-item">价格：${item.price}</li>
                        <li class="list-group-item">状态：${item.status}</li>
                        <li class="list-group-item">生成时间：${item.date}</li>
                        </c:forEach>
                         <c:forEach items="${orderde}" var="item">
                        <li class="list-group-item">前往国家：${item.country}</li>
                        <li class="list-group-item">前往城市：${item.city}</li>
                        <li class="list-group-item">旅行类别：${item.type}</li>
                        <li class="list-group-item">起止时间：${item.fromdate}-${item.todate}</li>
                        </c:forEach>
                        <c:forEach items="${ins}" var="item">
                        <li class="list-group-item">被投保人姓名：${item.name}</li>
                        <li class="list-group-item">被投保人拼音：${item.pingyin}</li>
                        <li class="list-group-item">与投保人关系：${item.relation}</li>
                        </c:forEach>
                    </ul>
                    
                    
			</div>
			<div class="col-1">
			</div>

			<!-- 右边栏 -->

		</div>
	</div>

</body>
</html>