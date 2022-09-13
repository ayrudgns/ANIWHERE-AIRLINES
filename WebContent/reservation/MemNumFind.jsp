<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원번호 찾기</title>
<style>

img {
	width: 100px;
	height: 100px;
	vertical-align: middle;
}
.title h3{
	text-align: center;
	font-size: 25pt;
	border-bottom:1px solid #ddd;
	line-height: 120px;
}

.find_title h2{
	text-align:center;
	line-height:25px;
}
.mem_no_search {
	border-style:solid;
	border-width:1px;
	border-color:gray;
	width:100%;
	border-collapse:separate;
	border-spacing: 0;
}

.mem_no_search th {
	padding: 0 25px;
    border-bottom: 1px solid #ddd;
   	background-color: lime;
    color: #fff;
    font-size: 20px;
    text-align: center;
    font-weight: normal;
}

.mem_no_search td {
	padding: 15px 25px;
    border-bottom: 1px solid #ddd;
}

input[type="text"] {
    	height: 44px;
    	padding: 0 15px;
    	margin-right: 10px;
    	font-size: 16px;
    	line-height: 40px;
    	background: #f3f3f3;
    				
}

button[id="btn_find_num"] {
		margin-top: 40px;
		margin-right: 15px;
		width: 200px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: green;
		cursor: pointer;
}

button[id="btn_cancel"] {
		margin-top: 40px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: lime;
		cursor: pointer;
}

.num_search {
		text-align: center;
}

.find_title h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

</style>
</head>
<body>
<div class="title">
<h3><img src="../image/projectLogo.png" alt="projectLogo"></img>회원번호 찾기</h3><br>
</div>
<main>
<div class="find_title">
	<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3><br>
	<h2>이름과 아이디를 입력해주세요.</h2><br>
</div>
<form name="mn_find" method="post">
<table class="mem_no_search">
	<tr>
		<th>이름</th>
		<td><input type="text" name="kor_name" placeholder="이름(한글)" title="한글명" style="width:200px; text-transform:none; ime-mode:disabled;"/></td>
	</tr>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" placeholder="아이디" title="아이디" style="width:200px; text-transform:none; ime-mode:disabled;"/></td>
	</tr>
</table>
<div class="num_search">
<button id="btn_find_num" name="enter" onclick="mn_search()">회원번호 찾기</button>
<button id="btn_cancel" name="cancel" onclick="self.close()">취소</button>
</div>
</form>
<script type="text/javascript">
function mn_search(){
	var frm = document.mn_find;
	let isValid = true;
	
	if (frm.kor_name.value==''){
		alert("이름을 입력해주세요.")
		name.focus();
		isValid = false;
	}
	
	if (frm.id.value==''){
		alert("아이디를 입력해주세요.")
		id.focus();
		isValid = false;
	}
	
	frm.action = "MemNumView.jsp";
	frm.submit();
}
</script>
</main>
</body>
</html>