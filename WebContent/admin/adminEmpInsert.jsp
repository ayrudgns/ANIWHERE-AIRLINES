<%@page import="dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 등록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<style type="text/css">
	table.empIn tr, td {
		padding: 15px;
	}
	
	table.empIn td:nth-child(1) {
		text-align: center;
		font-weight: bold;
		border-radius: 15px;
	}
	
	button:hover {
		background-color: #6f42c1;
		font-weight: bold;
	}
</style>
</head>


<body>
	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>
	<%
		EmpDao dao = EmpDao.getInstance();
		int seq = dao.getEmpSeq();
	 %>
	  
	<main style="min-height: 640px;">
	<h2 style="text-align: center; padding: 20px;">직원 등록</h2>
	<hr>
	<form style="padding: 30px;" method="post" action="adminEmpInsertAct.jsp">
		<table class="empIn" style="margin: auto; border: 3px double gray; padding: 10px;">
			<tr>
				<td>직원번호</td>
	            <td><input type="number" name="seq" value="<%= seq %>" readonly/></td>			
			</tr>
			<tr>
				<td>이름</td>
		        <td><input type="text" name="emp_name" placeholder="이름을 입력하세요." required="required"/></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><select name="emp_class" required="required">
					<option value="">직급을 선택하세요.</option>
					<option value="관리자">관리자</option>
					<option value="팀장">팀장</option>
					<option value="직원">직원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="emp_tel" placeholder="연락처를 입력하세요." required="required"/></td>			
			</tr>
			<tr>
				<td>고용일자</td>
				<td><input type="date" name="emp_hire_date"  required="required"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="emp_birth_date" required="required" /></td>			
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="emp_gender" value="M"/><label>남</label>
					<input type="radio" name="emp_gender" value="F"/><label>여</label>
				</td>			
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="emp_addr" placeholder="주소를 입력하세요." required="required"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center; background-color: white;">
				<button style="border-radius: 6px; padding: 5px 10px; margin: 10px;">등록</button>
				<button type="button" style="maring: 10px; border-radius: 6px; padding: 5px 10px;"
					onclick="location.href='adminEmployee.jsp'">취소</button>
				</td>
			</tr>
		</table>
	</form>
	</main>
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>