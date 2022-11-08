<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPEhtml><html><head><title>${title}</title></head><body><div id="header"><h1>${title}</h1></div><div class="container">
<jsp:include page="/WEB-INF/view/layouts/nav.jsp"/>
<div id="container"><i>กรอกข้อมูลในฟอร์ม. เครื่องหมายดอกจัน(*) หมายถึงห้ามว่าง</i><br><br>
    <form:form
        action="${pageContext.request.contextPath}/comment/save"
        modelAttribute="comment"
        method="POST"><form:hidden
        path="id"/>
    <table>
        <colgroup>
            <col style="width: 160px;">
            <col style="width: auto;">
        </colgroup>
        <tbody>
        <tr>
            <td><label>Name :</label></td>
            <td><form:input path="name"/><form:errors path="name" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label>Email :</label></td>
            <td><form:input path="email"/><form:errors path="email" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label>* Comment:</label></td>
            <td><form:textarea path="comment" cols="50" rows="5"></form:textarea>
                <form:errors path="comment" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label></label></td>
            <td><input type="submit" value="บันทึก" class="save"/>
                <input type="button" value="ยกเลิก"
                       onclick="window.location.href='${pageContext.request.contextPath}/comment/list'; return false;"
                       class="cancel-button"/>
            </td>
        </tr>
        </tbody>
    </table>
</form:form></div>
</div>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body></html>