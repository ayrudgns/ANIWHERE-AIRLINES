<%@page import="java.sql.Timestamp"%>
<%@page import="dao.C_ResDao"%>
<%@page import="java.sql.Date"%>
<%@page import="vo.C_ResVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매가 완료되었습니다.</title>
<style>
main{
	width: 100%;
	height: 600px;
	background-image: linear-gradient(
        rgba(255, 255, 255, 0.5),
        rgba(255, 255, 255, 0.5)
      ), url('../image/projectLogo.png');
	background-repeat: no-repeat;
	background-position: center;
	margin-bottom: 100px;
}
.ow_complete{
	text-align: center;
	padding-top: 250px;
	
}

.ow_complete h3{
	color: green;
	font-weight: bold;
	margin-bottom: 35px;
}

.ow_complete h4{
	margin-bottom: 200px;
}

.back{
	text-align : center;
}

.back > button{
	width: 110px;
	height: 45px;
	border-radius: 10px;
	background: lightgray;
	color: black;
	font-weight: bold;
	font-size: 15pt;
}

.logo {
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>

<%
	request.setCharacterEncoding("utf-8");

	// int mem_no = Integer.parseInt(request.getParameter("mem_no"));
	// String ap_name = request.getParameter("ap_name");
	/* String occupant = request.getParameter("occupant"); */
	//int seat_count = Integer.parseInt(request.getParameter("seat_count"));
	//String gender = request.getParameter("gender");
	// Date birth_date = Date.valueOf(request.getParameter("birth_date"));
	// 에러나는 부분 주석처리함 -> 형변환을 왜 하나도 못해주지... 우선은 이거 값으로 그냥 넣어버림	
	int mem_no = (int)session.getAttribute("mem_no");
	int seat_count = (int)session.getAttribute("seat_count");
	String occupant = (String)session.getAttribute("occupant");
	String gender = (String)session.getAttribute("gender");
	
	C_ResVO vo = new C_ResVO(0, mem_no, 0, "BE820", null, occupant, seat_count, gender, Date.valueOf("1995-08-01"));

	C_ResDao dao = C_ResDao.getInstance();
	
	int res = dao.insertRes(vo);
	
	if (res == 1) {
		System.out.println("yes!");
	} else {
		System.out.println("no..");		
	}
%>
<body>
<%@include file="../front/header.jsp" %>
<main>
<div class="ow_complete">
<h3>[편도]예매가 완료되었습니다.</h3>
<h4>좌석은 체크인 시 <b style="color: red;">무작위로</b> 배정됩니다. 이용해주셔서 감사합니다.</h4>
</div><br>

<div class="back">
<button class="back_btn" onclick="location.href='../front/index.jsp;'">홈으로</button>
</div>
</main>
<%@include file="../front/footer.jsp" %>
</body>
</html>