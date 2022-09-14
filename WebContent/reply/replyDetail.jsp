<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 출력 포맷 사용하기 위한 태그라이브러리 설정 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 문자열 함수 사용하기 위한 태그라이브러리 설정 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의하기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
</head>
<body>  <!-- 메인글: 익명으로 예시(글비밀번호 사용합니다.) , 댓글 : 실명으로 예시(로그인을 해야 글작성,삭제 할수 있습니다.) -->
	<%@include file="../front/header.jsp" %>
	<%@include file="../admin/adminNav.jsp" %>
	
	
<main>

	<h2 style="text-align: center; width: 100%; background-color:navy; color:white; 
	padding: 20px 20px;">관리자 답변하기</h2>

	<table style="margin: auto; border: 4px yellow; border-style: solid; width: 1200px; padding: 10px;
	  border-spacing: 10px 10px 10px 10px;">
		<tr>
		<td> <strong>문의날짜</strong></td> 
		<td> ${bean.wdate } </td>
		</tr>
		<tr>
		<td> <strong>작성자</strong> </td> 
		<td>${bean.writer}</td>
		</tr>
		<tr>
		<td> <strong>답변받을 이메일</strong></td> 
		<td>${bean.email}</td>
		</tr>
		<tr>
		<td> <strong>제목</strong></td> 
		<td>${bean.subject}</td>
		</tr>
		<tr>
		<td>  <strong>문의한 내용보기</strong></td> 
		<td>${bean.content}</td>
		</tr>
	</table>
	</main>

	<input type="submit" value="답변하기" onclick="location.href='https://mail.naver.com';" size="50" class="button" >
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<%@include file="../front/footer.jsp"%>
</body>
</html>