<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>온라인 증명서 발급</title>
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
<link href="css/styles.css" rel="stylesheet" />
<!--  #경로 수정 필요함 #  -->
</head>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-white">
	<div class="container px-5">
		<a class="navbar-brand fs-6 px-3 GreenText-gradient" href="home.jsp"><span
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
				<li class="nav-item"><a href="LogIn.jsp"><button
							class="badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
							style="border: none;">로그인</button></a></li>
				<li class="nav-item"><a href="SignUp.jsp"><button
							class="nav-link badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
							style="border: none;">회원가입</button></a></li>
			</ul>
		</div>
	</div>
</nav>
<header> </header>

<body>
	<!--  class="mainBg" -->
	<main>
		<!-- Page Content-->
		<div class="container px-5">
			<div class="text-center mb-5">
				<h1 class="fw-bolder mb-0">
					<span class="text-gradient d-inline">온라인 증명서 상세 내역</span>
				</h1>
			</div>

			<div class="row gx-5 justify-content-center">
				<div class="col-lg-11 col-xl-9 col-xxl-8">
					<div class="card shadow border-0 rounded-4 mb-5">
						<div class="card-body p-5 row align-items-center ">
							<table class="text-center">
								<tr>
									<td><h4 class="DarkText-gradient fw-bolder mb-4">진료비
											납부 확인서</h4></td>
								</tr>
								<tr>
									<td>상세 내용<br> <br> <br> <br> <br>
										<br> <br> <br> <br> <br></td>
								</tr>
								<tr>
									<td><a
										class="text-center mx-auto bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-5 
										fw-bolder fs-5 mt-3 Sans bi bi-download me-2"
										href="Download.jsp"> 증명서 다운로드 </a></td>
								</tr>
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
	<script src="js/scripts.js"></script>
</body>
</html>