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
<title>글 상세보기</title>
</head>
<body>  <!-- 메인글: 익명으로 예시(글비밀번호 사용합니다.) , 댓글 : 실명으로 예시(로그인을 해야 글작성,삭제 할수 있습니다.) -->
	<%@include file="../front/header.jsp" %>
<main>
<h1 style="text-align: center; padding: 30px 40px; 
 border-bottom-style: solid;"> ${bean.title}</h1>

	<div style="width: 100%; margin: auto; text-align: center;">
				<ul  class="row">
					<li style="list-style: none; padding: 20px 20px;"> <strong>조회수 : ${bean.readCount}</strong></li>
				</ul>
			
			
				<ul class="row">
					<li style="list-style: none; padding-bottom:  30px"> <strong>작성일자 : <fmt:formatDate value="${bean.wdate }" type="both"/> </strong></li>
				</ul>
			
				<ul>	
					<li style="list-style: none; ">
						<pre>${bean.content}</pre>
					</li>				
				</ul>
				</li>
	
		
	</div>
	
	</main>
<%@include file="../front/footer.jsp"%>
</body>
</html>