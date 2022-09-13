<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="dao.C_ResDao"%>
<%@page import="dao.A_ResDao"%>
<%@page import="vo.CustomPlanVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.ow_confirm h2{
	padding-top : 20px;
	text-align : center;
	line-height : 20px;
}

.ow_confirm h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

.ow_confirm_table{
	text-align : center;
	border: 1px solid #444444;
	width: 55%;
	margin-left : auto;
	margin-right : auto;
	border-collapse: collapse;
	
}
.ow_confirm_table th, td{
	border : 1px solid #444444;
	height : 45px;
}

.ow_confirm_table th{
	width: 60%;
}

.ow_confirm h4{
	text-align : center;
	padding-top : 20px;
	line-height : 25px;
}
.ow_confirm_btn{
	text-align : center;
}

button[id="ow_next_to"]{
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: blue;
		cursor: pointer;
}

button[id="ow_cancel_to"]{
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		margin-left: 20px;
		width: 100px;
		height: 50px;
		border-radius: 5px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		background: red;
		cursor: pointer;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main class="ow_confirm">
<h2>[편도]선택하신 항공편 정보를 확인해주세요.</h2>
<br>
<hr>
<%
	request.setCharacterEncoding("utf-8");
	
	String ap_name = request.getParameter("ap_name");
	String dep_port = request.getParameter("dep_port");
	String arr_port = request.getParameter("arr_port");
	// Timestamp dep_time_t = Timestamp.valueOf(request.getParameter("dep_time"));
	Date dep_time_d = Date.valueOf(request.getParameter("dep_time"));
	int seat_count = Integer.parseInt(request.getParameter("seat_count"));
	String seat_level = request.getParameter("seat_level");
	
	CustomPlanVO vo = new CustomPlanVO(0, ap_name, null, dep_time_d, null, null, dep_port, arr_port);
	
	A_ResDao dao = A_ResDao.getInstance();	
	List<CustomPlanVO> alist = dao.airSelect(vo);
	// @SuppressWarnings("unchecked")
	// List<CustomPlanVO> list = (List<CustomPlanVO>) request.getAttribute("list");
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM월 dd일 HH시 SS분");
%>
<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
<h4>원하시는 비행일정을 선택해주세요.</h4>
<br>
<div class="ow_confirm_div">
<!-- <form method="post" action="ow_airSelect.jsp"> -->
<form action="">		<!-- 이 폼은 데이터 안넘긴다. -->
<table class="ow_confirm_table" id="ow_list">
	<tr>
		<th style="width: 15%;">항공편명</th>
		<th style="width: 10%;">출발공항</th>
		<th style="width: 10%;">도착공항</th>
		<th style="width: 25%;">출발일자</th>
		<th style="width: 25%;">도착일자</th>
		<th style="width: 10%;">선택</th>
	</tr>
	<%	
		for(CustomPlanVO avo : alist) {
	%>
	<tr>
		<td><%=avo.getAp_name() %></td>
		<td><%=avo.getDep_port() %></td>
		<td><%=avo.getArr_port() %></td>
		<td><%= sdf.format(avo.getDep_time()) %></td>
		<td><%= sdf.format(avo.getArr_time()) %></td>
		<td><button type="button" class="checkBtn" value="선택">선택</button></td>
	</tr>
	<%
		}	
	%>
</table><br>
</form>
<!-- 버튼 선택 결과 출력 -->
<div class="col-lg-12" id="ex2_Result1" style="text-align: center;"></div><br>
<form action="../reservation/C_Res_Insert_ow.jsp" method="post">	<!-- 히든 속성으로 숨기고 네임값 넘긴다. -->
	<input type="hidden" name="ap_name">
	<input type="hidden" name="d_port">
	<input type="hidden" name="a_port">
	<input type="hidden" name="d_time">
	<input type="hidden" name="a_time">
<br>
<div class="ow_confirm_btn">
<button id="ow_next_to" type="submit" onclick="gofunction()">다음</button>	<!-- 표시 -->
<button id="ow_cancel_to" type="button" onclick="backfunction()">취소</button>
</div><!-- 표시 -->
</form>		
<script type="text/javascript">
function gofunction(){
	var result = confirm("예매를 계속 진행하시겠습니까?");
	
	if(result == true){
		document.forms[0].submit();
		location.href="../reservation/C_Res_Insert_ow.jsp";
	}
	else {
		alert("예매를 계속하고 싶으시면 확인을 눌러주세요.");		
	}
}

function backfunction(){
	var cancel = confirm("예매 등록을 취소하시겠습니까?");
	
	if(cancel == true){
		alert("예매 등록이 취소되었습니다.");
		location.href="../front/index.jsp";
	}
	else{
		alert("예매 정보가 맞으시다면 다음 버튼을 눌러주세요.");
	}
}

$(".checkBtn").click(function(){ 
    var str = ""
    var tdArr = new Array();    // 배열 선언
    var checkBtn = $(this);
    
    // checkBtn.parent() : checkBtn의 부모는 <td>이다.
    // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
    var tr = checkBtn.parent().parent();
    var td = tr.children();
    
    console.log("클릭한 Row의 모든 데이터 : "+tr.text());
    
    
    var apname = td.eq(0).text();
    var depport = td.eq(1).text();
    var arrport = td.eq(2).text();
    var deptime = td.eq(3).text();
    var arrtime = td.eq(4).text();
        
    document.forms[1].ap_name.value = apname;
    document.forms[1].d_port.value = depport;
    document.forms[1].a_port.value = arrport;
    document.forms[1].d_time.value = deptime;
    document.forms[1].a_time.value = arrtime;
    
    
    // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
    td.each(function(i){    
        tdArr.push(td.eq(i).text());
    });
    
    console.log("배열에 담긴 값 : "+tdArr);
    

    str +=	" 항공편명 : <font name='apname' value=" + apname + " color='red'>" + apname + "</font>" +
    		" 출발공항 : <font name='depport' value=" + depport + " color='red'>" + depport + "</font>" +
            " 도착공항 : <font name='arrport' value=" + arrport + " color='red'>" + arrport + "</font>" +
            " 출발일자 : <font name='deptime' value=" + deptime + " color='red'>" + deptime + "</font>" +
            " 도착일자 : <font name='arrtime' value=" + arrtime + " color='red'>" + arrtime + "</font>";        
    
    $("#ex2_Result1").html(str);    
});
</script>
</div>
<h4>입력된 정보가 맞으시다면 [다음]버튼을 눌러 예매 과정을 진행해 주시고<br>입력된 정보가 맞지 않다면 [취소]버튼을 눌러 주시기 바랍니다.</h4>
</main>
</body>
</html>