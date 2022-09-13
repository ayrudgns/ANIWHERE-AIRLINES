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
</head>

<body>
	<%@include file="../front/header.jsp" %>
    <div class="wrap">
        <div class="title">
        <h2>간편로그인 연동을 위한<br> 본인인증을 진행해주세요.</h2>
    </div>
        <table class="sign-table">
            <tr>
                <th>이메일</th>
                <td><input type="text" placeholder="이메일 주소를 입력해주세요."></td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" placeholder="이름을 입력해주세요.">
                    <button type="button" onclick=" genderClick(1)" class="gender" id="male"
                        style=" border-radius: 6px 0 0 6px; margin-right:-6.5px ;">남</button>

                    <button type="button" onclick=" genderClick(2)" class="gender" id="female"
                        style="border-radius: 0 6px 6px 0;">여</button>
                </td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td><input type=" text" placeholder="생년월일을 입력해주새요..">
                    <button class="certification">실명확인</button>
                </td>
            </tr>
            <tr>
                <th>휴대폰 번호</th>
                <td><input type="text" placeholder="휴대폰 번호를 입력해주세요.">
                    <button class="certification">인증번호</button>
                </td>
            </tr>
            <tr>
                <th>인증번호</th>
                <td><input type="text" placeholder="인증번호를 입력해주세요.">
                    <button class="certification">인증하기</button>
                </td>
            </tr>
        </table>
    </div>
    <%@include file="../front/footer.jsp" %>
    <script src="signUp.js"></script>
</body>

</html>