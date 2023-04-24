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
<title>증명서 상세 내역</title>
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
	<div class="container px-5">
		<div class="text-left">
			<h1 class="display-5 fw-bolder pb-3">
				<span class="text-gradient d-inline fs-2">증명서 상세 내역</span>
			</h1>
		</div>
		<div class="row gx-1 justify-content-center">
			<div class="card-body shadow p-5 row align-items-center rounded-4">
				<table class="text-center">
					<tr>
						<td><h4 class="DarkText-gradient fw-bolder mb-4">진료비 납부
								확인서</h4></td>
					</tr>
					<tr>
						<td style="height: 700px;">상세 내용</td>
					</tr>
				</table>
			</div>
			<div class="Sans row justify-content-center">
				<a
					class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-3 fw-bolder fs-4 m-5 bi bi-download me-2"
					href="Download"> 다운로드 </a>
			</div>
		</div>
	</div>
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
</body>
</html>