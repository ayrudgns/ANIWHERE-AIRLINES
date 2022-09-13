<%@page import="dao.CSN_dao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="vo.CSN"%>
<%@page import="vo.Comment"%>
<%@page import="dao.CommentDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pageNo = Integer.parseInt(request.getParameter("page"));

	
	
	
	
	CSN_dao csndao = CSN_dao.getInstance();
	csndao.readcountUp(idx);
	CSN bean = csndao.getDetail(idx);
	request.setAttribute("page", pageNo);
	request.setAttribute("bean", bean);
	
	pageContext.forward("commuDetailView.jsp");		//화면 페이지로 애트리뷰트와 함께 요청 전달.

%>