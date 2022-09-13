<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.C_ResVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
main > h3{
	padding-top: 25px; 
	padding-bottom: 15px; 
	color: #81c147; 
	font-weight: bold; 
	font-size: 25px;
	text-align : center;
}

main > h4{
	text-align : center;
	font-weight : bold;
	padding-bottom : 15px;
	font-size: 25px;
}

hr {
	border: double;
}

.list {
	padding-top : 100px;
	margin: auto;
	width: 75%;
	border: collapse;
}


.th_id {
	text-align : left;
	padding-left : 25px;
	height: 60px;
	border-top : none;
}

.td_id {
	text-align : left;
	font-size : 18px;
	font-weight : bold;
	color : red;
}

main {
	min-height : 750px;
}

.notice {
	padding-top : 50px;
	text-align : center;
	font-weight : bold;
	font-size : 20px;
}

.res_info > td {
	text-align : center;
}

.pay_btn {
	padding : auto;
	padding-top : 30px;
	text-align : center;
}

.btn_pay {
	border-radius : 5px;
	width : 100px;
	height : 50px;
	font-weight : bold;
	color : white;	
	font-size : 20px;
	background : green;
}

.btn_delete {
	border-radius : 5px;
	width : 120px;
	height : 50px;
	font-weight : bold;
	color : white;
	font-size : 20px;
	background : lime;
}
</style>
<meta charset="UTF-8">
<title>예매 내역 조회</title>
</head>
<body>
<%@include file="../front/header.jsp" %>
<%
	@SuppressWarnings("unchecked")
	List<C_ResVO> list = (List<C_ResVO>)request.getAttribute("list");
	SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH시 SS분");
	
%>
<main>
<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
<h4>회원님의 예매 목록입니다.</h4>
<hr>
<br>
<table class="list">
	<tr class="tr_id" style="border: 1px solid gray;">
		<th class="th_id" colspan="2">회원 아이디</th>
		<td class="td_id"colspan="6"></td>
	</tr>
	<tr class="res_info">
		<td style="padding: 10px; border: 1px solid gray;">예매번호</td>
		<td style="padding: 10px; border: 1px solid gray;">회원번호</td>
		<td style="padding: 10px; border: 1px solid gray;">일정번호</td>
		<td style="padding: 10px; border: 1px solid gray;">항공기명</td>
		<td style="padding: 10px; border: 1px solid gray;">출발일자</td>
		<td style="padding: 10px; border: 1px solid gray;">탑승자명</td>
		<td style="padding: 10px; border: 1px solid gray;">예매 좌석 수</td>
		<td style="padding: 10px; border: 1px solid gray;">생년월일</td>			
	</tr>
	<%
		for(C_ResVO vo : list) {
	%>
	<tr class="res_info" style="padding: 10px; border: 1px solid gray;">
		<td style="padding: 10px; border: 1px solid gray;"><a href="C_ResUpdate.jsp?res_no=<%= vo.getRes_no()%>"><%= vo.getRes_no() %></a></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getMem_no() %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getSchedule_no_c() %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getAp_name() %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= sdf.format(vo.getRes_date()) %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getOccupant() %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getSeat_count() %></td>
		<td style="padding: 10px; border: 1px solid gray;"><%= vo.getBirth_date() %></td>
		</tr>
	<%
		}
	%>
	<tr>
</table>
<h6 class="notice">예매번호 선택을 통해 예매 취소를 진행하실 수 있습니다.</h6><br>
<!-- <div class="pay_btn">
<button class="btn_pay" type="button" onclick="">결제</button>
</div> -->
</main>
<%@include file="../front/footer.jsp" %>
</body>
</html>