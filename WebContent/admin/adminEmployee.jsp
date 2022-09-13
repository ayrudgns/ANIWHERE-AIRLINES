<%@page import="vo.EmployeeVO"%>
<%@page import="dao.EmpDao"%>
<%@page import="vo.MembersVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EmpDao dao = EmpDao.getInstance();
	List<EmployeeVO> list = dao.selectEmpList();

	request.setAttribute("list", list);
	pageContext.forward("adminEmployeeList.jsp");
%>