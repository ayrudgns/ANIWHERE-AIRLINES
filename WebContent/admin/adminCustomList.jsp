<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.CustomDao"%>
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
	<title>ANIWHERE AIRLINES 회원 조회</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
	<style type="text/css">
		table.cusList td {
			padding: 8px;
		}
		
		button:hover {
			background-color: lavender;
		}
	</style>

</head>

<%
	request.setCharacterEncoding("UTF-8");
	CustomDao dao = CustomDao.getInstance();
	String column = request.getParameter("column");		//  column 파라미터 받아오기
	String find = request.getParameter("find");		// find 파라미터 받아오기
	// 자바스크립트 실행을 위해서 애트리뷰트 저장
	pageContext.setAttribute("column", column);		// column 애트리뷰트 set 하고 페이지로 넘기기
	pageContext.setAttribute("find", find);			// find 애트리뷰트 set 하고 페이지로 넘기기
	
	// 검색에 필요한 Map 설정
	Map<String, String> map = new HashMap<>();
	//검색할 항목
	map.put("column", column);		
	map.put("find", find);
	
	List<MembersVO> list = dao.search(map);		// .search(map) 메소드 호출 후 List에 담기		
%>

<body>
	<%@include file="../front/header.jsp" %>
	<%@include file="adminNav.jsp" %>	
	<main style="padding-top: 20px; padding-bottom: 20px; min-height: 640px;">
	<h2 style="text-align: center; padding-bottom: 20px;">ANIWHERE AIRLINES 회원 조회</h2>
	
	<form action="adminCustomList.jsp" method="post" style="text-align: center; margin-bottom: 15px;">
		<div style="text-align: center; padding-bottom: 5px;">
			<label style="font-size: 1.2em;">회원 검색 :</label>
		<select name="column" id="column" style="padding: 2.5px;">
			<option value="id">회원 ID</option>
			<option value="kor_name">한글명</option>
			<option value="box_check">광고성 수신 동의</option>
		</select>
				<!-- 아래 find는 2개 중에 하나만 화면에 표시 -->
				<!-- 1번 find -->
				<span>
					<input name="find" required="required" value="<%= (find != null) ? find : "" %>" id="content">
				</span>
				<!-- 2번 find -->
				<span id="box_check">
					<select name="find" id="box_checking">
							<option value="Y">Y</option>
							<option value="N">N</option>
					</select>
				</span>
				<button style="border: 2px solid green; border-radius: 3px;">
					검색</button>	<!-- submit! -->
				<button type="button" style="border: 2px solid green; border-radius: 3px;" 
					onclick="location.href='adminCustomList.jsp'">전체 목록</button>
		</div>				
	</form>
	
	<table class="cusList" style="margin: auto; border: 2px solid darkslategrey; text-align: center; width: 1600px;">
		<tr style="border: 1px solid gray; border-bottom: 3px double gray; font-weight: bold; background-color: #6c75;">
			<td style="border: 1px solid gray;">회원번호</td>
			<td style="border: 1px solid gray;">회원 ID</td>
			<td style="border: 1px solid gray;">회원 PASSWORD</td>
			<td style="border: 1px solid gray;">한글명</td>
			<td style="border: 1px solid gray;">영문명</td>
			<td style="border: 1px solid gray;">생년월일</td>
			<td style="border: 1px solid gray;">나이</td>
			<td style="border: 1px solid gray;">핸드폰번호</td>
			<td style="border: 1px solid gray;">성별</td>
			<td style="border: 1px solid gray;">전화번호</td>
			<td style="border: 1px solid gray;">주소</td>
			<td style="border: 1px solid gray;">이메일</td>
			<td style="border: 1px solid gray;">광고성 수신 동의</td>
		</tr>
		<%
		//	@SuppressWarnings("unchecked")
		//	List<MembersVO> list = (List<MembersVO>)request.getAttribute("list");			
			for(MembersVO vo : list) {
		%>
		<tr style="border: 1px solid gray;">
			<td style="border: 1px solid gray;"><%= vo.getMem_no() %></td>
			<td style="border: 1px solid gray;"><%= vo.getId() %></td>
			<td style="border: 1px solid gray;"><%= vo.getPassword() %></td>
			<td style="border: 1px solid gray;"><%= vo.getKor_name() %></td>
			<td style="border: 1px solid gray;"><%= vo.getEng_name() %></td>
			<td style="border: 1px solid gray;"><%= vo.getBirth_date() %></td>
			<td style="border: 1px solid gray;"><%= vo.getAge() %></td>
			<td style="border: 1px solid gray;"><%= vo.getPhone() %></td>
			<td style="border: 1px solid gray;"><%= vo.getGender() %></td>
			<td style="border: 1px solid gray;"><%= vo.getTel() %></td>
			<td style="border: 1px solid gray;"><%= vo.getAddress() %></td>
			<td style="border: 1px solid gray;"><%= vo.getEmail() %></td>
			<td style="border: 1px solid gray;"><%= vo.getBox_check() %></td>
		</tr>
		<%
			}
		%>
	</table>
	</main>
	
 	<script type="text/javascript">
    	const sel = document.querySelectorAll("#column>option");
    	
    	sel.forEach(function(item) {
    		if(item.value == '${column}') {
    											// = column 애트리뷰트 값과 일치하는 option 항목일 때
    			item.selected = 'selected';		// 그 item은 선택된다.
    		}
    	});
    	
    	document.querySelectorAll("#box_checking>option").forEach(function(item) {
    											// 여기서 item은 Y / N
    		if(item.value == '${find}') {		// item의 value와 애트리뷰트로 가져온 find의 값이 일치할 때
    			item.selected = 'selected';		// 그 item은 선택된다.
    		}
    	});
    	
    	/* 화면표시 변경 */
    	const box_check = document.getElementById('box_check');
    	const box_check_sel = document.getElementById('box_checking');
    	const content = document.getElementById('content');
    
    	if('${column}' == 'box_check') {		// 애트리뷰트로 가져온 column의 값 = '광고성 수신 동의' option일 때
    		box_check.style.display = 'inline-block';	// span태그 나오고
    		box_check_sel.disabled = false;				// 광고성 수신 동의 옵션 활성화
			content.style.display = 'none';			// input box 들어가고
			content.disabled = 'disabled';			// input 비활성화
    	} else {
    		box_check.style.display = 'none';			// span태그 들어가고
    		box_check_sel.disabled = 'disabled';		// 광고성 수신 동의 옵션 비활성화
    		content.style.display = 'inline-block';	// input box 나오고
			content.disabled = false;				// input 활성화
    	}
    	
    	// 검색 컬럼 선택 sel이 변경될 때 (즉, option을 바꿀 때)
    	document.getElementById('column').addEventListener("change", changeView);
    			// column으로 된 id를 가진 놈이 change될 때, changeView 함수를 실행한다.
    			
    	function changeView() {
    		// form 요소 가져오기 - select 
    		const col = document.forms[0].column.value;		// 첫번째 form의 column의 value
    		
    		if(col == 'box_check'){		// 광고성 수신 동의를 선택하면
    			box_check.style.display = 'inline-block';	// span태그 나오고
    			box_check_sel.disabled = false;				// 광고성 수신 동의 옵션 활성화
    			content.style.display = 'none';			// input box 들어가고
    			content.disabled = 'disabled';			// input 비활성화
    		} else { 
    			box_check.style.display = 'none';			// span태그 들어가고
    			box_check_sel.disabled = 'disabled';		// 광고성 수신 동의 옵션 비활성화
        		content.style.display = 'inline-block';	// input box 나오고
    			content.disabled = false;				// input 활성화
    			// form요소 가져오기 - input 요소 find
    			document.forms[0].elements[1].value = "";	// input 활성화 시키면서 빈칸으로 만들어버림!
    			// 이게 없으면 전에 쓴 내용이 남는다.
    		}
    	}
    	// Line 99 ~ 109의 if문을 함수로 만들었다.
    	// 왜? 검색 컬럼 선택 sel이 변경될 때(즉, option을 바꿀 때) 필요하니까!
    </script>   
	<%@include file="../front/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>