<%-- 
    Document   : login
    Created on : 22.06.2019, 14:19:09
    Author     : JAVA
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:layout>
    <jsp:attribute name="title">
        <fmt:message key="label.sign-in.title"/>
    </jsp:attribute>
    <jsp:body>
        <div class="one half centered">
            <h2>
                Sign in
            </h2>
            <auth:loginForm/>
        </div>
    </jsp:body>
</common:layout>
