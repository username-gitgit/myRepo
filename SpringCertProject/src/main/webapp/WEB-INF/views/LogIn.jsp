<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<% request.setCharacterEncoding("utf-8");%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회원 로그인</title>
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
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />

<!-- Contents -->
<body>
	<section>
		<div data-aos="fade-down" data-aos-easing="linear"
			data-aos-duration="500">
			<div class="container px-5">
				<div class="py-5 px-4 px-md-5">
					<div class="row gx-5 justify-content-center">
						<div
							class="card shadow rounded-4 border-0 col-sm-8 col-md-6 col-lg-5 p-4">
							<form action="memberIn" method="post">
								<div class="text-left pb-3">
									<h1 class="display-5 fw-bolder mb-2 fs-1">
										<span class="d-inline LogoGradient-text fs-2">회원 로그인</span><br>
									</h1>
									<!-- 								<p class="lead fw-normal text-muted mb-0 fs-6">이메일과 비밀번호를 입력하시고
						로그인해 주세요.</p> -->
								</div>
								<div class="Sans form-floating text-muted mb-3">
									<input class="form-control" name="email" id="email"
										type="email" placeholder="이메일" /> <label for="email">이메일</label>
								</div>
								<div class="Sans form-floating text-muted mb-3">
									<input class="form-control" name="password" id="password"
										placeholder="비밀번호" type="password" /> <label for="password">비밀번호</label>
								</div>
								<div class="Sans text-center">
									<button
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary btn-lg d-inline-block 
									col-12 fw-bolder fs-4 mt-1"
										id="submitButton" type="submit">로그인</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- Footer-->
	<!-- 	<footer class="Sans mt-auto" style="text-shadow: 1px 1px 1px white">
		<div class=" px-5">
			<div class="row align-items-end  flex-column ">
				justify-content-between flex-sm-row
				<div class="col-auto small m-0">Copyright &copy; Ulsan Green
					Hospital by Team ABC 2023</div>
			</div>
		</div>
	</footer> -->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
</body>
</html>