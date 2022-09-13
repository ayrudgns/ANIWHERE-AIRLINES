<%@page import="dao.C_ResDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int res_no = Integer.parseInt(request.getParameter("res_no"));	

	C_ResDao dao = C_ResDao.getInstance();
	int result = dao.deleteRes(res_no);
	
	String mes;
	String href;
	if(result == 1) {
		mes = "예매 정보가 삭제되었습니다.";
		href = "C_Reservation.jsp";
	} else {
		mes = "예매 삭제를 취소하셨습니다.";
		href = "history.back()";
	}

	out.print("<script>");
	out.print("alert('" + mes + "');");
	out.print("location.href='" + href + "';");
	out.print("</script>");	
	
%>