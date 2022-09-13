<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.CustomPlanVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.SalesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ANIWHERE AIRLINES 오늘의 항공편 조회</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style type="text/css">
    	th, tr, td {
    		border: 1px solid gray;
    		padding: 5px 10px;
    	}	
    </style>    
</head>

<body>
	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>
<%
	SalesDao dao = SalesDao.getInstance();
	List<CustomPlanVO> list = dao.todayFlight();
	List<CustomPlanVO> list2 = dao.flightSchedule();
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM월 dd일 HH시 SS분");
%>
	<main style="padding: 20px 0px; min-height: 1280px;">
	
	<h3 style="text-align: center; padding-bottom: 20px;">오늘의 항공편</h3>

	<table style="margin: auto; width: 800px; background-color: aliceblue;">
		<tr style="text-align: center;">
			<th>일정번호</th>
			<th>비행기명</th>
			<th>기종</th>
			<th>출발시간</th>
			<th>도착시간</th>
			<th>출발공항</th>
			<th>도착공항</th>
		</tr>
<%
	for(CustomPlanVO vo : list) {	
%>
		<tr style="text-align: center;">
			<td><%= vo.getSchedule_no_c() %></td>
			<td><%= vo.getAp_name() %></td>
			<td><%= vo.getAp_type() %></td>
			<td><%= sdf.format(vo.getDep_time()) %></td>
			<td><%= sdf.format(vo.getArr_time()) %></td>
			<td><%= vo.getDep_port() %></td>
			<td><%= vo.getArr_port() %></td>
		</tr>
<%
	}	
%>		
	</table>

	<h3 style="text-align: center; padding: 20px 0px ;">±3일 항공편 조회</h3>

	<table style="margin: auto; width: 800px; background-color: honeydew;">
		<tr style="text-align: center;">
			<th>일정번호</th>
			<th>비행기명</th>
			<th>기종</th>
			<th>출발시간</th>
			<th>도착시간</th>
			<th>출발공항</th>
			<th>도착공항</th>
		</tr>
<%
	for(CustomPlanVO svo : list2) {	
%>
		<tr style="text-align: center;">
			<td><%= svo.getSchedule_no_c() %></td>
			<td><%= svo.getAp_name() %></td>
			<td><%= svo.getAp_type() %></td>
			<td><%= sdf.format(svo.getDep_time()) %></td>
			<td><%= sdf.format(svo.getArr_time()) %></td>
			<td><%= svo.getDep_port() %></td>
			<td><%= svo.getArr_port() %></td>
		</tr>
<%
	}	
%>		
	</table>
	</main>
	
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>