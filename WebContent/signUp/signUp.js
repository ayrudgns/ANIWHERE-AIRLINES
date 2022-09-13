/**
 * 
 */

function genderClick(num) {
    if (num == 1) {
      	document.getElementById('male').value="M"
       document.getElementById('female').value="0"
        document.getElementById('male').style.backgroundColor = 'darkblue'
        document.getElementById('male').style.color = 'white'
        document.getElementById('female').style.backgroundColor = 'azure'
        document.getElementById('female').style.color = 'black'
    } else if (num == 2){
      	document.getElementById('male').value="0"
       document.getElementById('female').value="F"
    document.getElementById('male').style.backgroundColor = 'azure'
    document.getElementById('male').style.color = 'black'
    document.getElementById('female').style.backgroundColor = 'darkblue'
    document.getElementById('female').style.color = 'white'
}}

function loginCheck(){
	let id = document.getElementById('id').value
	let password = document.getElementById('password').value
	if(id==''){
	alert("아이디를 입력하세요")
	}else if(id!=''&&password==''){
	alert("비밀번호를 입력하세요")
	}else{
		document.getElementById('login').submit();
	}
	}
	
function checkBox(){
	if(document.getElementById('allcheck').checked){
	document.getElementById('term1').checked=true
	document.getElementById('term2').checked=true
	document.getElementById('term3').checked=true
	document.getElementById('term4').checked=true
	document.getElementById('term5').checked=true
	}else{
	document.getElementById('term1').checked=false
	document.getElementById('term2').checked=false
	document.getElementById('term3').checked=false
	document.getElementById('term4').checked=false
	document.getElementById('term5').checked=false
	}
	
}


function termsCheck(){
	let term4=document.getElementById('term4')
	let term1 = document.getElementById('term1').checked
	let term2 = document.getElementById('term2').checked
	let term3= document.getElementById('term3').checked
	if(term1==false||term2==false||term3==false){
		alert("필수 입력 항목에 대하여 모두 동의해주시기 바랍니다.")
	}else{
		if(term4.checked){
			term4.value="Y"
		}else{
			term4.value="N"
		}
		location.href='../signUp/memberInformation.jsp?term4='+term4.value
	}
}


	
	
	
	
	let phone = document.getElementById('timer')
phone.addEventListener("click", function () {

  const phoneNum=document.getElementById("phoneNum").value
		if(phoneNum==''){
		alert("핸드폰번호를 입력하세요.")}
		else{
			console.log(phoneNum)
			document.getElementById('sendcode').submit();
			
		}
	}
);

	




const birthYearEl = document.getElementById('birth-year')

isYearOptionExisted = false;
birthYearEl.addEventListener('focus', function () {

  if(!isYearOptionExisted) {
    isYearOptionExisted = true
    for(var i = 1940; i <= 2022; i++) {
      
      const YearOption = document.createElement('option')
      YearOption.setAttribute('value', i)
      YearOption.innerText = i
      
      this.appendChild(YearOption);
    }
  }
});




const birthMonthEl = document.getElementById('birth-month')

isMonthOptionExisted = false;
birthMonthEl.addEventListener('focus', function () {

  if(!isMonthOptionExisted) {
    isMonthOptionExisted = true
    for(var i = 1; i <= 12; i++) {
      
      const MonthOption = document.createElement('option')
      MonthOption.setAttribute('value', i)
      MonthOption.innerText = i
      
      this.appendChild(MonthOption);
    }
  }
});

const birthDayEl = document.getElementById('birth-day')
isDayOptionExisted = false;
birthDayEl.addEventListener('focus', function () {

  if(!isDayOptionExisted) {
	if(birthDayEl.value)
    isDayOptionExisted = true
	
    for(var i = 1; i <= 31; i++) {
      
      const DayOption = document.createElement('option')
      DayOption.setAttribute('value', i)
      DayOption.innerText = i
      
      this.appendChild(DayOption);
    }
  }
});
const identification = document.getElementById('identification')
identification.addEventListener('click', function (){

	let name = document.getElementById('name').value
	let male= document.getElementById('male').value
	let female=document.getElementById('female').value
	let birthYear=document.getElementById('birth-year').value
	let birthMonth=document.getElementById('birth-month').value
	let birthDay=document.getElementById('birth-day').value
	
	if(name==''){
		alert("성함을 입력해주세요.")
	}else if(male==''&&female==''){
		alert("성별을 체크해 주세요.")
	}else if(birthYear=='연도'||birthMonth=='월'||birthDay=='일'){
		alert("생년월일을 입력해주세요.")
	}else{
	
	var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
  keyboard: false
})
myModal.show()
		document.getElementById("phoneNum").disabled=false;
		document.getElementById("timer").disabled=false;
		document.getElementById("codeNum").disabled=false;
		document.getElementById("codeCheck").disabled=false;
	}
	
});



	const codeCheck = document.getElementById('codeCheck')


codeCheck.addEventListener('click', function () {

 let codeNum=document.getElementById("codeNum").value
		if(codeNum==''){
		alert("인증번호를 입력하세요.")}
		else if(codeNum!=''){
			document.getElementById('myCode').submit();
			
	}
	}
);

		



function checkCompleted(){
	let name = document.getElementById("name").value
	let male = document.getElementById("male").value
	let female = document.getElementById("female").value
	let year =  document.getElementById("birth-year").value
	let month =  document.getElementById("birth-month").value
	let day =  document.getElementById("birth-day").value
	let phoneNum = document.getElementById("phoneNum").value
	let codeNum = document.getElementById("codeNum").value
	let term4 = document.getElementById("term4").value
	
	if(name!=''&&male==0&&female!=''&&year!=''&&month!=''&&day!=''&&phoneNum!=''&&codeNum!=''&&term4!=''){
	location.href="checkCompleted.jsp?name="+name+"&gender="+female+"&year="+year+"&month="+month+"&day="+day+"&phoneNum="+phoneNum+"&codeNum="+codeNum+"&term4="+term4
		
	}else if(name!=''&&female==0&&male!=''&&year!=''&&month!=''&&day!=''&&phoneNum!=''&&codeNum!=''&&term4!=''){
	location.href="checkCompleted.jsp?name="+name+"&gender="+male+"&year="+year+"&month="+month+"&day="+day+"&phoneNum="+phoneNum+"&codeNum="+codeNum+"&term4="+term4
		
	}else if(name==''||female==''||male==''||year=='연도'||month=='월'||day=='일'){
		alert("실명인증을 완료하세요.")
	}else if(phoneNum==''||codeNum==''){
	alert("휴대폰인증을 완료해주세요.")}
}

function idCheck(){
  //새창 만들기
  window.open("idCheckForm.jsp", "idwin", "width=400, height=350");
}


//email 중복체크
function emailCheck(){
	//새창 만들기
    window.open("emailCheckForm.jsp", "emailwin", "width=400, height=350");
}//emailCheck() end

		