<%@page import="vo.TodayPerVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="vo.SalesVO"%>
<%@page import="dao.SalesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ANIWHERE AIRLINES 매출 조회</title>
	<link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/pricing/">
	<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
    <link href="pricing.css" rel="stylesheet">
	<style type="text/css">
		ul {
			display: table;
			margin-left: auto;
			margin-right: auto;
		}	
		
		button {
		    border: 5px double beige;
		    padding: 10px;
		    display: block;
		    background-color: papayawhip;
		}
	</style>
</head
>
<body>
	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>
<%
	DecimalFormat df = new DecimalFormat("###, ###, ###, ###, ###원");
	SalesDao dao = SalesDao.getInstance();
	SalesVO vo = dao.todaySales();
	List<SalesVO> list = dao.monthSales();
	TodayPerVO tvo = dao.todayPer();
%>
	<main style="min-height: 1280px; padding: 20px 0px;">
	
		<!-- 가운데 그림  시작 -->
      <h3 style="text-align: center;">오늘의 매출</h3>
	    <div style="text-align: center; padding-top: 20px;" class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col" style="margin: auto;">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3" style="background-color: aliceblue;">
            <h3 class="my-0 fw-normal"><%= vo.getToday()%></h3>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title"><%= df.format(vo.getM_sales()) %></h4>
            <h4 class="card-title pricing-card-title"><%= vo.getCnt() %> 건</h4>
            <h5 class="card-title pricing-card-title"><a href="getList.jsp" target="_blank">매출 목록 조회</a></h5>           
          </div>
        </div>
      </div>
    </div>
		
	<hr>	
	
	<h3 style="text-align: center; padding-top: 20px;">오늘의 예매율</h3>
	 <div style="text-align: center; padding-top: 20px;" class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col" style="margin: auto;">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3" style="background-color: cornsilk;">
            <h3 class="my-0 fw-normal"><%= vo.getToday()%></h3>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title">예매율 : <%= tvo.getPer() %> %</h4>
            <h5 class="card-title pricing-card-title">예매 좌석 수 : <%= tvo.getToday_c() %>석</h5>
            <h5 class="card-title pricing-card-title">전체 좌석 수 : <%= tvo.getAll_c() %>석</h5>
          </div>
        </div>
      </div>
    </div>	
	
	<hr>
		
   	<h3 style="text-align: center; padding-top:20px;">월별 매출 조회</h3>
   		<div style="margin: auto; text-align: center;">
<%
	for(SalesVO s_vo : list) {
%>
	    <div style="text-align: center; padding-top: 20px; display: inline-block;" 
	    	class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col" style="width: 390px;">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3" style="background-color: lavenderblush;">
          <h3 class="my-0 fw-normal"><%= s_vo.getRes_month() %></h3>
          </div>
          <div class="card-body">
            <h4 class="card-title pricing-card-title"><%= df.format(s_vo.getM_sales()) %></h4>
            <h4 class="card-title pricing-card-title"><%= s_vo.getCnt() %> 건</h4>
          </div>
        </div>
      </div>
    </div>
<%
	}
%>
    	</div>
	<hr>

	<h3 style="text-align: center; padding:20px 0px;">전체 매출 조회</h3>  	
			<button type="button" onclick="window.open('getAllList.jsp')" style="margin: auto;">
				전체 매출 목록 보기</button>
    	
	</main>
	
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>4    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
