<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>国外保险</title>
    <%@ include file="format/head-type.jsp" %>
</head>
<body>
	<div class="container-fluid">
 <%@ include file="format/nav.jsp"%>
    <c:forEach items="${ins}" var="item">
        <div class="row no-gutters" id='bread'>
            <nav aria-label="breadcrumb" > 
                <ol class="breadcrumb" style="background-color: white;">
                  <li class="breadcrumb-item"><a href="index.jsp">首页</a></li>
                  <li class="breadcrumb-item"><a href="#">保险购买</a></li>
                  <li class="breadcrumb-item active" aria-current="page">${item.insname}</li>
                </ol>
              </nav>
              <hr>
          </div>
          <div class="row no-gutters">
           <div class="col-sm">
                <div class="card" id="info-card">
                    <div class="card-body">
                        <p class="card-text"><span id="bold">承保年龄：</span>${item.suit}</p>
                        <p class="card-text"><span id="bold">保障期限：</span>${item.period}</p>
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="card" id="info-card">
                    <div class="card-body">
                        <p class="card-text"><span id="bold">产品特色：</span>${item.feature}</p>
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="card" id="pay-card">
                    <div class="card-body">
                        <span id="bolder">保费：<span id="price">${item.price}</span>元/起</span><a href="dealbuy2?text=${item.price}" class="btn btn-primary" id="pur">投保</a>
                    </div>
                  </div>
            </div>
        </div>
        </c:forEach>
		<div class="row">
			<div class="col" id="table">
				<div class="list-group list-group-horizontal-lg">
					<a href="foreign-1.jsp"
						class="list-group-item list-group-item-action active" id="list">保障计划</a>
					<a href="foreign-2.jsp"
						class="list-group-item list-group-item-action " id="list">保障详情解读</a>
					<a href="foreign-3.jsp"
						class="list-group-item list-group-item-action" id="list">投保须知</a>
					<a href="foreign-4.jsp"
						class="list-group-item list-group-item-action" id="list">常见问题</a>
				</div>
				<table class="table-bordered">
					<thead>
						<tr>
							<th scope="col">保障项目</th>
							<th scope="col">保障范围</th>
							<th scope="col">实惠计划</th>
							<th scope="col">优选计划</th>
							<th scope="col">尊贵计划</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td rowspan="3" id="tbleft">基础保障</td>
							<td>意外伤害身故、残疾</td>
							<td>20万</td>
							<td>30万</td>
							<td>50万</td>
						</tr>
						<tr>
							<td>意外和疾病住院和门急诊</td>
							<td>5万</td>
							<td>15万</td>
							<td>30万</td>
						</tr>
						<tr>
							<td>急性病身故或全残</td>
							<td>5万</td>
							<td>5万</td>
							<td>10万</td>
						</tr>
						<tr>
							<td rowspan="4" id="tbleft">交通意外</td>
							<td>飞机意外伤害身故和残疾</td>
							<td>30万</td>
							<td>50万</td>
							<td>100万</td>
						</tr>
						<tr>
							<td>火车意外伤害身故和残疾</td>
							<td>10万</td>
							<td>20万</td>
							<td>50万</td>
						</tr>
						<tr>
							<td>轮船意外伤害身故和残疾</td>
							<td>10万</td>
							<td>20万</td>
							<td>50万</td>
						</tr>
						<tr>
							<td>汽车意外伤害身故和残疾</td>
							<td>10万</td>
							<td>10万</td>
							<td>30万</td>
						</tr>
						<tr>
							<td rowspan="7" id="tbleft">紧急医疗救援</td>
							<td>医疗运送和送返</td>
							<td colspan="3">400万</td>
						</tr>
						<tr>
							<td>遗体/骨灰送返</td>
							<td colspan="3">250万</td>
						</tr>
						<tr>
							<td>亲属慰问探访</td>
							<td colspan="3">13000</td>
						</tr>
						<tr>
							<td>休养期的饭店住宿</td>
							<td colspan="3">6500</td>
						</tr>
						<tr>
							<td>安排并支付未成年子女回国</td>
							<td colspan="3">8000</td>
						</tr>
						<tr>
							<td>紧急返回居住地国家</td>
							<td colspan="3">8000</td>
						</tr>
						<tr>
							<td>亲属前往处理后事保险金</td>
							<td colspan="3">6500</td>
						</tr>
						<tr>
							<td rowspan="12" id="tbleft">特色保障</td>
							<td>第三者责任</td>
							<td>10万</td>
							<td>20万</td>
							<td>30万</td>
						</tr>
						<tr>
							<td>旅行期间家庭财产保障</td>
							<td>3万</td>
							<td>5万</td>
							<td>10万</td>
						</tr>
						<tr>
							<td>旅行票证损失</td>
							<td>1000</td>
							<td>2000</td>
							<td>5000</td>
						</tr>
						<tr>
							<td>托运行李损失</td>
							<td>1000</td>
							<td>2000</td>
							<td>3000</td>
						</tr>
						<tr>
							<td>意外和疾病住院津贴</td>
							<td>30元/天</td>
							<td>50元/天</td>
							<td>100元/天</td>
						</tr>
						<tr>
							<td>自驾意外伤害身故和残疾</td>
							<td>----</td>
							<td>5万</td>
							<td>10万</td>
						</tr>
						<tr>
							<td>绑架及非法拘禁</td>
							<td>----</td>
							<td>12000</td>
							<td>15000</td>
						</tr>
						<tr>
							<td>银行卡、支票盗抢</td>
							<td>----</td>
							<td>5000</td>
							<td>10000</td>
						</tr>
						<tr>
							<td>旅程取消</td>
							<td>----</td>
							<td>3000</td>
							<td>3000</td>
						</tr>
						<tr>
							<td>旅程延期逗留</td>
							<td>----</td>
							<td>2000</td>
							<td>5000</td>
						</tr>
						<tr>
							<td>随身行李损失</td>
							<td>----</td>
							<td>2000</td>
							<td>3000</td>
						</tr>
						<tr>
							<td>托运行李延误</td>
							<td>----</td>
							<td>600</td>
							<td>1200</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>