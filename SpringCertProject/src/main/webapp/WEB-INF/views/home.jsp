<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	    
<!DOCTYPE html>
<html lang="ko">
<head>
<% request.setCharacterEncoding("utf-8"); %>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<meta name="description" content="" />
<meta name="author" content="" />
<title>울산 그린 병원</title>
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
<link href="resources/css/styles.css" rel="stylesheet" />
</head>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-white">
	<div class="container px-5">
		<a class="navbar-brand fs-6 px-3 GreenText-gradient" href="/"><span
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

<body class="d-flex flex-column h-100 mainBg">

	<main class="flex-shrink-0">
		<div class="py-5 container px-5 pb-5">
			<div class="row gx-5 align-items-center">
				<div class="col-xxl-6 mx-3 mt-3">
					<h1 class="fw-bolder mb-4">
						<span class="text-gradient d-inline">증명서 인터넷 발급</span>
					</h1>
					<!-- display-3  -->
					<p class="fs-4 lead fw-light mb-4 text-dark rounded"
						style="text-shadow: 1px 1px 1px white; background-color: rgba(255, 255, 255, 0.5);">
						인터넷을 사용하여 언제, 어디서든 증명서를 발급받을 수 있으며, 즉시 출력 또는 다운로드할 수 있습니다.</p>
					<div
						class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl-start pt-2 mb-3 Sans">
						<a
							class="bg-gradient-primary-to-secondary btn btn-primary btn-lg me-sm-3 fs-5 fw-bolder"
							href="Issue">인터넷 발급 바로가기</a>
						<!-- px-5 py-3  -->
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<!-- 	<footer class="bg-white mt-auto">
		py-4 
		<div class="container px-5">
			<div
				class="row align-items-center justify-content-between flex-column flex-sm-row">
				<div class="col-auto small m-0">
					Copyright &copy; ATeam 2023
				</div>
			</div>
		</div>
	</footer>  -->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>