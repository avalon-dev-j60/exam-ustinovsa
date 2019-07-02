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
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    <a href="${context}/login" class="padded">
                        Sign in
                    </a>
                    <a href="${context}/registration" class="padded">
                        Sign up
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="${context}/passwordChange" class="padded">
                        Change password
                    </a>
                    <a href="${context}/logout" class="padded">
                        Sign out
                    </a>
                </c:otherwise>
            </c:choose>    
        </li>
    </ul>
</nav>
