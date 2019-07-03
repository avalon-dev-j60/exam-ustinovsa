<%-- 
    Document   : error
    Created on : 22.06.2019, 15:22:45
    Author     : JAVA
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<fmt:setBundle var="errors" basename="ru.avalon.blog.resources.errors"/>

<%@attribute name="error" %>

<c:if test="${not empty error}">
    <div class="box error gap-bottom">
        <fmt:message bundle="${errors}" key="${error}"/>
    </div>
</c:if>

