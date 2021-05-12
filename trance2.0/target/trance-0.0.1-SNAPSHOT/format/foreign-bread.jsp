<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ include file="nav.jsp"%>
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
                        <span id="bolder">保费：<span id="price">${item.price}</span>元/起</span><a href="pay.jsp" class="btn btn-primary" id="pur">投保</a>
                    </div>
                  </div>
            </div>
        </div>
        </c:forEach>