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
String Myname = request.getParameter("Myname");
String phoneNum = request.getParameter("phoneNum");
if(phoneNum.contains("-")==false){
	phoneNum=phoneNum.substring(0,3)+"-"+phoneNum.substring(3,7)+"-"+phoneNum.substring(7);
}
CustomDao dao = CustomDao.getInstance();
Map<String,String> map = new HashMap<>();
	map.put("KOR_NAME",Myname);
	map.put("PHONE",phoneNum);
if(code!=null){
String sessionCode = (String)(session.getAttribute("code"));
if(code.equals(sessionCode)){
	String id = dao.yourId(map);
	if(id==null){
		out.print("<script>");
		out.print(" window.close();");
		out.print("alert('애니웨어 회원이 아닙니다.')");
		out.print("</script>");
	
	}else if(id.length()>30){
		out.print("<script>");
		out.print(" window.close();");
		out.print("alert('sns간편가입 대상입니다.')");
		out.print("</script>");
		
		
	}else{
	
	
		out.print(id);
	
	
	
	

	

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