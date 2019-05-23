<!-- 	DJ PARK
		이달의 책 리스트
		(보류)책 제목을 누르면 상세보기 페이지로 넘어감.	-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Creative Multipurpose Bootstrap Template">

	<!-- Favicon -->
	<link rel="shortcut icon" href="../assets/images/favicon.ico">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="../assets/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="../assets/vendor/themify-icons/css/themify-icons.css" />
	<link rel="stylesheet" type="text/css" href="../assets/vendor/animate/animate.min.css" />
	<link rel="stylesheet" type="text/css" href="../assets/vendor/owlcarousel/css/owl.carousel.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

</head>

<body>
<header>
<%@ include file="../include/header.jsp" %>
</header>
	
	<!-- =======================
	Banner innerpage -->
	<div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url(assets/images/bg/04.jpg) no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">Blog Grid</h1>
					<h6 class="subtitle">We transform your perception into an excellent website</h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="index.html"><i class="ti-home"></i> Home</a></li>
							<li class="breadcrumb-item">Blog Grid</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
	Banner innerpage -->




	<!-- =======================
	blog -->
	<section class="blog-page pb-0">
		<div class="container">
			<c:forEach var="todayBookList" items="${todayBookList}">
			<div class="row">
				<div class="col-md-12 blog-grid blog-grid-3 portfolio-wrap" data-isotope='{ "itemSelector": ".post-item", "layoutMode": "fitRows" }'>
					<!-- 이달의 책 게시판 글 / 첨부파일 -->
					<div class="post-item">
						<div class="post-item-wrap">
							<div class="post-image">
							<%-- <input type="hidden" name="bookNum" value="${todayBookList.bookNum}">
							<input type="hidden" name="bookBrdNum" value="${todayBookList.bookBrdNum}"> --%>
								<img src="${todayBookList.imgPath}"alt="img">
								
								<span class="post-meta-category bg-grad"><a href="#">${todayBookList.bookBrdDate}</a></span>
							</div>
							
							<div class="post-item-desc">
							${todayBookList.imgPath}
								
								
								<h4>이달의 책 제목 : ${todayBookList.bookBrdTitle}</h4>
								
								<span class="post-meta">${todayBookList.bookTitle}</span>
								<span class="post-meta">저자 : ${todayBookList.writer}</span>
								<span class="post-meta">출판사 : ${todayBookList.publisher}</span>
								
								<p>내용 : ${todayBookList.bookBrdContent}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			<c:if test = "${LoginUser.authority eq '3'}">
			<div align="right">
                     <a class="btn btn-primary" href="admin?command=adminTodayBookRegFormAction">이달의 책 등록</a>
                  </div>
                  </c:if>
		</div>
	</section>


	<!-- =======================
	pagination -->
	<section class="pt-0">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<nav>
						<ul class="pagination justify-content-center">
						<c:if test="${paging.pageNum > 1}">
							<li class="page-item disabled"><a href="book?com"></a><span class="page-link">Prev</span> </li>
						
							
						</c:if>	
						
						
						
							<li class="page-item"><a class="page-link" href="#">Next</a> </li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	pagination -->
	<div> <a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a> </div>

	<!--Global JS-->
	<script src="../assets/vendor/jquery/jquery.min.js"></script>
	<script src="../assets/vendor/popper.js/umd/popper.min.js"></script>
	<script src="../assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Vendors-->
	<script src="../assets/vendor/owlcarousel/js/owl.carousel.min.js"></script>
	<script src="../assets/vendor/fitvids/jquery.fitvids.js"></script>
	<script src="../assets/vendor/isotope/isotope.pkgd.min.js"></script>
	<script src="../assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

	<!--Template Functions-->
	<script src="../assets/js/functions.js"></script>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>