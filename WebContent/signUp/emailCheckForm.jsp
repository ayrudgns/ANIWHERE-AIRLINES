<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emailCheckForm.jsp</title>
</head>
<body>
	<div style="text-align: center">
	<h3>* 이메일 중복확인 *</h3>
    <form method="post" action="emailCheckProc.jsp" onsubmit="return blankCheck(this)">
 <input type="text" name="email" id="email" autofocus>@<input type="text"  id="eaddress" name="eaddress" maxlength="10" autofocus>
 <select type="" id="mail" maxlength="10" autofocus> 
 <option selected >직접입력</option>
 <option>직접입력</option>
 <option>naver.com</option>
 <option>daum.net</option>
 <option>google.com</option>
 <option>nate.com</option>
 <option>gmail.com</option>
 
 </select>
    <input type="submit" value="중복확인">
    </form>
    </div>
    
    <script>
    function blankCheck(f){
    	var id=f.email.value;
    	 id=id.trim();
        if(id.length<5){
        	alert("이메일을 다시 확인해주세요");
            return false;
        }//if end
     
    	var eaddress=f.eaddress.value;
    	if(eaddress==''){
        	alert("이메일주소를 입력하세요");
    		
    		 return false;}
    	else if((/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i).test(eaddress)==false)	{
        	alert("이메일주소 형식이 잘못되었습니다.");
    		 return false;
    		}	
    			return true;
    		}
    
    
    let mail=document.getElementById("mail")
    mail.addEventListener("change",function(){
    	let email = document.getElementById("eaddress")
    	email.value=mail.value
    	email.innerHTML=mail.value
    })
    </script>
 </body>
 </html>
