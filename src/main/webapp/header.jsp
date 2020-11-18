<%--
  Created by IntelliJ IDEA.
  Date: 11/11/2020
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Astana IT University Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        .footer {
            position: fixed;
            bottom: 0;
            width:100%;
            height: 40px;
            background-color: royalblue;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: royalblue">
        <div><a href="index.jsp" class="navbar-brand">Astana IT University Portal</a></div>

        <ul class="navbar-nav navbar-collapse justify-content-end">
            <li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
            <li><a href="<%= request.getContextPath() %>/signup" class="nav-link">Signup</a></li>
        </ul>
    </nav>
</header>
