<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../front/header.jsp" %>
<center>
<div style="margin:100px; border:solid 3px lightblue; width: 700px; height: 200px; display: flex; flex-direction:column; justify-content: center; ">
<div><h4>애니웨어 항공에 가입해주셔서 감사합니다</h4></div>

 <br>
 <div>
  ${user}님
  즐거운 여행 되세요
  </div>
  </div>
  </center>
  <%@include file="../front/footer.jsp" %>>
</body>
</html>