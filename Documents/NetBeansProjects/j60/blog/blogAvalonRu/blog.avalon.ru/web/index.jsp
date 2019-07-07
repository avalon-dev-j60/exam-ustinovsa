<%-- 
    Document   : index
    Created on : 15.06.2019, 12:29:34
    Author     : JAVA
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html"
        pageEncoding="UTF-8"%>
<%--
Подключение серверных тегов
--%>
<fmt:setBundle basename="ru.avalon.blog.resources.labels"/>

<%@taglib prefix="base" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="content" tagdir="/WEB-INF/tags/content/" %>

<base:layout>
    <jsp:attribute name="title">
        <fmt:message key="label.blog.title"/>
    </jsp:attribute>

    <jsp:body>
        <p>
            Таким образом сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что постоянный количественный рост и сфера нашей активности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение форм развития.
        </p>
        <div class="one half centered">
            <h2>
                <fmt:message key="label.blog.title"/>
            </h2>
                <content:showAllPublications/>
        </div>
    </jsp:body>
</base:layout>

