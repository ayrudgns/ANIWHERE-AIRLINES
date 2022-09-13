<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.C_ResDao"%>
<%@page import="vo.C_ResVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int res_no = Integer.parseInt(request.getParameter("res_no"));
	int seat_count = Integer.parseInt(request.getParameter("seat_count"));
	
	C_ResVO vo = new C_ResVO(res_no,0,0,request.getParameter("ap_name"),null,null,seat_count,null,null);

	C_ResDao dao = C_ResDao.getInstance();
	
	int upRes = dao.update(vo);
	out.print("<script>");
	if(upRes == 1) {
		out.print("alert('예매 정보 수정이 완료되었습니다.');");
		out.print("location.href='C_Reservation.jsp';");
	} else {
		out.print("alert('예매 정보 수정을 실패했습니다.');");
		out.print("history.back();");
	}
	out.print("</script>");
%>