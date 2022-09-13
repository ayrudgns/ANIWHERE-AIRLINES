<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니웨어 항공</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<form name="ASK" method="post" action="askInsert.jsp">
   <link rel="stylesheet" href="../css/ask.css">

</head>
<body>
<%@include file="../front/header.jsp" %>
<h2> 문의하기</h2>



<table class="first"> 
            <tr><td colspan="2"  style="color: tomato;">★모든 항목은 필수 입력입니다.★</td></tr>

<table class="second">
 
 	<tr><th >제목</th>
 		<td><input type="text" name="subject" size="50" required placeholder="제목을 입력하세요"></td>
 	</tr>
 		<tr><th >작성자</th>
 		<td><input type="text" name="writer" size="50" required placeholder="이름을 입력하세요"></td>
 	</tr>
     <tr>
<tr><th  >문의내용</th>  
 		<td><textarea  rows="20" cols="60" name="content" required placeholder="내용을 입력하세요"></textarea>
 		</td>
   </tr>
	<tr><th >이메일주소</th>
 		<td><input type="text" name="email" size="50" required placeholder="답변받을 이메일 주소"></td>
 		
 	</tr>
 	<th>
<td colspan="2">
<input type="reset"  value="돌아가기" onclick="location.href='../front/index.jsp'" size="50" class="button1">
<input type="submit" value="문의하기" onclick="hand()"size="50" class="button" >
<div id='result' />
  <script src="ask.js"></script>

</td>
</th>
</table>
</form>
<%@include file="../front/footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>