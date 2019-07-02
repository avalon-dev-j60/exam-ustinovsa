<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags/auth/" %>

<common:layout title="Change your <del>destiny</del> password">
    <div class="one half centered">
        <h2>
            Change password
        </h2>
        <auth:passwordChange/>
    </div>
    
</common:layout>
