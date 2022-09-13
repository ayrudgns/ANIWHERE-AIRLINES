<%@page import="dao.ASK_dao"%>
<%@page import="java.util.function.Function"%>
<%@page import="vo.ASK"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">

<%
   	request.setCharacterEncoding("UTF-8");
	
	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");		
	String email = request.getParameter("email");
	
	ASK_dao ask = ASK_dao.getInstance();
	ASK bean 
	= new ASK(0,subject,writer,content,email,null);
	ask.insert(bean);
	response.sendRedirect("ask.jsp");   
	
	

%>


</body>
</html>