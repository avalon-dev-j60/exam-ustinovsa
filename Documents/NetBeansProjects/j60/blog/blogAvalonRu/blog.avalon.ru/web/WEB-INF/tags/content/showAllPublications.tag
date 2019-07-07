<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<form name="showAllPublicationsForm"
      action="${pageContext.servletContext.contextPath}"
      method="post">
    
    <p class="row padded left-ten">
        <button class="pull-right">
            <fmt:message key="label.blog.show.action"/>
        </button>
    </p>
       
</form>