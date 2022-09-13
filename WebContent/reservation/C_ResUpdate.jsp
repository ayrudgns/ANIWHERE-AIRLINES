<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.C_ResVO"%>
<%@page import="dao.C_ResDao"%>
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

.list_cancel {
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 65%;
	border: collapse;
	text-align: center;
}

.list_cancel > td {

}

input {
	border: none;
	text-align: center;
	width: 150px;
	
}

input:focus {
	outline: none;
}

.update_btn{
	padding-top: 50px;
	text-align: center; 
}
.update_btn > button {
	width: 100px;
	height: 50px;
	margin-right: 20px;
	border-radius: 10px;
	font-weight: bold;
	color: white;
	font-size: 20px;
}

.btn_cancel{
	background : orange;
}

.btn_delete{
	background : skyblue;
}
</style>
<meta charset="UTF-8">
<title>예매 취소하기</title>
</head>
<body>
	<%@include file="../front/header.jsp" %>
	<%
		C_ResDao dao = C_ResDao.getInstance();
		C_ResVO vo = null;
		
	  	try {		
			int res_no = Integer.parseInt(request.getParameter("res_no"));  		
			vo = dao.selectRes(res_no);

			if(vo == null) throw new Exception();
  		} catch (Exception e){
	  %>
 	  	<script type="text/javascript">
	  		alert('예매 번호를 다시 확인해주시기 바랍니다.');
	  		history.back();
	  	</script> 
	  <%		
	 	}
	  %>
	<main style="padding-top: 5px; min-height: 640px;">
	<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
	<h4>예매 취소하기</h4>
	<hr>
	<form method="post" action="C_ResUpdateAction.jsp">
		<table class="list_cancel">
			<tr>
				<td style="padding: 10px; border: 1px solid gray;">예매번호</td>
				<td style="padding: 10px; border: 1px solid gray;">회원번호</td>
				<td style="padding: 10px; border: 1px solid gray;">일정번호</td>
				<td style="padding: 10px; border: 1px solid gray;">항공기명</td>
				<td style="padding: 10px; border: 1px solid gray;">출발일자</td>
				<td style="padding: 10px; border: 1px solid gray;">탑승자명</td>
				<td style="padding: 10px; border: 1px solid gray;">예매 좌석 수</td>
				<td style="padding: 10px; border: 1px solid gray;">생년월일</td>
			</tr>
			<tr>
				<td style="padding: 10px; border: 1px solid gray;"><input type="number" name="res_no" class="res_delete" value="<%= vo.getRes_no()%>" readonly/></td>			
		        <td style="padding: 10px; border: 1px solid gray;"><input type="number" name="mem_no" value="<%= vo.getMem_no() %>" readonly/></td>
				<td style="padding: 10px; border: 1px solid gray;"><input type="number" name="schedule_no_c" value="<%= vo.getSchedule_no_c() %>" readonly/></td>
				<td style="padding: 10px; border: 1px solid gray;"><input type="text" name="ap_name" value="<%= vo.getAp_name() %>" readonly/></td>			
				<td style="padding: 10px; border: 1px solid gray;"><input type="date" name="res_date" value="<%= vo.getRes_date() %>" readonly/></td>
				<td style="padding: 10px; border: 1px solid gray;"><input type="text" name="occupant" value="<%= vo.getOccupant() %>" readonly/></td>
				<td style="padding: 10px; border: 1px solid gray;"><input type="number" name="seat_count" value="<%= vo.getSeat_count() %>" readonly/></td>
				<td style="padding: 10px; border: 1px solid gray;"><input type="date" name="birth_date" value="<%= vo.getBirth_date() %>" readonly/></td>	
			</tr>
		</table>
		<div class="update_btn">
			<button type="button" class="btn_cancel" onclick="location.href='C_Reservation.jsp'">취소</button>
			<button type="button" class="btn_delete" onclick="javascript:resDelete()">삭제</button>
		</div>
	</form>
		
	</main>
	
	<script type="text/javascript">
		function resDelete() {
			var res_no = document.forms[0].res_no.value;
			if(confirm('예매 정보를 삭제하시겠습니까?') == true) {
				location.href='C_ResDelete.jsp?res_no=' + res_no;
			} else {
				alert('예매 삭제를 취소하셨습니다.');

			}
			
		}
	</script>
	<%@include file="../front/footer.jsp" %>
</body>
</html>