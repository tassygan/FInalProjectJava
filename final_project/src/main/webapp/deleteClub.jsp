<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  Date: 12/11/2020
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<%
    String id = request.getParameter("d");
    int no = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/xD", "root", "");
    Statement st = con.createStatement();
    st.executeUpdate("delete from clubs where id='"+no+"'");
    //redirect to the main page - TO CREATE
    response.sendRedirect("index.jsp");
%>

</body>
</html>
