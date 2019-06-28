<%-- 
    Document   : loginForm
    Created on : 22.06.2019, 14:25:27
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>

<common:error/>

<form   name="loginForm" 
        action="${pageContext.servletContext.contextPath}/login"
        method="post">
    <p class="row gap-bottom">
        <input type="email"
               name="email"
               value="${param.email}"
               placeholder="Enter your email here..."
               required>
        
    </p>
    <p class="row gap-bottom">
        <input type="password"
               name="password"
               placeholder="Enter your password here..."
               required>
        
    </p>
    <p class="row gap-bottom">
        <a href="${pageContext.servletContext.contextPath}/register">
            Sign up
        </a>
            <button class="pull-right">
                Sign in
            </button>
    </p>
</form>