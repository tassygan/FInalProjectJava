
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<jsp:include page="/header.jsp"></jsp:include>
<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://127.0.0.1:3306/project?useUnicode=true&serverTimezone=UTC"
        user="root" password=""
/>
<sql:query dataSource="${db}" var="clubs">
    SELECT * FROM club;
</sql:query>
<div class="row">

    <div class="container">
        <h3 class="text-center">AITU Clubs</h3>
        <hr>

        <br>
        <table class="table table-bordered" style = "margin-bottom: 200px">
            <thead>
            <tr>
                <th>Club name</th>
                <th>Instagram</th>
                <th>Information</th>
                <th>President</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="clubs" items="${clubs.rows}">
                <tr>
                    <td><c:out value="${clubs.name}" /></td>
                    <td><c:out value="${clubs.instagram}" /></td>
                    <td><c:out value="${clubs.information}" /></td>
                    <td><c:out value="${clubs.president}" /></td>

                    <td><a href="edit_club.jsp?id=<c:out value='${clubs.id}' />">Edit</a></td>
                    <td><a href="delete_club.jsp?id=<c:out value='${clubs.id}' />">Delete</a></td>
                </tr>
            </c:forEach>

            </tbody>

            <div class="container text-left">
                <a href="add-club.jsp">
                    <button class="btn btn-success">Add club</button>
                </a>
            </div>

        </table>
    </div>
</div>

<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
