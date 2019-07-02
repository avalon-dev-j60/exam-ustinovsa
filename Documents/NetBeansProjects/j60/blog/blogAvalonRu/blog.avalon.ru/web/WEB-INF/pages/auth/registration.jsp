<%-- 
    Document   : registration
    Created on : 29.06.2019, 12:26:36
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<common:layout title="Sign up">
    <div class="one half centered">
        <h2>
            Sign up
        </h2>
        <auth:registrationForm/>
    </div>
    
</common:layout>