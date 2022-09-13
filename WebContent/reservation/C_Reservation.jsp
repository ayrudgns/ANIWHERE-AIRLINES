<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매내역 조회</title>
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
	line-height: 150px;
}

.find_title h2{
	text-align:center;
	line-height:25px;
}
.res_list {
	border-style:solid;
	border-width:1px;
	border-color:gray;
	width:100%;
	border-collapse:separate;
	border-spacing: 0;
}

.res_list th {
	padding: 0 25px;
    border-bottom: 1px solid #ddd;
   	background-color: lime;
    color: #fff;
    font-size: 20px;
    text-align: center;
    font-weight: normal;
}

.res_list td {
	padding: 15px 25px;
    border-bottom: 1px solid #ddd;
}

input[type="number"] {
    	height: 44px;
    	padding: 0 15px;
    	margin-right: 10px;
    	font-size: 16px;
    	line-height: 40px;
    	background: #f3f3f3;
    				
}

button[id="btn_find_res"] {
		margin-top: 40px;
		margin-right: 15px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: skyblue;
		cursor: pointer;
}

.find_res {
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
<h3><img src="../image/projectLogo.png" alt="projectLogo"></img>예매 내역 조회</h3><br>
</div>
<main>
<div class="find_title">
	<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
	<h2>회원번호를 입력하여 회원님의 예매 내역을 확인하실 수 있습니다.</h2><br>
</div>
<form name="res_find" method="post">
<table class="res_list">
	<tr>
		<th>회원번호</th>
		<td><input type="number" name="mem_no" placeholder="회원번호를 입력해주세요." title="회원번호" style="width:200px; text-transform:none; ime-mode:disabled;"/></td>
	</tr>
</table>
<div class="find_res">
<button id="btn_find_res" name="enter" onclick="res_search()">조회</button>
</div>
</form>
<script type="text/javascript">
function res_search(){
	var frm = document.res_find;
	let isValid = true;
	
	if (frm.mem_no.value==''){
		alert("회원번호를 입력해주세요.")
		name.focus();
		isValid = false;
	}
	
	frm.action = "C_ReservationList.jsp";
	frm.submit();
}
</script>
</main>
</body>
</html>