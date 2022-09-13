<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">

</head>

<body>

	<%@include file="header.jsp"%>
	<div class="wrap">
		<div class="mainImage">
			<div id="carouselExampleControls" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="../image/PL00113019.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="../image/PL00113033.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="../image/PL00113047.jpg" class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>

			<div>
				<div style="font-size: 30px; color: white;">고객님,</div>
				<div style="font-size: 30px; font-weight: bolder; color: white;">어디로
					떠나시나요?</div>
				<div class="routs">



					<button onclick="airlineSearch(1)">왕복</button>
					<button onclick="airlineSearch(2)">편도</button>

				</div>

				<div id="LoadedPage"></div>
				
					<div id="round" style="display: none;">
					<form action="" method="post">
						<div>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
	                        <path
										d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
	                        <path
									d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    		</svg>

							<select name="dep_port"
								style="width: 130px; height: 45px; border: solid thin gray; border-radius: 7px; margin-top: 20px; padding: 0px 30px;">
								<option value="">출발지</option>
								<option value="GMP">김포</option>
								<option value="ICN">인천</option>
								<option value="CJU">제주</option>
								<option value="NRT">나리타(일본)</option>
								<option value="HKG">홍콩</option>
								<option value="SIN">싱가포르</option>
								<option value="SYD">시드니</option>
								<option value="MAD">마드리드(스페인)</option>
								<option value="ROM">로마(이탈리아)</option>
								<option value="JFK">뉴욕(미국)</option>
								<option value="IAD">워싱턴DC(미국)</option>
							</select>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-arrow-left-right"
								viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
									d="M1 11.5a.5.5 0 0 0 .5.5h11.793l-3.147 3.146a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 11H1.5a.5.5 0 0 0-.5.5zm14-7a.5.5 0 0 1-.5.5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H14.5a.5.5 0 0 1 .5.5z" />
                    </svg>

							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path
									d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                        <path
									d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    </svg>

							<select name="arr_port"
								style="width: 150px; height: 45px; border-radius: 7px; margin-top: 20px; border: solid thin gray; padding: 0px 30px;">
								<option value="">도착지</option>
								<option value="GMP">김포</option>
								<option value="ICN">인천</option>
								<option value="CJU">제주</option>
								<option value="NRT">나리타(일본)</option>
								<option value="HKG">홍콩</option>
								<option value="SIN">싱가포르</option>
								<option value="SYD">시드니</option>
								<option value="MAD">마드리드(스페인)</option>
								<option value="ROM">로마(이탈리아)</option>
								<option value="JFK">뉴욕(미국)</option>
								<option value="IAD">워싱턴DC(미국)</option>
							</select>
						</div>
						<div>

							<input name="dep_time" type="date" value="dep_time" id="rd_dep"
								style="margin-right: 22px; width: 130px; height: 45px; border: solid thin gray; border-radius: 7px; margin: 20px 0px 0px 25px; padding: 0 15px;">

							<input name="arr_time" type="date" value="arr_time" id="rd_retr"
								style="width: 130px; height: 45px; border: solid thin gray; border-radius: 7px; margin-top: 20px; margin: 20px 0px 0px 45px; padding: 0 15px;">

						</div>

						<div style="text-align: center;">
							탑승 인원
							<input name="seat_count"
								style="width: 60px; height: 45px; border: solid thin gray; border-radius: 7px; margin-top: 20px; margin: 20px 0px 0px 25px; padding: 5px;"
								type="number" min="1" >
							명
						</div><br>
						<div style="text-align: center;">
						좌석 등급
						<input type="radio" name="seat_level" value="Economy" style="margin-left: 30px;" checked="checked"> 이코노미
						<input type="radio" name="seat_level" value="Business"> 비즈니스
						<input type="radio" name="seat_level" value="First_class"> 퍼스트
						</div>
						<div class="air-search">
							<button onclick="javascript:rd_valid_check()">항공편 검색</button>
						</div>
					</form>
					</div>
					
					<div id="one" style="display: none;">
					<form action="" method="post">
						<div>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path
									d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                        <path
									d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    </svg>

							<select name="dep_port"
								style="width: 130px; height: 45px; border: solid thin gray; border-radius: 7px; margin-top: 20px; padding: 0px 30px;">
								<option value="">출발지</option>
								<option value="GMP">김포</option>
								<option value="ICN">인천</option>
								<option value="CJU">제주</option>
								<option value="NRT">나리타(일본)</option>
								<option value="HKG">홍콩</option>
								<option value="SIN">싱가포르</option>
								<option value="SYD">시드니</option>
								<option value="MAD">마드리드(스페인)</option>
								<option value="ROM">로마(이탈리아)</option>
								<option value="JFK">뉴욕(미국)</option>
								<option value="IAD">워싱턴DC(미국)</option>
							</select>

							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-arrow-right"
								viewBox="0 0 16 16">
                       			 <path fill-rule="evenodd"
									d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
                    		</svg>

							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
		                        <path
											d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
		                        <path
											d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    		</svg>

							<select name="arr_port" 
								style="width: 150px; height: 45px; border-radius: 7px; margin-top: 20px; border: solid thin gray; padding: 0px 30px;">
								<option value="">도착지</option>
								<option value="GMP">김포</option>
								<option value="ICN">인천</option>
								<option value="CJU">제주</option>
								<option value="NRT">나리타(일본)</option>
								<option value="HKG">홍콩</option>
								<option value="SIN">싱가포르</option>
								<option value="SYD">시드니</option>
								<option value="MAD">마드리드(스페인)</option>
								<option value="ROM">로마(이탈리아)</option>
								<option value="JFK">뉴욕(미국)</option>
								<option value="IAD">워싱턴DC(미국)</option>
							</select>
						</div>

						<div>
							<input name="dep_time" value="dep_time" id="ow_dep"
								style="margin-right: 22px; width: 300px; height: 45px; border: solid thin gray; 
									border-radius: 7px; margin: 20px 0px 0px 25px; padding: 0 15px;"
								type="date">

						</div>
						<div style="text-align: center;">
							탑승 인원 
							<input name="seat_count" value="seat_count"
								style="width: 60px; height: 45px; border: solid thin gray; border-radius: 7px; margin-top: 20px; margin: 20px 0px 0px 25px; padding: 5px;"
								type="number" min="1">
							명
						</div><br>
						<div style="text-align: center;">
						좌석 등급
						<input type="radio" name="seat_level" value="Economy" style="margin-left: 30px;" checked="checked"> 이코노미
						<input type="radio" name="seat_level" value="Business"> 비즈니스
						<input type="radio" name="seat_level" value="First_class"> 퍼스트
						</div>
						<div class="air-search">
							<button onclick="javascript:ow_valid_check()">항공편 검색</button>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
		// 오늘 날짜로 최솟값 지정
			var frm0 = document.forms[0];
			var frm1 = document.forms[1];	
			var today = new Date();
			
			var rd_dep = frm0.rd_dep_time;
			var rd_retr = frm0.rd_retr_time;
			var ow_dep = frm1.ow_dep_time;

			document.getElementById('ow_dep').min = dateFormat(today);
			document.getElementById('rd_dep').min = dateFormat(today);
			document.getElementById('rd_retr').min = dateFormat(today);
			
			function dateFormat(today) {
				const month = (today.getMonth() + 1).toString().padStart(2, 0);
				const date = today.getDate().toString().padStart(2, 0);
				var result = [today.getFullYear(), month, date].join('-');
				return result;
			}
			</script>
		<%@include file="footer.jsp"%>
	</body>

</html>