<%@page import="java.sql.Timestamp"%>
<%@page import="vo.C_ResVO"%>	<!-- [편도]입력한 예매 정보를 최종적으로 확인하는 테이블 -->
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
.ow_confirm h2{
	padding-top : 20px;
	text-align : center;
	line-height : 20px;
}

.ow_confirm h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

.ow_confirm_table{
	text-align : center;
	border: 3px solid #444444;
	width: 45%;
	margin-left : auto;
	margin-right : auto;
	border-collapse: collapse;
	
}

.ow_confirm_table th, td{
	border : 1px solid #444444;
	height : 45px;
	width: 180px;
}

.ow_confirm_table th{
	width: 30%;
	background: skyblue;
	border-right: 5px double;
}

.ow_confirm h4{
	text-align : center;
	padding-top : 20px;
	line-height : 25px;
}
.ow_confirm_btn{
	text-align : center;
}

button[id="ow_next_to"]{
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

button[id="ow_cancel_to"]{
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
<main class="ow_confirm">
<h4 style="padding-top: 20px; margin-bottom: -10px; font-weight: bold;"><span style="background-color: yellow;">[편도]</span>선택하신 항공편 정보를 확인해주세요.</h4>
<br>
<hr>
<%
	request.setCharacterEncoding("utf-8");
	
	String birth_year = request.getParameter("birth_year");
	String birth_month = request.getParameter("birth_month");
	String birth_day = request.getParameter("birth_day");	
	String b_date= (birth_year+"년 "+birth_month+"월 "+birth_day+"일");
	String b_date2 = (birth_year+ "-" + birth_month + "-" + birth_day);
	
	int mem_no = Integer.parseInt(request.getParameter("mem_no"));
	session.setAttribute("mem_no",mem_no);
	
	String ap_name = request.getParameter("ap_name");
	String occupant = request.getParameter("occupant");
	int seat_count = Integer.parseInt(request.getParameter("seat_count"));
	
	session.setAttribute("occupant",occupant);
	
	String gender = request.getParameter("gender");
	session.setAttribute("gender",gender);
	
	Date birth_date = Date.valueOf(b_date2);
	
	String d_port = request.getParameter("d_port");		/* Insert.jsp에서 가져온 파라미터 */
	String a_port = request.getParameter("a_port");		/* line 118로 가자 */
	String d_time = request.getParameter("d_time");
	String a_time = request.getParameter("a_time");
	C_ResDao dao = C_ResDao.getInstance();
%>
<h3 style="padding-top:10px;">ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
<br>
<form action="ow_ReservationTable.jsp" method="post">
<input type="hidden" name="ap_name" value="<%= ap_name %>">
<input type="hidden" name="occupant" value="<%= occupant %>">
<input type="hidden" name="seat_count" value="<%= seat_count %>">
<input type="hidden" name="gender" value="<%= gender %>">
<input type="hidden" name="birth_date" value="<%= b_date2 %>">
<div class="ow_confirm_div">
<table class="ow_confirm_table">
	<tr>
		<th>항공편명</th>
		<td colspan="2"><%= ap_name %></td>				<!-- 문서에 표시 -->
	</tr>
	<tr>
		<th>출발공항</th>
		<td colspan="2"><%= d_port %></td>				<!-- 문서에 표시 -->
	</tr>
	<tr>
		<th>도착공항</th>
		<td colspan="2"><%= a_port %></td>
	</tr>
	<tr>
		<th>출도착시간</th>
		<td><%= d_time %></td>
		<td><%= a_time %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td colspan="2"><%=occupant %></td>
	</tr>
	<tr>
		<th>회원번호</th>
		<td colspan="2"><%=mem_no %></td>
	</tr>
	<tr>
		<th>성별</th>
		<td colspan="2"><%=gender %></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td colspan="2"><%=birth_date %></td>
	</tr>
	<tr>
		<th>탑승객 수</th>
		<td colspan="2"><%=seat_count %></td>
	</tr>
</table>
<div class="ow_confirm_btn">
<button id="ow_next_to" type="button" onclick="gotoSS()">다음</button>
<button id="ow_cancel_to" type="button" onclick="backtoindex()">취소</button>
<br>
<script type="text/javascript">

function gotoSS(){
	var result = confirm("좌석은 체크인 때 무작위로 배정됩니다. 예매를 마치시겠습니까?");
	
	if(result == true){
		location.href="ow_ReservationTable.jsp";
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
</div><br>
	<h5 style="text-align: center; margin: auto; margin: 10px 0px;">입력된 정보가 맞다면 <strong>[다음]</strong><br>
	입력된 정보가 맞지 않다면 <strong>[취소]</strong></h5>
</div>
</form>
</main>
</body>
</html>