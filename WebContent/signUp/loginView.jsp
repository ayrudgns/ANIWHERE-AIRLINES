<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  
     <link rel="stylesheet" href="../css/login.css">
</head>
<body>
   <%
    String clientId = "Tmz_8Y1uJY7OpQnTb7hz";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/aniwhere-airlines/signUp/naverlogin.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
<div class="loginwrap">	
 <div><a href="../front/index.jsp"><img class="logo" src="../image/projectLogo.png" alt="projectLogo"></a></div>
<div class="loginArea">
<form action="./loginAction.jsp" method="post" id="login">

    <h1>로그인</h1>
    <table class="login">
        <tr>
           <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16"
           style="position:relative; top:70px; right: 105px; color:grey">
  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
</svg>
           <td>
            <input name="id" id="id" type="text" placeholder="아이디"></td>
        </tr>
        <tr>
           
           <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16" 
           style="position:relative; top:140px; right: 130px; color:grey ">
  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
</svg>
           <td>
 <input name="password" id="password" type="password" placeholder="비밀번호"></td>
        </tr>
    </table>
    <button class="loginbt" onclick="loginCheck()" type="button">로그인</button>
    <br>
     <img src="../image/btnG_아이콘사각.png" alt="naver-icon" style="width:30px; position: relative; left:15px;">
                <button class="sns" id="naverIdLogin_loginButton" type="button" onclick="location.href='<%=apiURL%>'">네이버 아이디로 로그인</button>
    </form>
    </div>
    <div class="idsearch">
    	<div><a type="button" onclick="location.href='searchId.jsp?idButton=1'">아이디 찾기</a></div>
			<hr style="margin:5px; height:16px;width:1px;color:black;direction:rtl; ">
    	
    	<div>
    <a type="button" onclick="location.href='searchId.jsp?idButton=0'">비밀번호 찾기</a>
    </div>
			<hr style="margin:5px; height:16px;width:1px;color:black;direction:rtl; ">
    <a type="button" onclick="location.href='signUpView.jsp'">회원가입</a>
    </div>
    </div>
   <%@include file="../front/footer.jsp"%>
    <script src="./signUp.js"></script>
</body>
</html>