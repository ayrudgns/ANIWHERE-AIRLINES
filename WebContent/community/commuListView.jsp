<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니웨어항공</title>
<!-- 절대경로 request.getContextPath() 을 el로 표시 -->
</head>
<body>
	<%@include file="../front/header.jsp" %>
	<form name="CSN" method="post" action="commuInsertAction.jsp">
<main >

<h1 style="text-align: center; padding: 30px 40px; 
 border-bottom-style: solid;"> 공지사항</h1>
<div>
<ul id="main">
 <c:forEach var="vo" items="${list}"> 
	<li style="list-style: none;">
		<ul >
			<li style="text-align: center; font-size: 25px; border-bottom-style: dashed ;
			 margin: auto;  align-self: center; padding-left: -30px; list-style: none; 
			   padding: 10px 10px; "
			><a href="commuDetailAction.jsp?idx=${vo.notice_no}&page=${page}" class="title">${vo.title }</a>
	
	</ul>
	</li>
 	</c:forEach>
	<!--  <a href="commuInsertView.jsp?page=${page}" class="button">글쓰기</a>-->
	


</div>
<!-- 페이지 버튼을 클릭하면 url http://localhost:8082/jsp2/board/listAction.jsp 은 동일하고 
	page 파라미터만 변경됩니다. 이런 경우 앞의 부분 생략하고 ? 부터 작성 -->
 <div style="margin:auto;text-align: center;">
	페이지보기 : <c:out value="${pagelist.totalCount }"/><br>
	<a class="pagenum" href="?page=1">&lt;&lt;</a>
	<a class="pagenum" href="?page=${pagelist.startPage-1}" 
	style="<c:if test='${pagelist.startPage==1 }'>display:none;</c:if>">&lt;</a>
	<c:forEach var="1" begin="${pagelist.startPage}" end="${pagelist.endPage }">
		<a class="pagenum ieach" href="?page=${1 }"><c:out value="${1 }"/></a>
	</c:forEach>
	<a class="pagenum" href="?page=${pagelist.endPage+1}"
	style="<c:if test='${pagelist.endPage==pagelist.totalPage}'>display:none;</c:if>">&gt;</a>
	<a class="pagenum" href="?page=${pagelist.totalPage+1}">&gt;&gt;</a>
</div> 
</main>
<script type="text/javascript">
	const pnums = document.querySelectorAll('.ieach');
	pnums.forEach(function(item){
		console.log(item);
		if(item.innerHTML=='${page}') {
			item.style.color = 'black';
			item.style.fontWeight = 'bold';
		}else{
			item.style.color = '#37966f';
		}
	});
</script>
<%@include file="../front/footer.jsp"%>
</form>
</body>


</html>