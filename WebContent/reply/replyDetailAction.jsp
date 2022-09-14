<%@page import="vo.ASK"%>
<%@page import="dao.ASK_dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pageNo = Integer.parseInt(request.getParameter("page"));

	
	
	
	
	ASK_dao askdao = ASK_dao.getInstance();
	ASK bean = askdao.getDetail(idx);
	request.setAttribute("page", pageNo);
	request.setAttribute("bean", bean);
	
	
	pageContext.forward("replyDetail.jsp");		//화면 페이지로 애트리뷰트와 함께 요청 전달.

%>