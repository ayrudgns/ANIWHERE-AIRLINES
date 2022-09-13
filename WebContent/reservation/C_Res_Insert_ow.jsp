<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- 탑승객이 다수일 경우, 성인 대표와 미성년자 대표 정보만 기입하도록 구현. 비회원인 경우도 있기 때문. -->
<style type="text/css">
body {
	height: 100%;
}

.container h3 {
		margin:60px 0 50px 0;
		font-size:40px;
		color:black;
		text-align:center;
		font-weight:normal;
		line-height:1;
}
				
.container h4 {
		padding-top: 25px;
		font-size: 28px;
    	color: #000;
    	line-height: 1;
    	font-weight: bold;
}

.attention {
		padding : 25px 50px 25px 50px;
		border-top:1px solid #ddd; 
		border-bottom:1px solid #ddd;
}

.attention > li:first-child {
		margin-top: 0;
		margin-bottom: 0;
		padding-left: 13px;
    	text-indent: -10px;
   		line-height: 1.5;
    	font-size: 15px;
    	font-weight: normal;
    	color: #555;
}

.table_form {
		border-style:solid;
		border-width:1px;
		border-color:gray;
		width:100%;
		border-collapse:separate;
		border-spacing: 0;
}

.table_form th {
		padding: 25px 25px;
    	border-bottom: 1px solid #ddd;
   		background-color: #6d6e70;
    	color: #fff;
    	font-size: 16px;
    	text-align: center;
    	font-weight: normal;
}

.table_form td {
		padding: 15px 25px;
    	border-bottom: 1px solid #ddd;
}
				
.table_form td.rdps {
		padding: 25px 25px;
}

input[type="radio"] + label {
		height: 20px;
		padding: 0 25px;
    	font-size: 16px;
    	vertical-align: middle;
    	line-height: 18px;
}

input[type="text"] {
    	height: 44px;
    	padding: 0 15px;
    	margin-right: 10px;
    	font-size: 16px;
    	line-height: 40px;
    				
}

input[type="number"] {
    	height: 44px;
    	padding: 0 15px;
    	margin-right: 10px;
    	font-size: 16px;
    	line-height: 40px;
    				
}					

select {
	    height: 46px;
    	padding: 0 45px 0 15px;
    	margin-right: 10px;
    	border: 1px solid #f3f3f3;
    	border-bottom: 1px solid #ddd;
    	background: #f3f3f3 url(../image/common/bg_select_arrow.png) no-repeat right 13px top 50%;
    	background-size: 12px 8px;
    	color: #222;
    	vertical-align: middle;
}
button {
		cursor: pointer;
}
button[id="search"] {
		width: 150px;
  		height: 40px;
  		font-size:18px;
  		font-family: 'Nanum Gothic';
  		color: black;
  		text-align: center;
  		background: #f3f3f3;
  		border: solid 2px grey;
  		border-radius: 5px;
  		padding-bottom: 3px;
}

button[id="next"]{
		float: right;
		margin-top: 30px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: blue;
}

button[id="cancel"]{
		float: right;
		margin-top: 30px;
		margin-left: 20px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: red;
}

hr {
	margin-top: 500px;
}
</style>
</head>
<body>
	<%@include file="../front/header.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String ap_name = request.getParameter("ap_name");
		String d_port = request.getParameter("d_port");		/* resConfirm.jsp 에서 가져온 파라미터 */
		String a_port = request.getParameter("a_port");		/* line 181로 가보자 */
		String d_time = request.getParameter("d_time");
		String a_time = request.getParameter("a_time");
	%>
<main>
<div class="container" id="container">
	<h3>탑승자 정보</h3> 
		<ul class="attention">
			<li>비행기 예약 전, 탑승 시 주의사항을 확인해주세요! 임산부 만기나 환자 등 일부 고객님은 이용이 제한될 수 있습니다!&nbsp; 
			<a href="" rel="" target="_blank">주의사항 보러가기</a></li> 
		</ul>

					
