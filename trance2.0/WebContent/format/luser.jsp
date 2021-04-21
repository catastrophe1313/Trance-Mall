<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="accordion" id="accordionExample">
	<div class="card">
		<div class="card-header" id="headingOne">
			<h5 class="mb-0">
				<button class="btn btn-link" type="button" data-toggle="collapse"
					data-target="#collapseOne" aria-expanded="true"
					aria-controls="collapseOne">用户首页</button>
			</h5>
		</div>
	</div>

	<div class="card text-center">
		<div class="card-header" id="headingTwo">
			<h5 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="false" aria-controls="collapseTwo">用户资料</button>
			</h5>
		</div>
		<div id="collapseTwo" class="collapse third-collapse"
			aria-labelledby="headingTwo" data-parent="#accordionExample">
			<div class="card-body"><a href="info.jsp">用户信息</a></div>
			<div class="card-body"><a href="info-edit.jsp">信息修改</a></div>
		</div>
	</div>
	<div class="card text-center">
		<div class="card-header" id="headingThree">
			<h5 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target=".multi-collapse"
					aria-expanded="false"
					aria-controls="collapseThree0 collapseThree1 collapseThree2 collapseThree3">
					<a href="search">我的订单</a></button>
			</h5>
		</div>
		
	</div>
</div>