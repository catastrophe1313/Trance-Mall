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
		<br>
		<div class="row" style="margin-top: 10px">
			<!-- 左边栏 -->
<div class="col-1">
		</div>
			<%@ include file="format/luser.jsp"%>


			<!-- 中间内容 -->
			<div class="col-9">
				<h5>信息修改</h5>
				<hr>
				<form action="infoedit" method="post">
				<div class="form-group row">
                        <label for="realname" class="col-sm-3 col-form-label">用户名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="username" id="realname"
                                placeholder="${username}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="realname" class="col-sm-3 col-form-label">真实姓名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="realname" id="realname"
                                placeholder="请输入真实姓名">
                        </div>
                    </div>
                    <div class="form-group row">
                            <label for="idtype" class="col-sm-3 col-form-label">证件类型</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="idtype" name="idtype">
                                    <option selected>身份证</option>
                                    <option>护照</option>
                                    <option>军官证</option>
                                    <option>港澳回乡证或台胞证</option>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="idnum" name="idnum" placeholder="请输入证件号码">
                            </div>
                        </div>
                     <div class="form-group row">
                        <label for="city" class="col-sm-3 col-form-label">常住城市</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="city" id="city"
                                placeholder="请输入常住城市">
                        </div>
                    </div>
                      <div class="form-group row">
                      <label for="num" class="col-sm-3 col-form-label">性别</label>
                      <div class="col-sm-3">
                      <div class="form-check form-check-inline">
                      
  		<input class="form-check-input" type="radio" name="sex" id="male" class="form-control" value="男" checked>
  		<label class="form-check-label" for="male">男 </label>
	</div>
	</div>
	<div class="col-sm-3">
	<div class="form-check form-check-inline">
  		<input class="form-check-input" type="radio" name="sex" id="female" class="form-control" value="女">
  		<label class="form-check-label" for="female">女</label>
	</div>
	</div>
	</div>
                <button type="submit" class="btn btn-primary" id="pur">确认修改</button>
               </form>
                    
			</div>
			<div class="col-1">
		</div>

			<!-- 右边栏 -->

		</div>
	</div>

</body>
</html>