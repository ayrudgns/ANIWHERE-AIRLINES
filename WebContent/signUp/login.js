function myId(){
let codeNum = document.getElementById("codeNum").value
let Myname = document.getElementById("Myname").value
let phoneNum = document.getElementById("phoneNum").value
	
  window.open("yourId.jsp?codeNum="+codeNum+"&Myname="+Myname+"&phoneNum="+phoneNum, "idwin", "width=400, height=350");
}
function myPassword(){
let codeNum = document.getElementById("codeNum").value
let MyId = document.getElementById("MyId").value
let phoneNum = document.getElementById("phoneNum").value
	
  window.open("yourPassword.jsp?codeNum="+codeNum+"&MyId="+MyId+"&phoneNum="+phoneNum, "idwin", "width=400, height=350");
}

let idbutton=document.getElementById("idButton")
let pwbutton=document.getElementById("pwButton")

idbutton.addEventListener("click",function(){
	
		idbutton.style.borderLeft="solid thin grey"
		idbutton.style.borderTop="solid thin grey"
		idbutton.style.borderRight="none"
		idbutton.style.borderBottom="none"
		pwbutton.style.borderLeft="solid thin grey"
		pwbutton.style.borderTop="none"
		pwbutton.style.borderRight="none"
		pwbutton.style.borderBottom="solid thin grey"
})

	
	pwbutton.addEventListener("click",function(){
		pwbutton.style.borderLeft="solid thin grey"
		pwbutton.style.borderTop="solid thin grey"
		pwbutton.style.borderRight="solid thin grey"
		idbutton.style.borderBottom="solid thin grey"
		idbutton.style.borderLeft="none"
		idbutton.style.borderTop="none"
		idbutton.style.borderRight="none"
		pwbutton.style.borderBottom="none"
		
	})
	
	function search(num){
		 if (num == 1) {
	idbutton.value="1"
        document.getElementById("LoadedPage").innerHTML = document.getElementById("searchid").innerHTML;
    } else{
	idbutton.value="0"
    document.getElementById("LoadedPage").innerHTML = document.getElementById("searchpw").innerHTML;
   }
	}
	

function getNum(){
let Myname = document.getElementById("Myname").value
let phoneNum = document.getElementById("phoneNum").value
	if(Myname==''){
		alert("이름을 입력해 주세요.")
	}else if(phoneNum==''){
		alert("휴대폰 번호를 입력해 주세요.")
	}else{
		document.getElementById("yourName").submit()
		document.getElementById("codeArea").innerHTML=document.getElementById("codeCheck").innerHTML
		
	}
}
function getNum2(){
let MyId = document.getElementById("MyId").value
let phoneNum = document.getElementById("phoneNum").value
	if(MyId==''){
		alert("이름을 입력해 주세요.")
	}else if(phoneNum==''){
		alert("휴대폰 번호를 입력해 주세요.")
	}else{
		document.getElementById("yourName2").submit()
		document.getElementById("codeArea").innerHTML=document.getElementById("codeCheck").innerHTML
		
	}
}

