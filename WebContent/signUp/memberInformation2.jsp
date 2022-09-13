<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/signUp2.css">
    <link rel="stylesheet" href="../css/signUp.css">
     <script type="text/javascript">
     function passwordch(){
     	var password=document.getElementById("password");
     	var repasswd=document.getElementById("repasswd");
 		let id = document.getElementById("id");	
 		if(id.value==''){
 			id.focus()
         	alert("아이디는 필수입력입니다.");
         	 return false;
         	
 		}else
         if(password.value!=repasswd.value){
        	 repasswd.focus()
        	 repasswd.value=''
         	alert("입력하신 비밀번호가 일치하지 않습니다.");
         	
         	 return false;
             
         }else if(document.getElementById("email").value==''){
        	 alert("이메일은 필수입력입니다.")
         	 return false;
         }
 		}
     


     </script>
</head>
<body>
	 <%@ include file="../front/header.jsp" %>
	 <div class="wrap">
   
   
    <form name="regForm" method="post" action="memberInfoAction2.jsp" onsubmit="return passwordch();">
    
      <div class=userInfo>
       	<div style="font-size:15px; color:blue;margin: 100px auto 10px auto;">*은 필수입력입니다.</div>
        <div style="margin:30px auto 100px auto;">
          <div>*아이디</div>
          <div>
            <input type="text" name="id" id="id" size="15" readonly onclick="idCheck()" required>
            
          </div>
          <hr style="height: 2px;margin:50px 0 50px 0;">
        <div>
          <div>*비밀번호</div>
          <div><input type="password" name="password" id="password" size="15" required></div>
        </div>
        <div>
          <div>*비밀번호 확인</div>
          <div><input type="password" name="repasswd" id="repasswd" size="15" onblur="repasswd3()" required></div>
          <div id="pwcheck2" style="color:red"></div>
          <span id = pwcheck style="display: none; color:red;">입력하신 비밀번호와 일치하지 않습니다.</span>
          <script type="text/javascript">
          var password=document.getElementById("password");
       	var repasswd=document.getElementById("repasswd");
       	var pwcheck=document.getElementById("pwcheck");
       	var pwcheck2=document.getElementById("pwcheck2");
       	function repasswd3(){
       		if(password.value!=repasswd.value){
       			pwcheck2.innerHTML=pwcheck.innerHTML
       		}else{
       			pwcheck2.innerHTML=''
       		}
       	}
       	
          </script>
        </div>
          <hr style="height: 2px margin:50px 0 50px 0;">
        <div>
          <div>한글이름</div>
          <div><input type="text" name="name" id="name" size="15" value="<%=request.getParameter("name")%>" readonly="readonly"></div>
          <div>*영문이름</div>
          <div><input type="text" name="engName" id="engName" size="15" required></div>
        </div>
        <div>
                <div>생년월일</div>
                <div>
                <div class="info" id="info_birth">
			  <input class="box" id="birth-year" name="year" value="<%=request.getParameter("year")%>" readonly="readonly" style="width:170px;">
			  <span style="width:20px; margin:0px;
			  		position: relative; left:-60px; color: grey">년</span>
			  <input class="box" id="birth-month"name="month" value="<%=request.getParameter("month")%>" readonly="readonly" style="width:170px; ">
			  <span style="width:20px; margin:0px;
			  position: relative; left:-60px;color: grey">월</span>
			  <input class="box" id="birth-day" name="day"value="<%=request.getParameter("day")%>" readonly="readonly" style="width:170px; ">
			  <span style="width:20px; margin:0px;
			  position: relative; left:-60px;color: grey">일</span>
			</div>
                </div>
            </div>
        <div>
          <div>성별</div>
          <div><input type="text" name="gender" id="gender" size="15" value="<%=request.getParameter("gender")%>" readonly="readonly"></div>
        </div>
        <hr style="height: 2px; margin:50px 0 50px 0;">
        <div>
          <div>*이메일</div>
          <div>
            <input type="text" name="email" id="email" size="30" onclick="emailCheck()"readonly="readonly" >
          </div>
        </div>
        <div>
          <div>핸드폰</div>
          <div><input type="text" name="phoneNum" id="phoneNum" size="15" value="<%=request.getParameter("phoneNum")%>" readonly="readonly"></div>
          <div>전화번호</div>
          <div><input type="text" name="tel" id="tel" size="15"></div>
        </div>
       
        <div>
          <div>*주소</div>
          <div><input type="text" name="address1" id="address1" size="45" required></div>
        </div>
        <div>
          <div>나머지주소</div>
          <div><input type="text" name="address2" id="address2" size="45"></div>
          <input style="display: none;" id="term4"  name="term4" value="<%=request.getParameter("term4")%>" >
        </div>
        
        <div style="margin-top:100px;">
          <div colspan="2">
            <input type="submit" value="회원가입" />
            <input type="button" onclick="location.href='../front/index.jsp'" value="취소" />
          </div>
        </div>
      </div>
      </div>
</form>
</div>
    <%@ include file="../front/footer.jsp" %>
        <script src="signUp.js"></script>
      </body>
</html>