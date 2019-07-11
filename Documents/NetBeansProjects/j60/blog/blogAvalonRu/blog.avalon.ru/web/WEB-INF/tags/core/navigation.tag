<%-- 
    Document   : navigation
    Created on : 15.06.2019, 13:10:12
    Author     : JAVA
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<fmt:setBundle var="labels" basename="ru.avalon.blog.resources.labels"/>

<c:set var="context" value="${pageContext.servletContext.contextPath}"></c:set>



    <nav title="Dev blog example">
        <ul>
            <li>
                <a href="${context}">
                <fmt:message bundle="${labels}" key="label.blog"/>
            </a>
        </li>
        <li>
            <a href="${context}/author">
                <fmt:message bundle="${labels}" key="label.author"/>
            </a>
        </li>
        <li>
            <a href="${context}/contacts">
                <fmt:message bundle="${labels}" key="label.contacts"/>
            </a>
        </li>
        <li class="pull-right">
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    <a href="${context}/login" class="padded">
                        <fmt:message bundle="${labels}"
                                     key="label.sign-in.title"/>
                    </a>
                    <a href="${context}/registration" class="padded">
                        <fmt:message bundle="${labels}"
                                     key="label.sign-up.title"/>
                    </a>
                </c:when>
                <c:otherwise>
                     <a href="${context}/publication" class="padded">
                        <fmt:message bundle="${labels}"
                                     key="label.publication.title"/>
                    </a>
                    <a href="${context}/passwordChange" class="padded">
                        <fmt:message bundle="${labels}"
                                     key="label.password-change.title"/>
                    </a>
                    <a href="${context}/logout" class="padded">
                        <fmt:message bundle="${labels}"
                                     key="label.sign-out.action"/>
                    </a>
                </c:otherwise>
            </c:choose>    
        </li>
    </ul>
</nav>
