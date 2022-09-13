<%@page import="dao.EmpDao"%>
<%@page import="vo.EmployeeVO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	int seq = Integer.parseInt(request.getParameter("seq"));
	String emp_name = request.getParameter("emp_name");
	String emp_class = request.getParameter("emp_class");
	String emp_tel = request.getParameter("emp_tel");
	Date emp_hire_date = Date.valueOf(request.getParameter("emp_hire_date"));
	Date emp_birth_date = Date.valueOf(request.getParameter("emp_birth_date"));
	String emp_gender = request.getParameter("emp_gender");
	String emp_addr = request.getParameter("emp_addr");
	
	EmpDao dao = EmpDao.getInstance(); 

	EmployeeVO vo = new EmployeeVO(seq, 0, emp_name, emp_class, emp_tel, emp_hire_date, emp_birth_date, emp_gender, emp_addr);
	dao.EmpInsert(vo);
	
	out.print("<script>");
	out.print("alert('직원 등록 완료');");
	out.print("</script>");
	
	response.sendRedirect("adminEmployee.jsp");
%>