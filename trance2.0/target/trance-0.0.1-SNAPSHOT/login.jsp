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
			
		<div class="row" style="margin-top:10px">
			<!-- 左边栏 -->
			
			
			<!-- 中间内容 -->
			<div class="col-md">
				<div class="card w-50 mx-auto">
					<h5 class="card-header">用户登录</h5>
					<div class="card-body">
						<!-- 登录表单 -->
						<form method="post" action="Login">
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label">用户名</label>
								<div class="col-sm-10">
									<input type="text" name="username" class="form-control"  
										placeholder="用户名">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
								<div class="col-sm-10">
									<input type="password" name="password" class="form-control"  
										placeholder="Password">
								</div>
							</div>
							
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label">校验码</label>
								<div class="col-sm-2">
									<img src="ResponseImage" style="margin-top:6px" />
								</div>
								<div class="col-sm-4">
									<input type="text" name="jym" class="form-control" id="inputEmail3"
										placeholder="校验码">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-outline-primary">登录</button>
									<a href="reg.html" class="btn btn-outline-primary ml-5">没有账户？前往注册</a>
									<a href="index0.jsp" class="btn btn-outline-primary ml-5">返回</a>
								</div>
							</div>
							
						</form>
						<p style="color:red">${info}</p>
					</div>
				</div>
			</div>

			<!-- 右边栏 -->
			
		</div>
	</div>

</body>
</html>