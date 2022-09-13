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
String codeNum = request.getParameter("codeNum");
String code=(String) session.getAttribute("code");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");
String phoneNum = request.getParameter("phoneNum");

if(phoneNum.contains("-")==false){
	phoneNum=phoneNum.substring(0,3)+"-"+phoneNum.substring(3,7)+"-"+phoneNum.substring(7);
}
String term4 = request.getParameter("term4");	
if(codeNum.equals(code)) {
CustomDao dao = CustomDao.getInstance();
int cnt = dao.duplecatePhone(phoneNum);
if(cnt>=1){
	%>
	<script type="text/javascript">
		alert('이미 등록되어있는 휴대폰번호입니다.');
		location.href="memberInformation.jsp"
		</script>
		<%
}
if(gender.equals("F")){
			%>
	<script type="text/javascript">
	location.href='memberInformation2.jsp?name=<%=name%>&gender=F&year=<%=year%>&month=<%=month%>&day=<%=day%>&phoneNum=<%=phoneNum%>&term4=<%=term4%>'
	</script>
<%	
	}else if(gender.equals("M")){
		%>
		<script type="text/javascript">
	location.href='memberInformation2.jsp?name=<%=name%>&gender=M&year=<%=year%>&month=<%=month%>&day=<%=day%>&phoneNum=<%=phoneNum%>&term4=<%=term4%>'
		</script>
	<%			
	}

	
}else{%>
<script type="text/javascript">
	alert('인증이 완료되지 않았습니다.');
	location.href="memberInformation.jsp"
	</script>
	<%
}
	

%> 
</body>
</html>