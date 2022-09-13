package dao;








import java.util.concurrent.ThreadLocalRandom;

import com.twilio.Twilio; 
import com.twilio.rest.api.v2010.account.Message; 
import com.twilio.type.PhoneNumber;
import java.util.concurrent.ThreadLocalRandom;





 
public class authenticationDao { 
	private static authenticationDao dao = new authenticationDao();

	private authenticationDao() {
	}

	public static authenticationDao getInstance() {
		return dao;
	}	
    // Find your Account Sid and Token at twilio.com/console 
	
    public static final String ACCOUNT_SID = "ACea14ff663f6193fe36144f09652231f7"; 
    public static final String AUTH_TOKEN = "7a349c77d39288140b4de7c2d41962df"; 
 
    public String authentication(String phoneNum) {
    	
    	
    	String code = String.valueOf(ThreadLocalRandom.current().nextInt(100000, 1000000));
    	
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN); 
        Message message = Message.creator( 
                new PhoneNumber("82"+phoneNum),  
                "MGa61df9469fa5a0374d4cf55adc66f3c1", 
                "에니웨어항공  회원가입 인증번호: "+code
               )      
            .create(); 
        System.out.println(message.getSid()); 
       System.out.println(code);
        return code;
       
    } 
}

