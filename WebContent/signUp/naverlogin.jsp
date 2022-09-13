<%@page import="vo.MembersVO"%>
<%@page import="dao.CustomDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.ApiExamMemberProfile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
  request.setCharacterEncoding("UTF-8");
    String clientId = "Tmz_8Y1uJY7OpQnTb7hz";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "bR6UhUNNiG";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://localhost:8080/aniwhere-airlines/signUp/naverCallback.jsp", "UTF-8");
    String apiURL;
    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&code=" + code;
    apiURL += "&state=" + state;
    String access_token = "";
    String refresh_token = "";
    System.out.println("apiURL="+apiURL);
       ApiExamMemberProfile dao = ApiExamMemberProfile.getInstance();
    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection)url.openConnection();
      con.setRequestMethod("GET");
      int responseCode = con.getResponseCode();
      BufferedReader br;
      System.out.print("responseCode="+responseCode);
      if(responseCode==200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuffer res = new StringBuffer();
      while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
      }
      br.close();
      if(responseCode==200) {
        
       String token= res.substring(17, res.indexOf("refresh_token")-3);
       String header= "Bearer " + token;
       
       Map<String, String> requestHeaders = new HashMap<>();
	     requestHeaders.put("Authorization", header);
	  String apiResult=  dao.get("https://openapi.naver.com/v1/nid/me",requestHeaders);
        
       
	  JSONParser parser = new JSONParser();
		Object obj = null;
		try {
			obj = parser.parse(apiResult);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		JSONObject jsonobj = (JSONObject) obj;
		JSONObject respon = (JSONObject) jsonobj.get("response");
		String id = (String) respon.get("id");
		 CustomDao cusDao = CustomDao.getInstance();
		 int cnt=cusDao.duplecateID(id);
		 if(cnt!=0){
		
				Map<String,String> map = new HashMap<>();
				map.put("id",id);
				map.put("password","naverlogin");
				MembersVO vo = cusDao.login(map);
			 %>
			 <script type="text/javascript">
			 location.href='../front/index.jsp'
				alert('로그인했습니다.')
			      location.href='../front/index.jsp';
			 </script>
			 <%
				session.setAttribute("user", vo.getKor_name());
				request.setAttribute("user",vo);
			      session.setAttribute("user_id", vo.getId());   
			      request.setAttribute("u_id", vo.getId());
		 }else{%>
			 <script type="text/javascript">
			 location.href='loginView.jsp'
				 alert('존재하지 않는 계정입니다.')
			 </script>
		
		<% 
		
		 } }
    } catch (Exception e) {
      System.out.println(e);
    }
    %>
</body>
</html>