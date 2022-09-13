<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니웨어항공</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<!-- 절대경로 request.getContextPath() 을 el로 표시 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/freeboard.css?v=3">
</head>
<body>
	<%@include file="../front/header.jsp" %>
	<form name="CSN" method="post" action="commuInsertAction.jsp">
<main style="margin-top: 20px;">
<h2 style="text-align: center; padding-top: 20px" > 공지사항</h2>
<div style="margin:auto;">
<ul id="main">
	<li>
		<ul  class="row">
			<li style="background-color: gray";><strong>번호</strong></li>
			<li style="background-color: gray";><strong>제목</strong></li>
			<li style="background-color: gray";><strong>조회수</strong></li>
			<li style="background-color: gray";><strong>작성일</strong></li>
		</ul>
	</li>
 <c:forEach var="vo" items="${list}"> 
	<li>
		<ul  class="row">
			<li>${vo.notice_no }</li>
			<li><a href="commuDetailAction.jsp?idx=${vo.notice_no}&page=${page}" class="title">${vo.title }</a>
		 		<li>${vo.readCount }</li>
			<li>
			<!-- vo.wdate 날짜 패턴을 적용한 결과 문자열을 wdate 변수로 저장 -->
			<fmt:formatDate value="${vo.wdate }" pattern="yyyy-MM-dd" var="wdate"/>
			<!-- 오늘 작성한 글은 시간으로 표시 -->
			<c:if test='${wdate == today}'>
				<fmt:formatDate value="${vo.wdate }" type="time"/>
			</c:if>
			<!-- 오늘 이전에 작성한 글은 날짜로 표시 -->
			<c:if test='${wdate != today}'>
				<fmt:formatDate value="${vo.wdate }" pattern="yyyy-MM-dd"/>
			</c:if>
			</li>
	</ul>
	</li>
 	</c:forEach>
</ul>
	<!--  <a href="commuInsertView.jsp?page=${page}" class="button">글쓰기</a>-->
	


</div>
<!-- 페이지 버튼을 클릭하면 url http://localhost:8082/jsp2/board/listAction.jsp 은 동일하고 
	page 파라미터만 변경됩니다. 이런 경우 앞의 부분 생략하고 ? 부터 작성 -->
<div style="width:700px;margin:auto;text-align: center;">
	전체 글 개수 : <c:out value="${pagelist.totalCount }"/><br>
	<a class="pagenum" href="?page=1">&lt;&lt;</a>
	<a class="pagenum" href="?page=${pagelist.startPage-1}" 
	style="<c:if test='${pagelist.startPage==1 }'>display:none;</c:if>">&lt;</a>
	<c:forEach var="i" begin="${pagelist.startPage}" end="${pagelist.endPage }">
		<a class="pagenum ieach" href="?page=${i }"><c:out value="${i }"/></a>
	</c:forEach>
	<a class="pagenum" href="?page=${pagelist.endPage+1}"
	style="<c:if test='${pagelist.endPage==pagelist.totalPage}'>display:none;</c:if>">&gt;</a>
	<a class="pagenum" href="?page=${pagelist.totalPage }">&gt;&gt;</a>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%@include file="../front/footer.jsp"%>
</form>
</body>


</html>