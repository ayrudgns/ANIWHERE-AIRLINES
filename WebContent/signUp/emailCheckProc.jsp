<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheckProc.jsp</title>
</head>
<body>
	<div style="text-align: center"></div>
	<h3>* 이메일 중복 확인 결과 *</h3>
<%
	CustomDao dao = CustomDao.getInstance();
   
    String email=request.getParameter("email");
    String eaddress=request.getParameter("eaddress");
    String mail=email+"@"+eaddress;
    int cnt=dao.duplecateEmail(mail);
    out.println("입력 이메일 : <strong>" + mail + "</stong>");
    if(cnt==0){
    	out.println("<p>사용 가능한 이메일입니다.</p>");
	out.println("<a href='javascript:apply(\"" + mail + "\")'>[적용]</a>");
%>

	<script>
    	function apply(mail){
           
            opener.document.regForm.email.value=mail;
            
            window.close(); 
        }
    </script>
 <%
 	}else{
    	out.println("<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>");
    }//if end
 %>
 <hr>
 <a href="javascript:history.back()">[다시시도]</a>
 &nbsp; &nbsp;
 <a href="javascript:window.close()">[창닫기]</a>
 
 </body>
 </html>
