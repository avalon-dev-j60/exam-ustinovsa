
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="content" tagdir="/WEB-INF/tags/content/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:layout>

    <jsp:attribute name="title">
        <fmt:message key="label.publication.title"/>
    </jsp:attribute>
    <jsp:body>
        <div class="three thirds centered">
            <h2>
                <fmt:message key="label.publication.title"/>
            </h2>
                <content:publication/>
        </div>
    </jsp:body>

</common:layout>