<div>
	<h4>성인(대표)</h4> 
</div><br>
<form action="C_Res_InsertAct_ow.jsp" method="post">
	<input type="hidden" name="ap_name" value="<%= ap_name %>">		<!-- value값 저장 + post로 넘기기 -->
	<input type="hidden" name="d_port" value="<%= d_port %>">		
	<input type="hidden" name="a_port" value="<%= a_port %>">
	<input type="hidden" name="d_time" value="<%= d_time %>">
	<input type="hidden" name="a_time" value="<%= a_time %>">
	<table class="table_form" id="table_passenger">
	<colgroup>
	<col style="width:180px;">
	<col style="auto;">
	</colgroup>
	<tbody>
		<tr>
			<th>성별</th> 
			<td class="rdps">
				<input type="radio" name="gender" value="M" id="male"><label>남성</label>
                <input type="radio" name="gender" value="F" id="female"><label>여성</label> 
			</td>
		</tr>
		<tr>
			<th>이름</th> 
			<td>
				<input type="text" id="occupant" name="occupant" placeholder="이름(한글)" title="성" style="width:300px; text-transform:none; ime-mode:disabled;"/>
			</td>
		</tr>					
		<tr>
			<th>생년월일</th> 
			<td>
				<select name="birth_year" id="birth_year" style="width: 240px;">
				<option value="">년</option>
				<option value="2022"> 2022</option>
				<option value="2021"> 2021</option>
				<option value="2020"> 2020</option>
				<option value="2019"> 2019</option>
				<option value="2018"> 2018</option>
				<option value="2017"> 2017</option>
				<option value="2016"> 2016</option>
				<option value="2015"> 2015</option>
				<option value="2014"> 2014</option>
				<option value="2013"> 2013</option>
				<option value="2012"> 2012</option>
				<option value="2011"> 2011</option>
				<option value="2010"> 2010</option>
				<option value="2009"> 2009</option>
				<option value="2008"> 2008</option>
				<option value="2007"> 2007</option>
				<option value="2006"> 2006</option>
				<option value="2005"> 2005</option>
				<option value="2004"> 2004</option>
				<option value="2003"> 2003</option>
				<option value="2002"> 2002</option>
				<option value="2001"> 2001</option>
				<option value="2000"> 2000</option>
				<option value="1999"> 1999</option>
				<option value="1998"> 1998</option>
				<option value="1997"> 1997</option>
				<option value="1996"> 1996</option>
				<option value="1995"> 1995</option>
				<option value="1994"> 1994</option>
				<option value="1993" >1993</option>
				<option value="1992"> 1992</option>
				<option value="1991"> 1991</option>
				<option value="1990"> 1990</option>
				<option value="1989"> 1989</option>
				<option value="1988"> 1988</option>
				<option value="1987"> 1987</option>
				<option value="1986"> 1986</option>
				<option value="1985"> 1985</option>
				<option value="1984"> 1984</option>
				<option value="1983"> 1983</option>
				<option value="1982"> 1982</option>
				<option value="1981"> 1981</option>
				<option value="1980"> 1980</option>
				</select>
				<select name="birth_month" id="birth_month" style="width: 240px;">
					<option value="">월</option>
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<select name="birth_day" id="birth_day" style="width: 240px;">
					<option value="">일</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				</td>
			</tr>
			<tr>
				<th>회원번호</th>
				<td>
				<input type="number" id="mem_no" name="mem_no" placeholder="회원번호" title="회원번호" style="width:300px; text-transform:none; ime-mode:disabled;"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button id="search" type="button" onclick="find_memberNum()">회원번호 찾기</button>
				</td>
			</tr>
	</tbody>
	</table>
	<br>
	<br>
	<hr>
	<div>
	<h4>미성년자(대표)</h4> 
