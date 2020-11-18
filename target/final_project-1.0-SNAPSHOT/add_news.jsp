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
<h1 class = "text-center">AITU ADD NEWS</h1>
<div class = "container" style = "width: 70%">

    <form action = "add_news_db.jsp" method="post" style = "font-size: 50px; color: #656565;">
        <table style="margin:20px;">
            <tr>
                <td style = "font-size: 30px">Title: </td>
                <td><input type = "text" name = "title" size = "97" required></td>
            </tr>
            <tr>
                <td style = "font-size: 30px">Text: </td>
                <td><textarea name = "content" cols = "100" rows = "10" required></textarea></td>
            </tr>
            <tr>
                <td style = "font-size: 30px">Publish date: </td>
                <td><input type = "date" name = "date" required></td>
            </tr>
            <tr>
                <td><button type="submit" class="btn btn-primary">Add Article</button></td>
            </tr>
            <tr>
                <td><a href="news.jsp" style = "margin-top: 50px">Back to All News</a></td>
            </tr>

        </table>
    </form>

</div>

<jsp:include page="/footer.jsp"></jsp:include>