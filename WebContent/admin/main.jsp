<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	String name = request.getParameter("name");
	
	//id없는 경우 로그인페이지로 이동
	if(id == null){
		response.sendRedirect("loginForm.jsp");
}
%>
	<h2><%=id %>님 환영합니다.</h2>
	<%=name %><br>
	
	<input type="button" value="회원정보조회" onclick="location.href=<!-- '회원정보조회페이지' -->">
	<input type="button" value="회원정보수정" onclick="location.href=<!-- '회원정보수정페이지' -->">
	<input type="button" value="로그아웃" onclick="location.href=<!-- '로그아웃페이지' -->">
	<input type="button" value="회원탈퇴" onclick="location.href=<!-- '회원탈퇴페이지' -->">
	
	<!-- 관리자인 경우만 가능 -->
<% 
	if(id != null && id.equals("admin")){ 
		%>
		<input type="button" value="회원전체목록(관리자용)" onclick="location.href='memberList.jsp'">
		<%
	}
%>
</body>
</html>