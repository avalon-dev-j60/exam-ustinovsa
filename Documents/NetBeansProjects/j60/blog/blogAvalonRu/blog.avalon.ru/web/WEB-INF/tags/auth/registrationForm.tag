<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/"%>
   
<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:error/>

<form name="registrationForm"
      action="${pageContext.servletContext.contextPath}/registration"
      method="post">
<p class="row gap-bottom">
        <input type="email"
               name="email"
               value="${param.email}"
               placeholder="<fmt:message key="label.email"/>"
               required>
        
    </p>
    <p class="row gap-bottom">
        <input type="password"
               name="password"
               placeholder="<fmt:message key="label.password"/>"
               required>
    </p>
    <p class="row gap-bottom">
        <input type="password"
               name="confirmation"
               placeholder="<fmt:message key="label.password.confirmation"/>"
               required>
    </p>
    <p class="row gap-bottom">
        <a href="${pageContext.servletContext.contextPath}/login">
            <fmt:message key="label.sign-in.action"/>
        </a>
            <button class="pull-right">
                <fmt:message key="label.sign-up.action"/>
            </button>
    </p>
    
</form>
