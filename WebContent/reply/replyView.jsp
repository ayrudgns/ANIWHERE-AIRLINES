<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니웨어 항공</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
</head>
<body>
<%@include file="../front/header.jsp" %>
<%@include file="../admin/adminNav.jsp" %>


<h2 style="text-align: center; width: 100%; background-color:navy; color:white; 
	padding: 20px 20px;">고객 문의사항</h2>
<main style="margin-top: 20px;">
<div style="margin:auto;">
<ul id="main">
	
 <c:forEach var="vo" items="${list}"> 
	<li>
		<ul  style="list-style: none;">
			<li>문의번호  : ${vo.ask_no }</li>
			<li><a href="replyDetailAction.jsp?idx=${vo.ask_no}&page=${page}" style="color: gray;">제목 : ${vo.subject }</a>
		 		<li> 작성자 : ${vo.writer }</li>
	<%-- 		<li>
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
			</li> --%>
			<br>			
	</ul>
	</li>
 	</c:forEach>
</ul>

</div>
<!-- 페이지 버튼을 클릭하면 url http://localhost:8082/jsp2/board/listAction.jsp 은 동일하고 
	page 파라미터만 변경됩니다. 이런 경우 앞의 부분 생략하고 ? 부터 작성 -->
<div style="width:700px;margin:auto;text-align: center;">
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>


</html>