<%-- 
    Document   : publication
    Created on : Jul 4, 2019, 11:20:40 PM
    Author     : Home
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:error/>

<form name="publicationForm"
      action="${pageContext.servletContext.contextPath}/publication"
      method="post">
    <p class ="row gap-bottom">
        <label for="publicationTitle">
            <fmt:message key="label.publication.name"/>
        </label>
        <input id="publicationTitle"
               type="text"
               name="publicationTitle"
               value="${param.publicationTitle}"
               placeholder="<fmt:message key="label.publication.name"/>"
               required>
    </p>
    <p class ="row gap-bottom">
        <label for="content">
            <fmt:message key="label.publication.content"/>
        </label>
        <textarea id="content"
                  name="content"
                  value="${param.content}"
                  placeholder="<fmt:message key="label.publication.content"/>"
                  ></textarea>
    </p>
    <p class="row gap-bottom">
        <button class="pull-right">
            <fmt:message key="label.publication.action"/>
        </button>
    </p>

</form>
