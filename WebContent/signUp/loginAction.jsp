<%@page import="vo.MembersVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password= request.getParameter("password");
	
	CustomDao dao = CustomDao.getInstance();
	Map<String,String> map = new HashMap<>();
	map.put("id",id);
	map.put("password",password);
	
	out.print("<script>");
	MembersVO vo = dao.login(map);
	if(vo!=null){
		session.setAttribute("user", vo.getKor_name());
	//	request.setAttribute("user",vo);
	      session.setAttribute("user_id", vo.getId());   
	//      request.setAttribute("u_id", vo.getId());
		out.print("location.href='../front/index.jsp';");
		out.print("alert('로그인했습니다.');");
		
		
	}else{
		out.print("location.href='./loginView.jsp';");
		out.print("alert('계정정보가 잘못되었습니다.');");
		
	}
	out.print("</script>");
	

%>
