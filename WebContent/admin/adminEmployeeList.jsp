<%@page import="vo.EmployeeVO"%>
<%@page import="vo.MembersVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ANIWHERE AIRLINES 직원 조회</title>
	<style type="text/css">
		button:hover {
			background-color: lightsteelblue;
			font-weight: bold;
		}
	</style>

    <link rel="stylesheet" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
</head>


<body>

	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>
	<%			
		@SuppressWarnings("unchecked")
		List<EmployeeVO> list = (List<EmployeeVO>)request.getAttribute("list");		
	%>
	<main style="padding: 20px; min-height: 640px;">
	<h2 style="text-align: center; padding-bottom: 20px;">ANIWHERE AIRLINES 직원 조회</h2>
	<h6 style="text-align: center; padding-bottom: 20px;">직원번호를 클릭하여 정보 수정하기</h6>	
	<table style="margin: auto; border: 1px solid gray; text-align: center;">
		<tr style="padding: 10px; border: 1px solid gray; border-bottom: 3px double gray;">
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">직원번호</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">이름</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">직급</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">연락처</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">고용일자</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">생년월일</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">성별</td>
			<td style="padding: 10px; border: 1px solid gray; background-color: lightcyan; font-weight: bold;">주소</td>
		</tr>
	<%	
		for(EmployeeVO vo : list) {
	%>
		<tr style="padding: 10px; border: 1px solid gray;">
			<td style="padding: 10px; border: 1px solid gray;"><a href="adminEmpUpdate.jsp?emp_no=<%= vo.getEmp_no()%>"><%= vo.getEmp_no() %></a></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_name() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_class() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_tel() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_hire_date() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_birth_date() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_gender() %></td>
			<td style="padding: 10px; border: 1px solid gray;"><%= vo.getEmp_addr() %></td>
		</tr>
	<%
		}
	%>
		<tr>
			<td colspan="8"><button type="button" 
				style="text-align: right; padding: 5px; margin: 10px; border-radius: 5px;" 
				onclick="location.href='adminEmpInsert.jsp'">직원 등록</button></td>
		</tr>
	</table>
	</main>
        
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>