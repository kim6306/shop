<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

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
<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">
        <h1 class="logo me-auto"><a href="index.html">Termite</a></h1>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}">หน้าหลัก</a></li>


                <security:authorize access="hasRole('MANAGER')">
                    <li><a href="${pageContext.request.contextPath}/product/list">สินค้า</a></li>
                </security:authorize>


                <security:authorize access="hasRole('ADMIN')">
                    <li><a href="${pageContext.request.contextPath}/shop/list">ร้านค้า</a></li>
                </security:authorize>

                <security:authorize access="!isAuthenticated()">
                    <li><a href="${pageContext.request.contextPath}/login">ลงชื่อเข้าสู่ระบบ</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li>
                        User: <security:authentication property="principal.username"/>
                        Role (s): <security:authentication property="principal.authorities"/>
                    </li>
                    <li><a href="#" onclick="javascript: frmLogout.submit();">ลงชื่อออกจากระบบ</a></li>
                </security:authorize>

            </ul>
        </nav>
    </div>
</header>
<!-- End Header -->
