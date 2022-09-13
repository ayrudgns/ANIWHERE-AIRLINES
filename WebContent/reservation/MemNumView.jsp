<%@page import="vo.MembersVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.MemNumFindDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원번호 찾기</title>
<style>

img {
	width: 100px;
	height: 100px;
	vertical-align: middle;
}

.title{
	text-align: center;
	font-size: 25pt;
	border-bottom:1px solid #ddd;
	line-height: 120px;
}
.mn_screen{
	margin-left:auto;
	margin-right:auto;
	background: lightgray;
	width: 50%;
	height: 145px;
	border-radius: 15px;
}
.mn_table{
	margin-left: auto;
	margin-right: auto;
}



.mn_confirm h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

.mn_found {
	text-align: center;
}

button[id="btnback"] {
		margin-top: 40px;
		margin-right: 15px;
		width: 150px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: green;
		cursor: pointer;
}

button[id="btncheck"] {
		margin-top: 40px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: lime;
		cursor: pointer;
}

</style>
<%
	request.setCharacterEncoding("UTF-8");
	MemNumFindDao dao = MemNumFindDao.getInstance();
	String kor_name = request.getParameter("kor_name");
	String id = request.getParameter("id");
	Map<String,String> mn = new HashMap<>();
	mn.put("kor_name", kor_name);
	mn.put("id", id);
	MembersVO vo = dao.selectMn(mn);

%>
</head>
<body>
<div class="mn_notice">
<h3 class="title"><img src="../image/projectLogo.png" alt="projectLogo"></img>회원번호 찾기</h3><br>
<main class="mn_confirm">
<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3><br>
	<div>
		<div class="mn_screen"><br>
			<table class="mn_table">
				<tr>
	      			<th style="font-size: 15pt;">회원님의 회원번호는</th>
	      		</tr>
	      		<tr>
	      			<th style="color: red; font-weight: bold; font-size: 20pt;">&nbsp;&nbsp;&nbsp;<%=vo.getMem_no() %>&nbsp;&nbsp;&nbsp;</th>
	      		</tr>
	      		<tr>
	      			<th style="font-size: 15pt; font-weight:bold;">입니다.</th>
	      		</tr>
	      	</table>
	     </div>
	     <div class = "mn_found">
 		    <button id="btnback" onclick="history.back()">다시 찾기</button>
 		    <button id="btncheck" onclick="self.close()">확인</button>
       	</div>
       	</div>           
</main>
</div>
</body>   