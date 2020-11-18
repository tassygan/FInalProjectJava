<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://127.0.0.1:3306/project?useUnicode=true&serverTimezone=UTC"
        user="root" password=""
/>
<sql:update var = "check" dataSource="${db}">
    INSERT INTO club(name, instagram, information, president)
    VALUES('<%=request.getParameter("name")%>',
    '<%=request.getParameter("insta")%>',
    '<%=request.getParameter("info")%>',
    '<%=request.getParameter("president")%>');
</sql:update>
<%
    response.sendRedirect("clubs-list.jsp");
%>