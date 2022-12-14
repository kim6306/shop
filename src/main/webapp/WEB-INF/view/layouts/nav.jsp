<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Termite Company</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<!-- ======= Top Bar ======= -->
<section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
            <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com">info@Itsci.ac.th</a>
            <i class="bi bi-phone-fill phone-icon"></i> +1 5589 55488 55
        </div>
        <div class="social-links d-none d-md-block">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
</section>
<nav>
    <ul>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex align-items-center">
                <h1 class="logo me-auto"><a href="${pageContext.request.contextPath}">Termite</a></h1>
                <nav>
                    <ul>

                        <security:authorize access="hasRole('MANAGER')">
                            <li><a href="${pageContext.request.contextPath}/product/list">??????????????????</a></li>
                        </security:authorize>
                        <security:authorize access="hasRole('ADMIN')">
                            <li><a href="${pageContext.request.contextPath}/shop/list">?????????????????????</a></li>
                        </security:authorize>
                        <security:authorize access="hasRole('MANAGER')">
                            <li><a href="${pageContext.request.contextPath}/cart/list">??????????????????</a></li>
                        </security:authorize>

                            <li><a href="${pageContext.request.contextPath}/comment/list">?????????????????????????????????</a></li>

                        <security:authorize access="!isAuthenticated()">
                            <li><a href="${pageContext.request.contextPath}/login">???????????????????????????????????????????????????</a></li>
                        </security:authorize>
                        <security:authorize access="isAuthenticated()">
                            <li><a href="#" onclick="javascript: frmLogout.submit();">????????????????????????????????????????????????</a></li>
                        </security:authorize>

                    </ul>
                </nav>
                <hr>
    </ul>
</nav>
</div>
</header>
<!-- End Header -->
