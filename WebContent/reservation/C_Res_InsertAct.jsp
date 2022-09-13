<%@page import="vo.C_ResVO"%>
<%@page import="dao.C_ResDao"%>
<%@page import="vo.ReservationVO"%>
<%@page import="java.util.Locale"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.rd_confirm h2{
	padding-top : 20px;
	text-align : center;
	line-height : 20px;
}

.rd_confirm h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

.rd_confirm_table{
	text-align : center;
	border: 1px solid #444444;
	width: 45%;
	margin-left : auto;
	margin-right : auto;
	border-collapse: collapse;
	
}
.rd_confirm_table th, td{
	border : 1px solid #444444;
	height : 45px;
}

.rd_confirm_table th{
	width: 60%;
}

.rd_confirm h4{
	text-align : center;
	padding-top : 20px;
	line-height : 25px;
}
.rd_confirm_btn{
	text-align : center;
}

button[id="rd_next_to"]{
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: blue;
		cursor: pointer;
}

button[id="rd_cancel_to"]{
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		margin-left: 20px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: red;
		cursor: pointer;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main class="rd_confirm">
<h2>[왕복]선택하신 항공편 정보를 확인해주세요.</h2>
<br>
<hr>
<%
	request.setCharacterEncoding("utf-8");
	
	String d_port = request.getParameter("d_port");		/* Insert.jsp에서 가져온 파라미터 */
	String a_port = request.getParameter("a_port");		/* line 118로 가자 */
	String d_time = request.getParameter("d_time");
	String a_time = request.getParameter("a_time");
	
	String gender = request.getParameter("gender");
	String occupant = request.getParameter("occupant");
	String birth_year = request.getParameter("birth_year");
	String birth_month = request.getParameter("birth_month");
	String birth_day = request.getParameter("birth_day");
	int mem_no = Integer.parseInt(request.getParameter("mem_no"));
	String birth_date = request.getParameter("birth_date");
	
	birth_date= (birth_year+"년 "+birth_month+"월 "+birth_day+"일");
	
	C_ResDao dao = C_ResDao.getInstance();
%>
<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
<br>
<form action="rd_ReservationTable.jsp" method="post">
<div class="rd_confirm_div">
<table class="rd_confirm_table">
	<tr>
		<th>출발공항</th>
		<td><%= d_port %></td>				<!-- 문서에 표시 -->
	</tr>
	<tr>
		<th>도착공항</th>
		<td><%= a_port %></td>
	</tr>
	<tr>
		<th>출발일자</th>
		<td><%= d_time %></td>
	</tr>
	<tr>
		<th>도착일자</th>
		<td><%= a_time %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=occupant %></td>
	</tr>
	<tr>
		<th>회원번호</th>
		<td><%=mem_no %></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><%=gender %></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><%=birth_date %></td>
	</tr>
</table>
<div class="rd_confirm_btn">
<button id="rd_next_to" type="button" onclick="gotoSS()">다음</button>
<button id="rd_cancel_to" type="button" onclick="backtoindex()">취소</button>

<script type="text/javascript">

function gotoSS(){
	var result = confirm("좌석은 체크인 때 무작위로 배정됩니다. 예매를 마치시겠습니까?");
	
	if(result == true){
		location.href="rd_ReservationTable.jsp";
	}
	else {
		alert("예매를 마치시려면 확인을 눌러주세요.");
		
	}
}

function backtoindex(){
	var cancel = confirm("예매 등록을 취소하시겠습니까?");
	
	if(cancel == true){
		alert("예매 등록이 취소되었습니다.");
		location.href="../front/index.jsp";
	}
	else{
		alert("예매를 계속하시려면 다음 버튼을 눌러주세요.");
	}
}

</script>
</div>
<h4>입력된 정보가 맞으시다면 [다음]버튼을 눌러 예매 과정을 진행해 주시고<br>입력된 정보가 맞지 않다면 [취소]버튼을 눌러 주시기 바랍니다.</h4>
</div>
</form>
</main>
</body>
</html>