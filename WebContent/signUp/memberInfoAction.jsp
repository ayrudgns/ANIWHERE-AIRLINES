<%@page import="com.sun.jdi.Location"%>
<%@page import="dao.authenticationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/login.css">

</head>

<body>
<%
String phoneNum = request.getParameter("phoneNum");

authenticationDao dao = authenticationDao.getInstance();
String code=dao.authentication(phoneNum);
session.setAttribute("code", code);
request.setAttribute("code", code);


%>




    <script src="signUp.js"></script>
</body>
</html>