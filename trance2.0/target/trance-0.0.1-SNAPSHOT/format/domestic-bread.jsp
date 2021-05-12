<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ include file="nav.jsp"%>
        <div class="row no-gutters" id='bread'>
            <nav aria-label="breadcrumb" > 
                <ol class="breadcrumb" style="background-color: white;">
                  <li class="breadcrumb-item"><a href="index.jsp">首页</a></li>
                  <li class="breadcrumb-item"><a href="#">保险购买</a></li>
                  <li class="breadcrumb-item active" aria-current="page">境内旅行险</li>
                </ol>
              </nav>
              <hr>
          </div>
          <div class="row no-gutters">
           <div class="col-sm">
                <div class="card" id="info-card">
                    <div class="card-body">
                        <p class="card-text"><span id="bold">承保年龄：</span>30天-80周岁</p>
                        <p class="card-text"><span id="bold">保障期限：</span>1-30天</p>
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="card" id="info-card">
                    <div class="card-body">
                        <p class="card-text"><span id="bold">产品特色：</span>性价比No.1，海陆空交通意外皆可保，涵盖风险运动
，天数自选，超值性价比</p>
                      
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="card" id="pay-card">
                    <div class="card-body">
                        <span id="bolder">保费：<span id="price">5</span>元/起</span><a href="pay.jsp" class="btn btn-primary" id="pur">投保</a>
                    </div>
                  </div>
            </div>
        </div>