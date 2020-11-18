<%--
  Created by IntelliJ IDEA.
  Date: 11/11/2020
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add event (form)</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: royalblue">
        <div>
            <a href="" class="navbar-brand"> University Portal</a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list"
                   class="nav-link">Clubs</a></li>
        </ul>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list"
                   class="nav-link">Events</a></li>
        </ul>
    <ul class="navbar-nav navbar-collapse justify-content-end">
        <li><a href="<%=request.getContextPath()%>/logout"
               class="nav-link">Logout</a></li>
    </ul>
</nav>
</header>

<div class="container col-md-5">
<div class="card">
    <div class="card-body">
        <c:if test="${events != null}">
        <form action="update" method="post">
            </c:if>
            <c:if test="${events == null}">
            <form action="insert" method="post">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${events != null}">
                            Edit event
                        </c:if>
                        <c:if test="${events == null}">
                            Add a new event
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${events != null}">
                    <input type="hidden" name="id" value="<c:out value='${events.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>Event name</label>
                    <input type="text" value="<c:out value='${events.eventName}' />" class="form-control"
                           name="eventName" required="required" minlength="3">
                </fieldset>

                <fieldset class="form-group">
                    <label>Date</label>
                    <input type="date" value="<c:out value='${events.date}' />" class="form-control"
                           name="date" minlength="5" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Organiser</label>
                    <textarea name="organiser" value="<c:out value='${events.organiser}' />"
                              class="form-control" minlength="20" required="required"></textarea>
                </fieldset>

                <fieldset class="form-group">
                    <label>Cost</label>
                    <input type="text" value="<c:out value='${events.cost}' />" class="form-control"
                           name="cost">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            </form>
    </div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
