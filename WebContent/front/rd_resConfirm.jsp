<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.CustomPlan2VO"%>
<%@page import="java.util.List"%>
<%@page import="dao.A_ResDao"%>
<%@page import="vo.CustomPlanVO"%>
<%@page import="vo.ReservationVO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.rd_confirm h2{
	padding-top : 20px;
	text-align : center;
	line-height : 20px;
}

.rd_confirm h3{
	color : #81c147;
	text-align : center;
	font-size : 25px;
}

.rd_confirm_table{
	text-align : center;
	border: 1px solid #444444;
	width: 45%;
	height: 75px;
	margin-left : auto;
	margin-right : auto;
	border-collapse: collapse;
	
}
.rd_confirm_table th, td{
	border : 1px solid #444444;
	height : 30px;
}

.rd_confirm_table th{
	width: 60%;
}

.rd_confirm h4{
	text-align : center;
	padding-top : 20px;
	line-height : 25px;
}
.rd_confirm_btn{
	text-align : center;
}

button[id="rd_next_to"]{
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

button[id="rd_cancel_to"]{
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
<main class="rd_confirm">
<h2>[왕복]선택하신 항공편 정보를 확인해주세요.</h2>
<br>
<hr>
<%
	request.setCharacterEncoding("utf-8");
	
	String dep_port = request.getParameter("dep_port");
	String arr_port = request.getParameter("arr_port");
	Date dep_time_r = Date.valueOf(request.getParameter("dep_time"));
	Date arr_time_r = Date.valueOf(request.getParameter("arr_time"));
	int seat_count = Integer.parseInt(request.getParameter("seat_count"));
	String seat_level = request.getParameter("seat_level");
	
	CustomPlanVO vo = new CustomPlanVO(0, null, null, dep_time_r, null, null, dep_port, arr_port);
	CustomPlan2VO co = new CustomPlan2VO(0, null, null, dep_time_r, null, null, dep_port, arr_port);
	
	A_ResDao dao = A_ResDao.getInstance();
	A_ResDao cdao = A_ResDao.getInstance();
	
	List<CustomPlanVO> alist = dao.airSelect(vo);
	List<CustomPlan2VO> clist = dao.airselectR(co);
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM월 dd일 HH시 SS분");
	
%>
<h3>ANIWHERE 항공을 이용해주셔서 감사합니다.</h3>
<br>
<form action="../reservation/C_Res_Insert.jsp" method="post">
<div class="rd_confirm_div">
<table class="rd_confirm_table">
<caption style="text-align:left; font-size: 15pt; margin-bottom: 15px;">출발 일정표</caption>
	<tr>
		<th style="width: 5%;">출발공항</th>
		<th style="width: 5%;">도착공항</th>
		<th style="width: 15%;">출발일자</th>
		<th style="width: 15%;">도착일자</th>
		<th style="width: 5%;">선택</th>
	</tr>
	<%	
		for(CustomPlanVO avo : alist) {
	%>
	<tr>
		<td><%=avo.getDep_port() %></td>
		<td><%=avo.getArr_port() %></td>
		<td><%= sdf.format(avo.getDep_time()) %></td>
		<td><%= sdf.format(avo.getArr_time()) %></td>
		<td><button type="button" class="checkBtn" value="선택">선택</button></td>
	</tr>
	<%
		}
	%>
</table>
</div>
<table class="rd_confirm_table">
<caption style="text-align:left; font-size: 15pt; margin-top: 30px; margin-bottom: 15px;">복귀 일정표</caption>
	<tr>
		<th style="width: 5%;">출발공항</th>
		<th style="width: 5%;">도착공항</th>
		<th style="width: 15%;">복귀일자</th>
		<th style="width: 15%;">도착일자</th>
		<th style="width: 5%;">선택</th>
	</tr>
	<%
		for(CustomPlan2VO cvo : clist){
	%>
	<tr>
		<td><%=cvo.getDep_port() %></td>
		<td><%=cvo.getArr_port() %></td>
		<td><%= sdf.format(cvo.getDep_time()) %></td>
		<td><%= sdf.format(cvo.getArr_time()) %></td>
		<td><button type="button" class="checkBtn_r" value="선택">선택</button></td>
	</tr>
	<%
		}	
	%>
</table>
<br>
<div class="col-lg-12" id="ex2_Result1" style="text-align: center;"></div><br><br>
<div class="col-lg-12" id="ex2_Result2" style="text-align: center;"></div><br>
<div class="rd_confirm_btn">
<button id="rd_next_to" type="button" onclick="gofunction()">다음</button>
<button id="rd_cancel_to" type="button" onclick="backfunction()">취소</button>
<script type="text/javascript">
function gofunction(){
	var result = confirm("예매를 계속 진행하시겠습니까?");
	
	if(result == true){
		location.href="../reservation/C_Res_Insert.jsp";
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
    var checkBtnr = $(this);
    
    // checkBtn.parent() : checkBtn의 부모는 <td>이다.
    // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
    var tr = checkBtnr.parent().parent();
    var td = tr.children();
    
    console.log("클릭한 Row의 모든 데이터 : "+tr.text());
    
    var depport = td.eq(0).text();
    var arrport = td.eq(1).text();
    var deptime = td.eq(2).text();
    var arrtime = td.eq(3).text();
    
    
    // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
    td.each(function(i){    
        tdArr.push(td.eq(i).text());
    });
    
    console.log("배열에 담긴 값 : "+tdArr);
    

    str +=	" 출발공항 : <font color='red'>" + depport + "</font>" +
            " 도착공항 : <font color='red'>" + arrport + "</font>" +
            " 출발일자 : <font color='red'>" + deptime + "</font>" +
            " 도착일자 : <font color='red'>" + arrtime + "</font>";        
    
    $("#ex2_Result1").html(str);    
});

$(".checkBtn_r").click(function(){ 
    var str = ""
    var tdArr = new Array();    // 배열 선언
    var checkBtn = $(this);
    
    // checkBtn.parent() : checkBtn의 부모는 <td>이다.
    // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
    var tr = checkBtn.parent().parent();
    var td = tr.children();
    
    console.log("클릭한 Row의 모든 데이터 : "+tr.text());
    
    var depport = td.eq(0).text();
    var arrport = td.eq(1).text();
    var deptime = td.eq(2).text();
    var arrtime = td.eq(3).text();
    
    
    // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
    td.each(function(i){    
        tdArr.push(td.eq(i).text());
    });
    
    console.log("배열에 담긴 값 : "+tdArr);
    

    str +=	" 출발공항 : <font color='red'>" + depport + "</font>" +
            " 도착공항 : <font color='red'>" + arrport + "</font>" +
            " 복귀일자 : <font color='red'>" + deptime + "</font>" +
            " 도착일자 : <font color='red'>" + arrtime + "</font>";        
    
    $("#ex2_Result2").html(str);

});
</script>
</div>
<h4>입력된 정보가 맞으시다면 [다음]버튼을 눌러 예매 과정을 진행해 주시고<br>입력된 정보가 맞지 않다면 [취소]버튼을 눌러 주시기 바랍니다.</h4>
</form>
</main>
</body>
</html>