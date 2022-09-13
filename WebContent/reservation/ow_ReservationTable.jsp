<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매가 완료되었습니다.</title>
<style>
main{
	width: 100%;
	height: 600px;
	background-image: url('../image/projectLogo.png');
	background-repeat: no-repeat;
	background-position: center;
	margin-bottom: 100px;
	opacity: 0.5;
}
.ow_complete{
	text-align: center;
	padding-top: 250px;
	
}

.ow_complete h3{
	color: green;
	font-weight: bold;
	margin-bottom: 35px;
}

.ow_complete h4{
	margin-bottom: 200px;
}

.back{
	text-align : center;
}

.back > button{
	width: 110px;
	height: 45px;
	border-radius: 10px;
	background: lime;
	color: white;
	font-weight: bold;
	font-size: 15pt;
}

.logo {
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>
<body>
<%@include file="../front/header.jsp" %>
<main>
<div class="ow_complete">
<h3>[편도]예매가 완료되었습니다.</h3>
<h4>좌석은 체크인 시 <b style="color: red;">무작위로</b> 배정됩니다. 이용해주셔서 감사합니다.</h4>
</div><br>

<div class="back">
<button class="back_btn" onclick="location.href='../front/index.jsp;'">홈으로</button>
</div>
</main>
<%@include file="../front/footer.jsp" %>
</body>
</html>