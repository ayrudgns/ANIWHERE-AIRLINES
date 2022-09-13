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
if(code!=null){
String sessionCode = (String)(session.getAttribute("code"));
out.print("<script>");
if(code.equals(sessionCode)){
	
	session.setAttribute("check", "ok");
	request.setAttribute("check", "ok");
	
	
	out.print("alert('인증이 완료되었습니다.');");
	
}else if(code!=sessionCode){
	
	session.setAttribute("check", "no");
	request.setAttribute("check", "no");
	
	
	out.print("alert('인증번호가 틀렸습니다.');");
}
out.print("</script>");
}

%>
</body>
</html>