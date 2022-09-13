<%@page import="vo.PageVo"%>
<%@page import="vo.ASK"%>
<%@page import="dao.ASK_dao"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <% 

ASK_dao dao=ASK_dao.getInstance();
int pageNo;
if(request.getParameter("page")==null) pageNo=1;
else pageNo = Integer.parseInt(request.getParameter("page"));

int pageSize=10;	//한페이지에 몇개의 글개수인가?
PageVo pages = new PageVo(pageNo,dao.getCount2(),pageSize);		

Map<String,Integer> map = new HashMap<>();
map.put("startNo",pages.getStartNo());
map.put("endNo",pages.getEndNo());


List<ASK> list = dao.getPageList2(map);
request.setAttribute("list", list);
request.setAttribute("today", LocalDate.now());

request.setAttribute("page", pageNo);		//PageVo 작성하면 아래 pagelist로 대체할수 있습니다.
request.setAttribute("getPageList2", pages);
pageContext.forward("replyView.jsp"); 

%>
 
