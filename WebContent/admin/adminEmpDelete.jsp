<%@page import="dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int emp_no = Integer.parseInt(request.getParameter("emp_no"));

	EmpDao dao = EmpDao.getInstance();
	int result = dao.EmpDelete(emp_no);
	
	String mes;
	String href;
	if(result == 1) {
		mes = "직원 정보가 삭제되었습니다.";
		href = "adminEmployee.jsp";
	} else {
		mes = "직원 정보 삭제 실패!";
		href = "history.back()";
	}

	out.print("<script>");
	out.print("alert('" + mes + "');");
	out.print("location.href='" + href + "';");
	out.print("</script>");	
	
%>