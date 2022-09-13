<%@page import="vo.CSN"%>
<%@page import="dao.CSN_dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   	request.setCharacterEncoding("UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");		

	CSN_dao csndao = CSN_dao.getInstance();
	CSN bean 
	= new CSN(0,title,content,0,null,0);
	csndao.insert(bean);
	response.sendRedirect("commuListAction.jsp");   //글목록 화면으로 url 재요청. 여기서 바로 뷰로 가면 데이터를 못가져옵니다잊해봐요 
%>