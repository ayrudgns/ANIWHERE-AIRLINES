<%@page import="java.util.Locale"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="vo.MembersVO"%>
<%@page import="dao.CustomDao"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
       request.setCharacterEncoding("UTF-8");
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 


	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String korName = request.getParameter("name");
	String engName = request.getParameter("engName");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String birth=request.getParameter("birthday");
	if(birth==null){
			if(month.length()==1){
		month="0"+month;
	}
	if(day.length()==1){
		day="0"+day;
	}
	
	 birth= (year+"-"+month+"-"+day);
	}


	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.US);
	LocalDate date = LocalDate.parse(birth, formatter);

	System.out.println(date);
	System.out.println(formatter.format(date));
	
	Date birthday = java.sql.Date.valueOf(date);
	
	
	
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phoneNum");
	String tel = request.getParameter("tel");
	if(tel==null){
		tel=null;
	}
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address=null;
	if(address2==null){
		address=address1;
		
	}else{
		address=address1+address2;
	}
	String box_check=request.getParameter("term4");
	if(box_check==null){
		box_check="N";
	}
	int age=0;
	 LocalDate now = LocalDate.now();
	 int now_year = now.getYear();      
	 int now_month = now.getMonthValue();
	 int now_day = now.getDayOfMonth();
		
	 if(year==null){
		 year=birth.substring(0,4);
		 month=birth.substring(5,7);
		 day=birth.substring(8);
	 }
			
			
			
			
	 int temp = now_month-Integer.parseInt(month);
	 int temp2 = now_day-Integer.parseInt(day);
	 if(temp>=0){
		 if(temp2>0){
		 age=now_year-Integer.parseInt(year)-1;
			 
		 }else{
			 
		 age=now_year-Integer.parseInt(year);
		 }
	 }else if(temp<0){
		 age=now_year-Integer.parseInt(year);
		 
	 }
	 
		MembersVO vo=new MembersVO(0,id,password,korName,engName,birthday,age,phone,gender,tel,address,email,box_check);
	
		CustomDao dao = CustomDao.getInstance();
		int result=dao.signUp(vo);
		
		if(result==1){
			session.setAttribute("user", vo.getKor_name());
			request.setAttribute("user",vo);
			%>
			<script type="text/javascript">
			
		location.href='joincomplete.jsp'
			</script>
			<%
		}else{ %>
			<script type="text/javascript">
			alert('회원가입에 실패했습니다.')
		location.href='signUpView.jsp'
			
		
			</script>
			<% 
			
		}
%>
</body>
</html>