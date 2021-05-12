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
				<h5>登录账号</h5>
				<hr>
				<ul  style="font-size:12px;">
                        <li class="list-group-item">手机号码：${tel}</li>
                        <li class="list-group-item">用户名：${username}</li>
                    </ul>
                    <a href="UserInfo?username=${username}"><h5>个人资料</h5></a>
                    <hr>
                    
                    <c:forEach items="${users}" var="item">
                    <ul  style="font-size:12px; ">
                        <li class="list-group-item">用户编码： 800494465914</li>
                        <li class="list-group-item">真实姓名：${item.realname}</li>
                        <li class="list-group-item">证件类型：${item.idtype}</li>
                        <li class="list-group-item">证件号码：${item.idnum}</li>
                        <li class="list-group-item">性别：${item.sex}</li>
                        <li class="list-group-item">常住城市：${item.city}</li>
                    </ul>
                    </c:forEach>
                    
			</div>
			<div class="col-1">
			</div>

			<!-- 右边栏 -->

		</div>
	</div>

</body>
</html>