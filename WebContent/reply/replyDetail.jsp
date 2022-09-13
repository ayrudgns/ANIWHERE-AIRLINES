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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css?v=3">
</head>
<body>  <!-- 메인글: 익명으로 예시(글비밀번호 사용합니다.) , 댓글 : 실명으로 예시(로그인을 해야 글작성,삭제 할수 있습니다.) -->
	<%@include file="../front/header.jsp" %>
	<%@include file="../admin/adminNav.jsp" %>
<main>

	
	<h2 style="text-align: center; 
	width: 100%; 
	padding: 20px 20px;">문의 내용보기</h2>
	<div style="width: 80%; margin: auto;max-width: 700px;">
		<ul id="main">
			<li>
				<ul class="row">
					<li>제목</li>
					<li>${bean.subject}</li>
					</ul>
					</li>
					
					<li>
						<ul class="row">
					<li>작성자</li>
					<li>${bean.writer}</li>
				</ul>
			</li>
			<li>
					<li>
						<ul class="row">
					<li>답변받을 이메일</li>
					<li>${bean.email}</li>
				</ul>
			</li>
				<ul class="row">
					<li>작성날짜</li>
					<li><fmt:formatDate value="${bean.wdate }" type="both"/></li>
				</ul>
			</li>
			<li id="content">
				<ul>
					<li>내용</li>			
					<!-- textarea에 입력한 엔터는 \n db에도 \n으로 저장됩니다.
					     브라우저 출력은 줄바꿈은 <br> 태그 해결1) pre 태그, 해결  2) \n을 <br>로 대치-->	
					<li>
						<pre>${bean.content}</pre>
					</li>				
				</ul>
				</li>
				</ul>	
	</div>
	</main>
	<input type="submit" value="답변하기" onclick="location.href='https://mail.naver.com';" size="50" class="button" >
	<%@include file="../front/footer.jsp"%>
</body>
</html>