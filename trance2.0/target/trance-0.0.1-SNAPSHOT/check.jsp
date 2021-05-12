<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>国外保险</title>
    <%@ include file="format/head-check.jsp" %>
</head>

<body>
    <div class="container-fluid">
    <form action="checkinfo2" method="post">
        <div class="card" id="main">
            <h4 class="card-header">全球旅游保险</h4>
            <div class="card" id="inside">
                <h5 class="card-header">1、订单明细</h5>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">目的地国家：${country}</li>
                        <li class="list-group-item">目的地城市：${city}</li>
                        <li class="list-group-item">旅行类型：${type}</li>
                        <li class="list-group-item">保险期限：${from}到${to}，共${day}天</li>
                        <li class="list-group-item">套餐类型：${project}</li>
                        <li class="list-group-item">保费：共${price}元</li>
                    </ul>
                </div>
            </div>
            <div class="card" id="inside">
                <h5 class="card-header">2、投保人信息</h5>
                <div class="card-body">
                    <c:forEach items="${users}" var="item">
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item">姓名：${item.realname}</li>
                        <li class="list-group-item">证件类型：${item.idtype}</li>
                        <li class="list-group-item">证件号：${item.idnum}</li>
                        <li class="list-group-item">常住城市：${item.city}</li>
                        <li class="list-group-item">联系电话：${item.tel}</li>
                    </ul>
</c:forEach>
                </div>

            </div>
            <div class="card" id="inside">
                <h5 class="card-header">3、被投保人信息</h5>
                <div class="card-body">
                        <div class="form-group row">
                            <label for="rel" class="col-sm-3 col-form-label">与投保人关系</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="rel" name="rel">
                                    <option selected value="本人">本人</option>
                                    <option value="配偶">配偶</option>
                                    <option value="父子">父子</option>
                                    <option value="父女">父女</option>
                                    <option value="子女">子女</option>
                                    <option value="母子">母子</option>
                                    <option value="母女">母女</option>
                                    <option value="雇佣">雇佣</option>
                                    <option value="其他">其他</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="bename" class="col-sm-3 col-form-label">姓名</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="bename" name="bename"placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="py" class="col-sm-3 col-form-label">姓名拼音</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="py" name="py" placeholder="请输入姓名拼音">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="beidtype" class="col-sm-3 col-form-label">证件类型</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="beidtype" name="idtype">
                                    <option selected value="身份证">身份证</option>
                                    <option value="护照">护照</option>
                                    <option value="军官证">军官证</option>
                                    <option value="港澳回乡证或台胞证">港澳回乡证或台胞证</option>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="beid" name="idcard" placeholder="请输入证件号码">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="betel" class="col-sm-3 col-form-label">电话号码</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="betel" name="tel" placeholder="请输入电话号码">
                            </div>
                        </div>
                    
                </div>
            </div>
            <div class="card" id="inside">
                <h5 class="card-header">4、受益人</h5>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">受益人：法定</li>
                    </ul>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" id="pur">投保</button>
            <a href="pay.jsp">返回上一级</a>
            </div>
            </form>
        </div>
        
</body>

</html>