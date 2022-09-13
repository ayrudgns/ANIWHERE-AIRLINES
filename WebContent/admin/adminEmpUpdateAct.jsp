<%@page import="dao.EmpDao"%>
<%@page import="vo.EmployeeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int emp_no = Integer.parseInt(request.getParameter("emp_no"));
	EmployeeVO vo = new EmployeeVO(0, emp_no, request.getParameter("emp_name"), request.getParameter("emp_class"),
			request.getParameter("emp_tel"), null, null, null, request.getParameter("emp_addr"));
	// out.print(vo);
	EmpDao dao = EmpDao.getInstance();
	
	int cnt = dao.update(vo);
	out.print("<script>");
	if(cnt == 1) {
		out.print("alert('직원 정보 수정이 완료되었습니다.');");
		out.print("location.href='adminEmployee.jsp';");
	} else {
		out.print("alert('직원 정보 수정 실패');");
		out.print("history.back();");
	}
	out.print("</script>");

%>
