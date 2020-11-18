
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
<sql:query dataSource="${db}" var="events">
    SELECT * FROM `events`
</sql:query>
<div class="row">

    <div class="container">
        <h3 class="text-center">AITU Events</h3>
        <hr>

        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Event name</th>
                <th>Date</th>
                <th>Organiser</th>
                <th>Cost</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="events" items="${events.rows}">
                <tr>
                    <td><c:out value="${events.eventName}" /></td>
                    <td><c:out value="${events.date}" /></td>
                    <td><c:out value="${events.organiser}" /></td>
                    <td><c:out value="${events.cost}" /></td>

                    <td><a href="edit?id=<c:out value='${events.id}' />">Edit</a></td>
                    <td><a href="delete?id=<c:out value='${events.id}' />">Delete</a></td>
                </tr>
            </c:forEach>

            </tbody>

            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new"
                   class="btn btn-success">Add event</a>
            </div>

        </table>
    </div>
</div>

<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
