<%-- 
    Document   : error
    Created on : 22.06.2019, 15:22:45
    Author     : JAVA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@attribute name="error" %>

<c:if test="${not empty error}">
    <div class="box error gap-bottom">
        ${error}
    </div>
</c:if>

