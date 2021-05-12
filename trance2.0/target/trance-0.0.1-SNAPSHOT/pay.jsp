<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>国外保险</title>
 <link rel="stylesheet" href="/trance/css/bootstrap.min.css">
    <link rel="stylesheet" href="/trance/css/pay.css">
    <script src="/trance/bootstrap-4.4.1-dist/jquery-3.0.0.min.js"></script>
    <script src="/trance/bootstrap-4.4.1-dist/popper.min.js"></script>
    <script src="/trance/bootstrap-4.4.1-dist/bootstrap.min.js"></script>
</head>

<body>
<script>
$(function(){
	var text = $("#price").text();
	console.log(text);
	$("#type1").click(function(){
		text = text * 1.0;
		$("#price").text(text.toFixed(1));
		$("#pri").val(text.toFixed(1));
	})
	$("#type2").click(function(){
		text = text * 1.5;
		$("#price").text(text.toFixed(1));
		$("#pri").val(text.toFixed(1));
		
	})
	$("#type3").click(function(){
		text = text * 2.0;
		$("#price").text(text.toFixed(1));
		$("#pri").val(text.toFixed(1));
	})
})</script>
    <div class="container-fluid">
        <div class="card">
            <h4 class="card-header">旅游投保</h4>
            <div class="card-body">
                <h5>选择出行人数、时间、保单额度</h5>
                <br>
                <form action="checkinfo" method="post">
                <div class="form-group row">
                        <div class="col-sm-4">
                            <input type="hidden" class="form-control" name="pri" id="pri"
                                placeholder="请输入城市" value="${text}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="country" class="col-sm-3 col-form-label">目的地国家</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="country" id="country"
                                placeholder="请输入国家">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="city" class="col-sm-3 col-form-label">目的地城市</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="city" id="city"
                                placeholder="请输入城市">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label">旅行类型</label>
                        <div class="col-sm-4">
                        <select class="form-control" name="type" id="type">
                          <option selected>单次旅行</option>
                          <option>多次旅行</option>
                        </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="from" class="col-sm-3 col-form-label">保险起期</label>
                        <div class="col-sm-4">
                        <input type="date" class="form-control" name="from" id="from" />
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="to" class="col-sm-3 col-form-label">保险止期</label>
                        <div class="col-sm-4">
                        <input type="date" class="form-control" name="to" id="to" />
                    </div>
                      </div>
                      <div class="form-group row">
                        <label for="num" class="col-sm-3 col-form-label">被保险人数</label>
                        <div class="col">
                          0-65周岁<input type="text" class="form-control" name="num1" placeholder="0">
                        </div>
                        <div class="col">
                          66-75周岁<input type="text" class="form-control" name="num2" placeholder="0">
                        </div>
                        <div class="col">
                            76-80周岁<input type="text" class="form-control" name="num3" placeholder="0">
                          </div>
                      </div>
                      <div class="form-group row">
                      <label for="num" class="col-sm-3 col-form-label">保单额度</label>
                      <div class="col-sm-3">
                      <div class="form-check form-check-inline">
                      
  		<input class="form-check-input" type="radio" name="project" id="type1" class="form-control" value="实惠计划" checked>
  		<label class="form-check-label" for="type1">实惠计划 </label>
	</div>
	</div>
	<div class="col-sm-3">
	<div class="form-check form-check-inline">
  		<input class="form-check-input" type="radio" name="project" id="type2" class="form-control" value="优享计划">
  		<label class="form-check-label" for="type2">优享计划</label>
	</div>
	</div>
	<div class="col-sm-3">
	<div class="form-check form-check-inline">
  		<input class="form-check-input" type="radio" name="project" id="type3" class="form-control" value="尊贵计划">
  		<label class="form-check-label" for="type3">尊贵计划</label>
	</div>
	</div>
	</div>
              <div id="submit"><p><span id="bolder">保费：<span id="price">${text}</span>元</span></p>
                <button type="submit" class="btn btn-primary" id="pur">投保</button></div>
               </form>
            </div>
          </div>
    </div>
</body>

</html>