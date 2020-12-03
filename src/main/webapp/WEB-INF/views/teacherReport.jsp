<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/11/27
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="../../static/charts/echarts.js"></script>
    <style>
        @import url(../../static/css/teacherReport1.css);
    </style>
    <link rel="stylesheet" href="../../static/font/iconfont.css">
</head>
<body>
<header id="header" class="container-fluid">
<ul class="main_polaroids col-lg-12 col-md-12">
    <c:forEach items="${classes}" var="c">
    <li><a href="/isTM?cId=${c.cId}" title="${c.cName}"><img src="../../static/images/main_images/19.jpg" alt="风景1" /></a></li>
    </c:forEach>
</ul>
</header>
</body>
</html>
