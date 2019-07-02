<%-- 
    Document   : login
    Created on : 22.06.2019, 14:19:09
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<common:layout title="Sign in">
    <div class="one half centered">
        <h2>
            Sign in
        </h2>
        <auth:loginForm/>
    </div>
    
</common:layout>
