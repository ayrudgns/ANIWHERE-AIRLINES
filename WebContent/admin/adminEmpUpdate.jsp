<%@page import="vo.EmployeeVO"%>
<%@page import="dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<style type="text/css">
	table.empUp td {
		padding: 15px;
	}
	
	table.empUp td:nth-child(1) {
		text-align: center;
		font-weight: bold;
		border-radius: 15px;
	}
	
	button {
		border: 2px solid black;
	}
	
	button:hover {
		background-color: #A0DFFF;
		font-weight: bold;
	}
</style>
</head>


<body>
	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>
	<%
		EmpDao dao = EmpDao.getInstance();
		EmployeeVO vo = null;

	  	try {		
			int emp_no = Integer.parseInt(request.getParameter("emp_no"));  		
			vo = dao.selectEmp(emp_no);

			if(vo == null) throw new Exception();
			// System.out.println(vo); 			// 확인!
  		} catch (Exception e){
	  %>
 	  	<script type="text/javascript">
	  		alert('직원번호가 잘못된 값 또는 없는 값 입니다.');
	  		history.back();
	  	</script> 
	  <%		
	 	}
	  %>
	  
	<main style="padding-top: 20px; min-height: 640px;">
	<h2 style="text-align: center; padding-bottom: 10px;">직원 정보 수정</h2>
	<hr>
	<form method="post" action="adminEmpUpdateAct.jsp" style="padding-bottom: 20px;">
		<table class="empUp" 
			style="margin: auto; border: 4px blue; border-style: double; width: 500px; padding: 10px;">
			<tr>
				<td style="width: 300px;">직원번호</td>
	            <td><input type="number" name="emp_no" value="<%= vo.getEmp_no()%>" readonly/></td>			
			</tr>
			<tr>
				<td>이름</td>
		        <td><input type="text" name="emp_name" value="<%= vo.getEmp_name() %>" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><input type="text" name="emp_class" value="<%= vo.getEmp_class() %>" /></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="emp_tel" value="<%= vo.getEmp_tel() %>" /></td>			
			</tr>
			<tr>
				<td>고용일자</td>
				<td><input type="date" name="emp_hire" value="<%= vo.getEmp_hire_date() %>" readonly/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="emp_birth_date" value="<%= vo.getEmp_birth_date() %>" readonly/></td>			
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="text" name="emp_gender" value="<%= vo.getEmp_gender() %>" readonly/></td>			
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" style="width: 250px;" name="emp_addr" value="<%= vo.getEmp_addr() %>"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center; padding: 10px;">
				<div style="text-align: center;">
				<button style="margin: 8px; padding: 8px;">수정</button>
				<button style="margin: 8px; padding: 8px;" type="button" 
					onclick="location.href='adminEmployee.jsp'">취소</button>
				</div>
				<button type="button" style="margin: 4px; padding: 4px; 
					background-color: red; float: right; font-weight: bold; font-size: 0.5em;" 
					onclick="javascript:empDelete()">직원 정보 삭제</button>
				</td>
			</tr>
		</table>
	</form>
		
	</main>
	
	<script type="text/javascript">
		function empDelete() {
			var emp_no = document.forms[0].emp_no.value;
			if(confirm('직원 정보를 삭제하시겠습니까?') == true) {
				location.href='adminEmpDelete.jsp?emp_no=' + emp_no;
			} else {

			}
			
		}
	</script>
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>