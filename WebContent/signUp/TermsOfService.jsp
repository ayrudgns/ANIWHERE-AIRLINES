<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/signUp.css">

</head>
<body>
<%@include file="../front/header.jsp" %>


<div class="wrap">
	
	<div class="title">
	<h3>회원 약관동의</h3>
	<h5>약관 및 정보이용 안내에 동의해주시기 바랍니다.</h5>
	<hr style="width:70%; height: 3px;"/>
	</div>
	<div class="check">
	<input type="checkbox" onclick="checkBox()" id="allcheck">
	애니웨어항공 일반규정,약관 및 본인의 개인정보 수집.이용, 국외 이전, 제 3자 제공에 모두 동의합니다.
	</div>
	
	
	<div class="terms">
	<div class="check">
	<input type="checkbox" id="term1" name="terms">
	<p style="color:#5e2bb8; ">[필수]</p>
	애니웨어항공 일반 규정 및 홈페이지 이용약관
	</div>
		<div>
		<iframe src="./TermsOfService/이용약관1">이용약관1</iframe>
		</div>
	<div class="check">
	<input type="checkbox" id="term2"name="terms">
	<p style="color:#5e2bb8; ">[필수]</p>
	개인정보 수집 및 이용안내
	</div>
		<div>
		<iframe src="./TermsOfService/이용약관2">이용약관2</iframe>
		</div>
		<div class="check">
	<input type="checkbox" id="term3"name="terms">
	<p style="color:#5e2bb8; ">[필수]</p>
	개인정보 국외 이전 동의
	</div>
		<div>
		<iframe src="./TermsOfService/이용약관3">이용약관3</iframe>
		</div>
		<div class="check">
	<input type="checkbox" id="term4"name="terms">
	<p style="color:#5e2bb8; ">[선택]</p>
	마케팅 광고 활용 동의
	</div>
		<div>
		<iframe src="./TermsOfService/이용약관4">이용약관4</iframe>
		</div>
		<div class="check">
	<input type="checkbox" id="term5"name="terms">
	<p style="color:#5e2bb8; ">[선택]</p>
	개인정보 제 3자 제공동의
	</div>
		<div>
		<iframe src="./TermsOfService/이용약관5">이용약관5</iframe>
		</div>
	</div>
	<div class="signUpButton">
	<button style="background-color: white;" onclick="location.href='../front/index.jsp'">취소</button>
	<button style="background-color: #5e2bb8;color: white;" onclick="termsCheck()">동의</button>
	</div>
</div>
  <%@include file="../front/footer.jsp" %>
 <script src="./signUp.js"></script>
</body>
</html>