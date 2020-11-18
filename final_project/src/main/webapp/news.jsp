<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/header.jsp"></jsp:include>
<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://127.0.0.1:3306/project?useUnicode=true&serverTimezone=UTC"
        user="root" password=""
/>
<sql:query dataSource="${db}" var="news">
    SELECT * FROM news;
</sql:query>

<div class="row">

    <div class="container">
        <br>
        <h1 class="text-center">AITU NEWS</h1>
        <hr>
        <br>
        <a href = "add_news.jsp">
            <button type="button" class="btn btn-primary" style = "margin-left: 90%">Add</button>
        </a>
        <c:forEach var="news" items="${news.rows}">
            <div class = "container" style = "width: 70%; margin-bottom: 100px">
                <p class = "h3">
                    <c:out value = "${news.title}" />
                    <br>
                    <small class="text-muted"><c:out value = "${news.date}" /></small>
                </p>
                <br>
                <p>
                    <c:out value =  "${news.content}" />
                </p>
                <a href = "edit_news.jsp?id=<c:out value = "${news.id}" />">
                    <button type="button" class="btn btn-primary">Edit</button>
                </a>
                <a href = "delete_news.jsp?id=<c:out value = "${news.id}" />">
                <button type="button" class="btn btn-primary">Delete</button>
                </a>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="/footer.jsp"></jsp:include>
