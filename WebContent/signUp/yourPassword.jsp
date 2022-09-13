<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String code = request.getParameter("codeNum");
String id = request.getParameter("MyId");
String phoneNum = request.getParameter("phoneNum");
CustomDao dao = CustomDao.getInstance();
Map<String,String> map = new HashMap<>();
	map.put("id",id);
	map.put("PHONE",phoneNum);
if(code!=null){
String sessionCode = (String)(session.getAttribute("code"));
if(code.equals(sessionCode)){
	String password = dao.yourPassword(map);
	if(password==null){
		out.print("<script>");
		out.print(" window.close();");
		out.print("alert('애니웨어 회원이 아닙니다.')");
		out.print("</script>");}
	else if(password.equals("naverlogin")){
		
		out.print("<script>");
		out.print(" window.close();");
		out.print("alert('sns간편가입 대상입니다.')");
		out.print("</script>");
		
	}else{
	
	
		out.print(password);
	
	
	
	

	
out.print("<script>");
}}else if(code!=sessionCode){
	
		out.print("<script>");
		out.print(" window.close();");
		out.print("alert('인증번호가 틀렸습니다.')");
		out.print("</script>");
		
	out.print(sessionCode);
	
}
out.print("</script>");
}

%>
</body>
</html>