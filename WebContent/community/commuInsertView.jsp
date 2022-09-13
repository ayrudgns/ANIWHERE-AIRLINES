<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<link rel="stylesheet" href="../css/insert.css">
</head>
<body>
	<%@include file="../front/header.jsp" %>
		<%@include file="../admin/adminNav.jsp" %>
<main>
<h2>공지사항 올리기</h2>
<hr>
<form name="CSN" method="post" action="commuInsertAction.jsp">

 <table class="second">
 	<tr><th  >제목</th>
 		<td><input type="text" name="title" size="50" required></td>
 	</tr>
 	<tr><th >내용</th>  <!-- textarea 의 크기 : rows="20" cols="80" -->
 		<td><textarea  rows="20" cols="60" name="content" required></textarea>
 		<!--textarea 는 multi line 입력이 됩니다.  --></td>
 	</tr>
 	<tr><td colspan="2" align="center">
 	<input type="submit" value="업로드하기" class="button" >
 	<input type="reset"  value="다시쓰기" class="button1">
 	</td></tr>
 </table>
 </form>
</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%@include file="../front/footer.jsp"%>
</body>
</html>