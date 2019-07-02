<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/"%>
          
<common:error/>

<form name="registrationForm"
      action="${pageContext.servletContext.contextPath}/registration"
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
        <input type="password"
               name="confirmation"
               placeholder="Repeat your password here..."
               required>
    </p>
    <p class="row gap-bottom">
        <a href="${pageContext.servletContext.contextPath}/login">
            Sign in 
        </a>
            <button class="pull-right">
                Sign up
            </button>
    </p>
    
</form>
