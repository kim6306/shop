<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

<head>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">
</head>
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
            <li><a href="${pageContext.request.contextPath}/login" >ลงชื่อเข้าสู่ระบบ</a></li>
        </security:authorize>

        <security:authorize access="isAuthenticated()">
            <li>
                User: <security:authentication property="principal.username" />
                Role (s): <security:authentication property="principal.authorities" />
            </li>
        <li><a href="#" onclick="javascript: frmLogout.submit();">ลงชื่อออกจากระบบ</a></li>
        </security:authorize>

    </ul>
</nav>
<hr>
