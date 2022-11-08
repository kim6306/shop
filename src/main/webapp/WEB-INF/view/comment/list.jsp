<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>${title}</title>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
</head>
<body><h1>${title}</h1>
<div class="container">
    <jsp:include page="/WEB-INF/view/layouts/nav.jsp"/>
    <input type="button" value="เพิ่มความคิดเห็น"
           onclick="window.location.href='${pageContext.request.contextPath}/comment/create'; return false;"class="add-button"/>
    <table>
        <thead>
        <th>Name</th>
        <th>Email</th>
        <th>Comment</th>
        </thead>
        <tbody><c:forEach var="comment" items="${comments}">
            <tr>
                <td>${comment.name}</td>
                <td>${comment.email}</td>
                <td>${comment.comment}</td>

            </tr>
        </c:forEach></tbody>
    </table>
</div>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>