<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     
    <link rel="stylesheet" href="../css/signUp2.css">
    <link rel="stylesheet" href="../css/signUp.css">
    
</head>

<body>
	<%@include file="../front/header.jsp" %>
    <div class="wrap">
        <div class="title">
        <h2>본인인증을 진행해주세요.</h2>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">실명확인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       실명확인이 완료되었습니다. 휴대폰 인증을 진행해주세요.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">다음</button>
      </div>
    </div>
  </div>
</div>
        <table class="sign-table">
            
            <tr>
                <th>이름</th>
                <td><input type="text" placeholder="이름을 입력해주세요." id="name">
                    <button type="button" onclick=" genderClick(1)" class="gender" id="male"
                        style=" border-radius: 6px 0 0 6px; margin-right:-6.5px ;" >남</button>

                    <button type="button" onclick=" genderClick(2)" class="gender" id="female" 
                        style="border-radius: 0 6px 6px 0;">여</button>
                </td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td>
                <div class="info" id="info_birth">
			  <select class="box" id="birth-year" >
			    <option disabled selected>연도</option>
			  </select>
			  <select class="box" id="birth-month">
			    <option disabled selected>월</option>
			  </select>
			  <select class="box" id="birth-day" >
			    <option disabled selected>일</option>
			  </select>
			 <button class="certification" type="button" id="identification" >실명확인</button>
			</div>
                </td>
            </tr>
           		<form  target='blankifr' action="memberInfoAction.jsp" id="sendcode">
            <tr>
                <th>휴대폰 번호</th>
                <td>
                   
                <input type="tel" id="phoneNum" name="phoneNum" placeholder="휴대폰 번호를 입력해주세요." disabled="disabled" >
                    <button class="certification" type="button" id ="timer"  disabled="disabled">인증번호</button>
                </td>
               
            </tr>
          </form>
          <form  target='blankifr' action="codeCheck.jsp" id="myCode">
            <tr>
          
                <th>인증번호</th>
                 <td> 
                <input type="text" placeholder="인증번호를 입력해주세요." id="codeNum" name="codeNum"  disabled="disabled">
                    <button type="button" class="certification"id="codeCheck"  disabled="disabled">인증하기</button>
                </td> 
            </tr>
            </form>
        </table>
           <div class="signUpButton">
    <input  id="term4" value="<%=request.getParameter("term4")%>" style="display: none;">
	<button style="background-color: white;" onclick="location.href='../front/index.jsp'">취소</button>
	<button style="background-color: #5e2bb8;color: white;" onclick="checkCompleted()" type="button">다음</button>
	</div>
    </div>
             <%@include file="../front/footer.jsp" %>   
  
    <script src="signUp.js"></script>

               
 
<iframe name='blankifr' style='display:none;'></iframe>
</body>
</html>