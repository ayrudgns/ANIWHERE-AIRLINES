<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
	<style type="text/css">
	.dropdown:hover .dropdown-content {
		display: block;
		width: 30px;
		}

	.dropdown-content a {
	  	color: black;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
	}
	
	.dropdown {
  		position: relative;
  		display: inline-block;
	}
	
	.dropdown-content {
		background-color: white;
		display: none;
		border-bottom: 1px solid black;
		position: absolute;
		min-width: 160px;
		z-index: 1;
	}
	
	.dropbtn {
		border: none;
	}
	
	.dropbtn {
		cursor: pointer;
	}

	</style>
</head>

<body>
	<div class="wrap">
        <div class="top">
        <c:if test="${user == null }">
            <div><a href="../signUp/loginView.jsp">로그인</a></div>
            <div><a href="../signUp/signUpView.jsp">회원가입</a></div>
            </c:if> 
           <c:if test="${ user_id == 'rudgns123' }">
		
        	<div><a href="../admin/adminEmployee.jsp">관리자 페이지</a></div>
        </c:if>	
            <c:if test="${user != null }">
            <div><a><c:out value="${user}"/>님
            </a></div>
            <div><a href="../signUp/logout.jsp">로그아웃</a></div>
            </c:if>
		</div>

        <div class="header">
            <div>
                <div><a href="../front/index.jsp"><img class="logo" src="../image/projectLogo.png" alt="projectLogo"></a></div>
                <div><input class="main_search" type="text" placeholder="검색어를 입력해 주세요.">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                            class="bi bi-search" viewBox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg></a>
                </div>
                <div>
                    <div class="btn-group">
                        <div class="
                    popularity" style="width: 80px; height: 20px; ;"
                            onmouseover="document.getElementById('div1').style.display = 'block';"
                            onmouseout=" document.getElementById('div1').style.display='none' ;">
                            인기검색어
                            <div id="div1"
                                style="display: none; border:solid thin gray ; border-radius: 5; width: 100px;height: 200px; background-color: white;">

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="My">
           
                    <div>
                        <a tabindex="0" class="popover-dismiss" role="button" data-bs-toggle="popover"  data-bs-placement="bottom" data-bs-trigger="focus" title="" data-bs-content="로그인 후 이용가능" >
                            <div><svg style="margin-left:20px;" xmlns="http://www.w3.org/2000/svg" width="24"
                                    height="24" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
                                </svg></div>
                            <div>마이페이지</div>
                        </a>
                    </div>
               
                <div>
                    <a href="../reservation/C_Reservation.jsp">
                        <div><svg style="margin-left:12px;" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-card-text" viewBox="0 0 16 16">
                                <path
                                    d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                                <path
                                    d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
                            </svg></div>
                        <div>예매내역</div>
                    </a>
                </div>
                <div style="margin-left:12px ;">
                    <a href="">
                        <div><svg style="margin-left: -6.2;" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                <path
                                    d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                            </svg>
                        </div>
                        <div>찜</div>
                    </a>
                </div>
                <!-- 고객센터 시작 -->
                <div class="dropdown" style="margin-left: 6px;">
                	<a class="dropbtn">
                	<svg xmlns="http://www.w3.org/2000/svg" style="margin-left: 12px; vertical-align: bottom;" width="25" height="25" 
                		fill="currentColor" class="bi bi-headset" viewBox="0 0 16 16">
					  <path d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5z"/>
					</svg>
                    <div>고객센터</div>
                	</a>
					<div class="dropdown-content">
					<a href="../community/commuListAction.jsp">공지사항</a>
					<a href="../ask/ask.jsp">문의하기</a>
					</div>
                </div>
                <!-- 고객센터 끝 -->
            </div>
        </div>

        <div class="nav">
            <div>

                <div>
                <!-- 여기가 전체메뉴!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                 -->
                 <button class="all-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">
                        <svg xmlns="http://www.w3.org/2000/svg" style="margin-righㄴt: 5px; color: gray;" width="24"
                            height="24" fill="currentColor" class="bi bi-border-width" viewBox="0 0 16 16">
                            <path
                                d="M0 3.5A.5.5 0 0 1 .5 3h15a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H.5a.5.5 0 0 1-.5-.5v-2zm0 5A.5.5 0 0 1 .5 8h15a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H.5a.5.5 0 0 1-.5-.5v-1zm0 4a.5.5 0 0 1 .5-.5h15a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z" />
                        </svg>전체메뉴</button>
                    <div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1"
                        id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
                        <div class="offcanvas-header">
                            <h4 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">전체메뉴</h4>
                            <button type="button" class="btn-close " data-bs-dismiss="offcanvas" data-bs-backdrop="none"
                                aria-label="Close"></button>
                        </div>
                        <hr>
                        <div class="offcanvas-body">

                            <div>
                                <h5>해외여행</h5>
                                <a href="">국제선 예매</a>
                                <a href="">비자발급안내</a>
                            </div>
                            <div>
                                <h5>제주 국내여행</h5>
                                <a href="">국내선 예매</a>
                                <a href="">제주도 렌터카</a>

                            </div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>


                        </div>
                    </div>




                </div>
                <div><a href="">해외여행</a></div>
                <div><a href="">제주 국내여행</a></div>
                <div><a href="">항공</a></div>
                <div><a href="">호텔/펜션</a></div>
                <div><a href="">투어/입장권</a></div>
                <div><a href="">허니문</a></div>
            </div>
            <div>
                <div><a href="">여행 기획전</a></div>
                <div><a href="">기업출장/단체</a></div>
            </div>
        </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="../front/main.js"></script>
</body>

</html>