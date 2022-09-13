<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

<script>
const Twilio = require('./admin').Twilio;
const twilio = require('twilio')("ACea14ff663f6193fe36144f09652231f7","7a349c77d39288140b4de7c2d41962df");

app.post('/phone_check', async (req, res) => {
    const body = req.body;
    const phone_number = body.phone_number;
    let code = '';
  	// 랜덤으로 4자리 인증 코드를 만든다.
    for (let i = 0; i < 4; i++) code += Math.floor(Math.random() * 10);

    try {
        const [result] = await db.execute(`INSERT INTO sms_validation(phone_number, validation_code, expire)
                                           VALUES (?, ?, NOW() + INTERVAL 3 MINUTE) ON DUPLICATE KEY
                UPDATE validation_code = ?, expire = NOW() + INTERVAL 3 MINUTE`,
            [phone_number, code, code]);
    } catch (e) {
        console.log(e);
    }

await twilio.messages.create({
        body: `${code}`, // 문자로 보내고 싶은 내용
        from: 'MGa61df9469fa5a0374d4cf55adc66f3c1', // 위에서 발급 받은 전화번호
        to: '+821084763382' // 받을 전화번호
    }, function (err, message) {
        if (err) console.log(err);
        else console.log(message.sid);
    });
})
</script>
</body>
</html>