</div><br>

	<table class="table_form" id="table_passenger">
	<colgroup>
	<col style="width:180px;">
	<col style="auto;">
	</colgroup>
	<tbody>
		<tr>
			<th>성별</th> 
			<td class="rdps">
				<input type="radio" name="gender" value="male" id="lblmale"><label>남성</label>
                <input type="radio" name="gender" value="female" id="lblfemale"><label>여성</label> 
			</td>
		</tr>
		<tr>
			<th>이름</th> 
			<td>
				<input type="text" id="txtLastName1" name="txtLastName" placeholder="이름(한글)" title="성" style="width:300px; text-transform:none; ime-mode:disabled;"/>
			</td>
		</tr>					
		<tr>
			<th>생년월일</th> 
			<td>
				<select style="width: 240px;">
				<option value="">년</option>
				<option value="2022"> 2022</option>
				<option value="2021"> 2021</option>
				<option value="2020"> 2020</option>
				<option value="2019"> 2019</option>
				<option value="2018"> 2018</option>
				<option value="2017"> 2017</option>
				<option value="2016"> 2016</option>
				<option value="2015"> 2015</option>
				<option value="2014"> 2014</option>
				<option value="2013"> 2013</option>
				<option value="2012"> 2012</option>
				<option value="2011"> 2011</option>
				<option value="2010"> 2010</option>
				<option value="2009"> 2009</option>
				<option value="2008"> 2008</option>
				<option value="2007"> 2007</option>
				<option value="2006"> 2006</option>
				<option value="2005"> 2005</option>
				<option value="2004"> 2004</option>
				<option value="2003"> 2003</option>
				<option value="2002"> 2002</option>
				<option value="2001"> 2001</option>
				<option value="2000"> 2000</option>
				<option value="1999"> 1999</option>
				<option value="1998"> 1998</option>
				<option value="1997"> 1997</option>
				<option value="1996"> 1996</option>
				<option value="1995"> 1995</option>
				<option value="1994"> 1994</option>
				<option value="1993" >1993</option>
				<option value="1992"> 1992</option>
				<option value="1991"> 1991</option>
				<option value="1990"> 1990</option>
				<option value="1989"> 1989</option>
				<option value="1988"> 1988</option>
				<option value="1987"> 1987</option>
				<option value="1986"> 1986</option>
				<option value="1985"> 1985</option>
				<option value="1984"> 1984</option>
				<option value="1983"> 1983</option>
				<option value="1982"> 1982</option>
				<option value="1981"> 1981</option>
				<option value="1980"> 1980</option>
				</select>
				<select style="width: 240px;">
					<option value="">월</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<select style="width: 240px;">
					<option value="">일</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				</td>
			</tr>
			<tr>
				<th>회원번호</th>
				<td>
				<input type="number" id="mem_no" name="mem_no" placeholder="회원번호" title="회원번호" style="width:300px; text-transform:none; ime-mode:disabled;"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button id="search" type="button" onclick="find_memberNum()">회원번호 찾기</button>
				</td>
			</tr>
	</tbody>
	</table>
		<button id="cancel" type="button" onclick="reservationcancel()">취소</button>
		<button id="next">다음</button>
	</form>
	<script type="text/javascript">
	function find_memberNum(){
		window.open('MemNumFind.jsp','','width=550, height=550, top=200, left=750, location=no, status=no');
	}

	function reservationcancel(){
		var cancel = confirm("예매 등록을 취소하시겠습니까?");
		
		if(cancel == true){
			alert("예매 등록이 취소되었습니다.");
			location.href="../front/index.jsp";
		}
		else{
			alert("예매 등록을 원하시면 정보를 입력한 후, 다음 버튼을 눌러주세요.");
		}
	}
	
	</script>				
</div>
</main>
<br>
<br>
<br>
<br>
<br>
<br>
	<%@include file="../front/footer.jsp" %>
</body>
</html>