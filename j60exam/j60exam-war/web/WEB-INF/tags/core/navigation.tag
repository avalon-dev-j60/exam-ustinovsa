<%-- 
    Document   : navigation
    Created on : 15.06.2019, 13:10:12
    Author     : JAVA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<c:set var="context" value="${pageContext.servletContext.contextPath}"></c:set>
    <nav title="Dev blog example">
        <ul>
            <li>
                <a href="${context}">
                Blog
            </a>
        </li>
        <li>
            <a href="${context}/author">
                Author
            </a>
        </li>
        <li>
            <a href="${context}/contacts">
                Contacts
            </a>
        </li>
        <li class="pull-right">
            <a href="${context}/login">
                Sign in
            </a>
        </li>
    </ul>
</nav>
