<%@page import="vo.SaleslistVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.SalesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 매출 목록</title>
<style type="text/css">
	th, td {
		border: 1px solid black;
		padding: 5px;
	}
</style>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		SalesDao dao = SalesDao.getInstance();
		List<SaleslistVO> list = dao.todaySalesList();
	%>
	
		<main style="text-align: center;">
				<h3>오늘의 매출 목록</h3>
			<table style="border-collapse: collapse; margin: auto;">
				<tr>
					<th>예매번호</th>				
					<th>예매(결제)날짜</th>				
					<th>출발지</th>				
					<th>도착지</th>				
					<th>탑승자명(대표자)</th>				
					<th>좌석 수</th>				
					<th>가격</th>				
				</tr>
	<%
		for(SaleslistVO vo : list) {	
	%>				
				<tr>
					<td><%= vo.getRes_no() %></td>
					<td><%= vo.getRes_date() %></td>
					<td><%= vo.getDep_port() %></td>
					<td><%= vo.getArr_port() %></td>
					<td><%= vo.getOccupant() %></td>
					<td><%= vo.getSeat_count() %></td>
					<td><%= vo.getPay_sum() %></td>
				</tr>
	<%
		}
	%>
			</table>
		
		</main>
</body>
</html>