<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../css/infoSearch.css">
</head>
<body>
<%@include file="../front/header.jsp"%>
<div class="searchwrap">
<center>
<div>
<div style="margin:100px 0 50px; font-size: 20px;">아이디/비밀번호를 잊어버리셨나요?</div>

<button class="selectbt" id="idButton" value="<%=request.getParameter("idButton")%>" type="button" onclick="search(1)">아이디 찾기</button>
<button class="selectbt" id="pwButton" type="button" onclick="search(2)">비밀번호 찾기</button>

</div>
<div id="LoadedPage"></div>
<div id="searchid" style="display: none;" >
<div class="yourName">
<form id="yourName" action="memberInfoAction.jsp" target="blankifr">
이름
<input type="text" name="Myname" id="Myname">
휴대폰 번호
<input type="text" name="phoneNum" id="phoneNum">
<div>
<button type="button" onclick="getNum()">인증번호</button>
</div>
</form>
</div>
<div id="codeArea"></div>
<div style="display: none;" id=codeCheck>

<form action="yourId.jsp">
<input type="text" name="codeNum" id="codeNum" placeholder="인증번호를 입력하세요.">
<button type="button" onclick="myId()">아이디찾기</button>
</form>

</div>
</div>
<div  id="searchpw" style="display: none;">

<div>
<div class="yourName">
<form id="yourName2" action="memberInfoAction.jsp" target="blankifr">
아이디
<input type="text" name="MyId" id="MyId">
휴대폰 번호
<input type="text" name="phoneNum" id="phoneNum">

<div>
<button type="button" onclick="getNum2()">인증번호</button>
</div>
</form>
</div>
<div id="codeArea"></div>
<div style="display: none;" id=codeCheck>
<form action="yourPassword.jsp">
<input type="text" name="codeNum" id="codeNum" placeholder="인증번호를 입력하세요.">
<button type="button" onclick="myPassword()">비밀번호찾기</button>
</form>
</div>
</div>
</div>
</center>
</div>
	<%@include file="../front/footer.jsp"%>
<script src="login.js"></script>
<script type="text/javascript">
if (idButton.value==1) {
    document.getElementById("LoadedPage").innerHTML = document.getElementById("searchid").innerHTML;
    idbutton.style.borderLeft="solid thin grey"
		idbutton.style.borderTop="solid thin grey"
		idbutton.style.borderRight="none"
		idbutton.style.borderBottom="none"
		pwbutton.style.borderLeft="solid thin grey"
		pwbutton.style.borderTop="none"
		pwbutton.style.borderRight="none"
		pwbutton.style.borderBottom="solid thin grey"
} else {
	pwbutton.style.borderLeft="solid thin grey"
		pwbutton.style.borderTop="solid thin grey"
		pwbutton.style.borderRight="solid thin grey"
		idbutton.style.borderBottom="solid thin grey"
		idbutton.style.borderLeft="none"
		idbutton.style.borderTop="none"
		idbutton.style.borderRight="none"
		pwbutton.style.borderBottom="none"
    document.getElementById("LoadedPage").innerHTML = document.getElementById("searchpw").innerHTML;
}
</script>
</body>
<iframe name='blankifr' style='display:none;'></iframe>
</html>