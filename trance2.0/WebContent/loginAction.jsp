<%@ page import="anxing.Servlet01"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap-4.4.1-dist/bootstrap.min.css">
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.min.js"></script>
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="bootstrap-4.4.1-dist/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <blockquote class="blockquote text-center">
<h1>登录</h1>
<hr>

<%

//获取用户名
String username = request.getParameter("username");

String jym = request.getParameter("jym");

out.print("<p>你提交的用户名为："+username+"</p>");
//out.print("<p>你提交的验证码为："+jym+"</p>");
out.print("<p>输入错误，请重新<a href='login.jsp'>登录</a></p>");

%>
  </blockquote>
</div>
</body>
</html>