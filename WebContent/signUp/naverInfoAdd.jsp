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
<link rel="stylesheet" href="../css/signUp2.css">
    <link rel="stylesheet" href="../css/signUp.css">
      <link rel="stylesheet" href="../css/login.css">
<div class="wrap">
 <div class="title">
        <h2>네이버 간편가입을 위한 추가정보를 입력해주세요.</h2>
    </div>
    <div  style="border:solid thin grey; border-radius:10px; height: 300px; width:500px; margin: 70px auto 100px auto; text-align: center">
    
<form  id="naverSignUp" action="memberInfoAction2.jsp" onsubmit="check()">
<div style="margin:30px;">영문명<input required="required" style="margin-left:30px; border:solid thin grey; width: 250px;height: 40px; border-radius: 7px;" type="text" name="engName" ></div>
<div style="margin:30px;">주소<input required="required" style="margin-left:49px; border:solid thin grey;width: 250px;height: 40px; border-radius: 7px; " type="text" name="address1" ></div>
(선택) 이벤트성 문자수신동의 <input type="checkbox" id="term4" name="term4" >
    <input  id="password" name="password" value="naverlogin" style="display: none;">
    <input  id="name" name="name" value="<%=request.getParameter("name")%>" style="display: none;">
      <input  id="id" name="id" value="<%=request.getParameter("id")%>" style="display: none;">
       <input  id="email" name="email" value="<%=request.getParameter("email")%>" style="display: none;">
       <input  id="gender" name="gender" value="<%=request.getParameter("gender")%>" style="display: none;">
       <input  id="birthday" name="birthday" value="<%=request.getParameter("birthday")%>" style="display: none;">
      <input  id="phone" name="phoneNum" value="<%=request.getParameter("phone")%>" style="display: none;">
	 <input  id="tel" name="tel" style="display: none;">      
    <div><button class="loginbt" style="white-space: " type="submit">회원가입</button></div>
             </form>  
             </div>         
<script type="text/javascript">
function check() {
let term4 =document.getElementById('term4')

if(term4.checked){
	term4.value="Y"
			document.getElementById('naverSignUp').submit();
	}else{
		term4.value="N"
			document.getElementById('naverSignUp').submit();
			
	}
}
	</script>

	 <%@include file="../front/footer.jsp" %>   
</body>
</html>