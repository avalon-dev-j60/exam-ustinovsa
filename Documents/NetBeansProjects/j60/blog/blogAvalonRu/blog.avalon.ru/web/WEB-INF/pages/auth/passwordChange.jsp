<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>
<common:layout>
    <jsp:attribute name="title">
        <fmt:message key="label.password-change.title"/>
    </jsp:attribute>
    <jsp:body>
    <div class="one half centered">
        <h2>
           <fmt:message key="label.password-change.title"/>
        </h2>
        <auth:passwordChange/>
    </div>
    </jsp:body>
</common:layout>
