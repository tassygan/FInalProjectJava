<%--
  Created by IntelliJ IDEA.
  Date: 11/11/2020
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Add club (form)</title>
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
<%--for logout TO DO--%>
    <ul class="navbar-nav navbar-collapse justify-content-end">
        <li><a href="<%=request.getContextPath()%>/logout"
               class="nav-link">Logout</a></li>
    </ul>
</nav>
</header>

<div class="container col-md-5">
<div class="card">
    <div class="card-body">
        <c:if test="${clubs != null}">
        <form action="update" method="post">
            </c:if>
            <c:if test="${clubs == null}">
            <form action="insert" method="post">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${clubs != null}">
                            Edit club
                        </c:if>
                        <c:if test="${clubs == null}">
                            Add a new club
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${clubs != null}">
                    <input type="hidden" name="id" value="<c:out value='${clubs.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>Club name</label>
                    <input type="text" value="<c:out value='${clubs.name}' />" class="form-control"
                           name="name" required="required" minlength="3">
                </fieldset>

                <fieldset class="form-group">
                    <label>Instagram account</label>
                    <input type="text" value="<c:out value='${clubs.instagram}' />" class="form-control"
                           name="instagram" minlength="5" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Information</label>
                    <textarea name="information" value="<c:out value='${clubs.information}' />"
                              class="form-control" minlength="20" required="required"></textarea>
                </fieldset>

                <fieldset class="form-group">
                    <label>President</label>
                    <input type="text" value="<c:out value='${clubs.president}' />" class="form-control"
                           name="president" required="required">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            </form>
    </div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
