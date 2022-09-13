<%@page import="vo.MembersVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	CustomDao dao = CustomDao.getInstance();
	List<MembersVO> list = dao.selectCusList();
	
	request.setAttribute("list", list);
	pageContext.forward("adminCustomList.jsp");
%>