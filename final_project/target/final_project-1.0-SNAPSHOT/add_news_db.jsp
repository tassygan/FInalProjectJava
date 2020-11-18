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
    INSERT INTO news(title, content, date)
    VALUES('<%=request.getParameter("title")%>',
    '<%=request.getParameter("content")%>',
    '<%=request.getParameter("date")%>');
</sql:update>
<%
    response.sendRedirect("news.jsp");
%>