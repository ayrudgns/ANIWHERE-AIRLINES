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
    <link  rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/signUp.css">
</head>

<body>
   <%
    String clientId = "Tmz_8Y1uJY7OpQnTb7hz";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/aniwhere-airlines/signUp/naverCallback.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
	<%@include file="../front/header.jsp" %>
	<div class="wrap" style="margin: 100px auto 150px auto">
    <div class="title">
        <h1>회원가입</h1>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            애니웨어항공을 이용해주셔서 감사합니다.<br>
            애니웨어항공의 회원이 되시면 더 많은 혜택을 받을 수 있습니다.</div>
    </div>
    <div class="signUp">
        <div class="signUp_button">
            <div>
                <h3>애니웨어 회원가입</h3>
                <button class="any-sign" onclick="location.href='TermsOfService.jsp'">회원가입</button>
            </div>
            <hr style=" margin:5px; height:100px;width:1px;color:black;">
            <div>
                <h3>SNS계정 간편가입</h3>
                <img src="../image/btnG_아이콘사각.png" alt="naver-icon" style="width:30px; position: relative; left:15px;">
                <button class="sns" id="naverIdLogin_loginButton" onclick="location.href='<%=apiURL%>'">네이버 아이디로 가입하기</button><br>
               
            </div>
        </div>
    </div>
	</div>
	<%@include file="../front/footer.jsp" %>
    <script src="./main.js"></script>
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
</body>

</html>