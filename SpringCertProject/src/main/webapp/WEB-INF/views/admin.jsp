<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
<!-- # 경로 바꿔주기 # -->
</head>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-white">
	<div class="container px-5">
		<a class="navbar-brand fs-6 px-3 GreenText-gradient" href="home"><span
			class="fw-bolder">ULSAN GREEN <br>HOSPITAL
		</span></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse Sans" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder px-5">
				<li class="nav-item"><a class="nav-link">진료예약</a></li>
				<li class="nav-item"><a class="nav-link">건강정보</a></li>
				<li class="nav-item"><a class="nav-link">진료파트</a></li>
				<li class="nav-item"><a class="nav-link">나눔소통</a></li>
				<li class="nav-item"><a class="nav-link">병원안내</a></li>
				<li class="nav-item"><a href="LogIn"><button
							class="badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
							style="border: none;">로그인</button></a></li>
				<li class="nav-item"><a href="SignUp"><button
							class="nav-link badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
							style="border: none;">회원가입</button></a></li>
			</ul>
		</div>
	</div>
</nav>
<header> </header>

<body>
	<!--  class="mainBg" -->
	<main> <!-- Page Content-->
	<div class="px-5">
		<div class="text-center mb-5">
			<h1 class="display-5 fw-bolder mb-0">
				<span class="text-gradient d-inline fs-2">관리자 페이지</span><br>
			</h1>
		</div>

		<div class="row gx-5 justify-content-center">
			<div class="col-lg-11 col-xl-9 col-xxl-8">
				<form action="doctorIn" method="post" class="Sans">
					<table>
						<tr>
						<% String email = (String) session.getAttribute("doctor"); %>
							<td class="pb-2">관리자 계정 : Doctor <%=email%></td>			
						</tr>
					</table>
				</form>
			</div>
		</div>
		<br>
		<br>
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-11 col-xl-9 col-xxl-8">
				<div class="card shadow border-0 rounded-4 mb-5">
					<div class="card-body p-5 row align-items-center ">
						<table class="text-center">
							<tr>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">환자 이름</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">환자 주민번호</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">상병명코드</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">병명</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">수술명</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">입원 날짜</h4></td>
								<td><h4 class="DarkText-gradient fw-bolder mb-4">퇴원 날짜</h4></td>
							</tr>
							<c:forEach items="${member}" var="member">
							<tr>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										${member.name}</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										${member.residentid}</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										-</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										-</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										-</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										-</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										-</div>
								</td>
								<td>
									<div
										class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fs-5 Sans fw-light">
										<a href="memModify?email=${member.email}">작성</a></div>
								</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
<!-- 	<script src="resources/js/scripts.js"></script> -->
</body>
</html>