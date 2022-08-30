<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
</head>
<body>
<%
//회원관리 페이지(일단 관리자도 일반 이용자처럼 회원가입 해야 한다고 가정하고 회원목록 가져올 때 관리자 아이디는 제외)
String id = (String) session.getAttribute("id");
if(id == null || !id.equals("admin")){ //순서바뀌면 에러발생하므로 항상 null 먼저 비교해야 함
	response.sendRedirect("loginForm.jsp");
}

	MemberDao mdao = new MemberDao();
	
	mdao.getMemberList();
	ArrayList memberList = mdao.getMemberList();
	%>

<h2>마이페이지</h2>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>나이</td>
		<td>성별</td>
		<td>이메일</td>
		<td>회원가입일</td>
	</tr>
	
	<%
	//반복문 사용해서 멤버리스트 출력
	for(int i=0;i<memberList.size(); i++){
		MemberBean mb = (MemberBean) memberList.get(i);
	%>
	<tr>
		<td><%=mb.getId() %></td>
		<td><%=mb.getPw() %></td>
		<td><%=mb.getName() %></td>
		<td><%=mb.getAge() %></td>
		<td><%=mb.getGender() %></td>
		<td><%=mb.getEmail() %></td>
		<td><%=mb.getReg_date() %></td>
	</tr>
	<%
	}
	%>
</table>
%>
</body>
</html>