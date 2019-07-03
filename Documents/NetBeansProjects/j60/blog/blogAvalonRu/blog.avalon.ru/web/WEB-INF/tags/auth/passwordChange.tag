<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/"%>

<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<common:error/>

<form name="passwordChangeForm"
      action="${pageContext.servletContext.contextPath}/passwordChange"
      method="post">
    <p class="row gap-bottom">
        <input type="password"
               name="password"
               placeholder="<fmt:message key="label.password.current"/>"
               required>
    <p class="row gap-bottom">
        <input type="password"
               name="newPassword"
               placeholder="<fmt:message key="label.password.new"/>"
               required>
    <p class="row gap-bottom">
        <input type="password"
               name="confirmation"
               placeholder="<fmt:message key="label.password.new.confirmation"/>"
               required>
    <p class="row gap-bottom">
        <button class="pull-right">
            "<fmt:message key="label.confirm-save.action"/>"
        </button>
    </p>


</form>

