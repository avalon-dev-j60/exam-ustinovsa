<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/"%>

<common:error/>

<form name="passwordChangeForm"
      action="${pageContext.servletContext.contextPath}/passwordChange"
      method="post">
    <p class="row gap-bottom">
        <input type="password"
               name="password"
               placeholder="Enter your current password here..."
               required>
    <p class="row gap-bottom">
        <input type="password"
               name="newPassword"
               placeholder="Enter your new password here..."
               required>
    <p class="row gap-bottom">
        <input type="password"
               name="confirmation"
               placeholder="Confirm your new password here..."
               required>
    <p class="row gap-bottom">
        <button class="pull-right">
            Confirm & Save
        </button>
    </p>


</form>

