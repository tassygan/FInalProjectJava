<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  Date: 12/11/2020
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Edit club information</title>
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

<%
    String host = "jdbc:mysql://localhost/xD";
    Connection con = null;
    Statement st = null;
    ResultSet res = null;
    PreparedStatement stmt = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(host, "root", "");
%>

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

                        <%
                            st = con.createStatement();
                            String t = request.getParameter("t");
                            int num = Integer.parseInt(t);
                            String data = "select * from clubs where id = '"+num+"'";
                            res = st.executeQuery(data);
                            while (res.next()) {
                        %>
                    <c:if test="${clubs != null}">
                        <input type="hidden" name="id" value="<%=res.getString("id") %>" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>Club name</label>
                        <input type="text" value="<%=res.getString("name") %>" class="form-control"
                               name="name" minlength="3">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Instagram account</label>
                        <input type="text" value="<c:out value="<%=res.getString("instagram") %>" class="form-control"
                               name="instagram" minlength="5">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Information</label>
                        <textarea name="information" value="<%=res.getString("information") %>"
                                  class="form-control" minlength="20"></textarea>
                    </fieldset>

                    <fieldset class="form-group">
                        <label>President</label>
                        <input type="text" value="<%=res.getString("president") %>" class="form-control"
                               name="president">
                    </fieldset>
                        <%
                            }
                        %>
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
        </div>
    </div>
</div>
</body>
    <%
        String a = request.getParameter("id");
        String b = request.getParameter("name");
        String c = request.getParameter("instagram");
        String d = request.getParameter("information");
        String e = request.getParameter("president");
        if (a!=null && b!=null && c!=null && d!=null && e!=null) {
            String query = "update club set name=?, instagram=?, information=?, president=? where id='"+a+"'";
            stmt = con.prepareStatement(query);
            stmt.setString(1,b);
            stmt.setString(2,c);
            stmt.setString(3,d);
            stmt.setString(4,e);
            stmt.executeUpdate();
            //set to main page
            response.sendRedirect("index.jsp");
        }

    %>

<jsp:include page="footer.jsp"></jsp:include>
</html>