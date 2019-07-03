<%-- 
    Document   : registration
    Created on : 29.06.2019, 12:26:36
    Author     : JAVA
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:layout>
    <jsp:attribute name="title">
        <fmt:message key="label.sign-up.title"/>
    </jsp:attribute>
    <jsp:body>
    <div class="one half centered">
        <h2>
            <fmt:message key="label.sign-up.title"/>
        </h2>
        <auth:registrationForm/>
    </div>
    </jsp:body>
    
</common:layout>