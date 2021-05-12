<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="#">安行</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active" style="margin:0 0 0 150px;"><a class="nav-link" href="index.jsp">首页
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item" style="margin:0 0 0 150px;"><a class="nav-link" href="buy.jsp">保险投保</a></li>
			<li class="nav-item" style="margin:0 0 0 150px;"><a class="nav-link " href="travel.jsp">旅行报名</a>
			</li>
		
		</ul>
		<ul class="navbar-nav mr-2">
      <li class="nav-item dropdown" style="margin:0 100px 0 0;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 用户 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="info.jsp">用户资料</a> 
					<a class="dropdown-item" href="search">我的订单</a>
					<!--div class="dropdown-divider"--><!--/div-->
					<a class="dropdown-item" href="index0.jsp">退出登录</a>
				</div></li>
    </ul>
	</div>
</nav>