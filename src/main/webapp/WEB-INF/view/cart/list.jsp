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
  <table>
    <thead>
    <tr>
      <th>รหัสร้านค้า</th>
      <th>จำนวนสินค้า</th>
    </tr>
    </thead>
    <tbody><c:forEach var="cart" items="${carts}">
      <tr>
        <td><a href=${pageContext.request.contextPath}/cart/${cart.id}/view-products>${cart.code}</a></td>
        <td>${fn:length(cart.products)}</td>
      </tr>
    </c:forEach></tbody>
  </table>
</div>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>