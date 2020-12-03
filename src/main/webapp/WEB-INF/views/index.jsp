<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学校管理</title>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <%
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        request.setAttribute("sim",simpleDateFormat);
    %>
<style type="text/css">
    #listss tr:nth-of-type(odd){
        background-color: yellow;
    }
</style>
</head>
<body>
<table align="center">
    <h2 style="color: #6A6AFF">标准信息列表</h2>
    <form action="/yu/schoolmanager" id="from" method="post">
        <input type="submit" value="查询"> <input type="text" name="smPhone" id="smPhone">
        <table border="2" id="listss">
            <tr >
                <td>学校编号</td>
                <td>学校的账号</td>
                <td>学校密码</td>
                <td>状态</td>
                <td>学校管理员的邮箱</td>
                <td>学校管理员的头像</td>
                <td>操作</td>
            </tr>
            <c:forEach var="list" items="${pageInfo.list}">
                <tr>
                    <td>${list.smId}</td>
                    <td>${list.smPhone}</td>
                    <td>${list.smPassword}</td>
                    <td>
                        <c:if test="${list.status==0}">审核未通过</c:if>
                        <c:if test="${list.status==1}">审核通过</c:if>
                        <c:if test="${list.status==2}">正在审核中...</c:if>
                    </td>
                    <td>${list.smEmail}</td>
                    <td>${list.smPath}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <hr>

    </p>
    <!-- 显示页数 -->
    <div class="row">
        <div class="col-lg-8"></div>
        <div class="duty_pages col-lg-4">
            <a  class="duty_paging" href="/yu/schoolmanager?pageNum=${pageInfo.firstPage}">首页</a>
            <a class="duty_paging" href="/yu/schoolmanager?pageNum=${pageInfo.prePage}">上一页</a>
            <a class="duty_paging" href="/yu/schoolmanager?pageNum=${pageInfo.nextPage}">下一页</a>
            <a class="duty_paging" href="/yu/schoolmanager?pageNum=${pageInfo.lastPage}">末页</a>
            <a>第${pageInfo.pageNum}页/共${pageInfo.pages}页 </a>
        </div>
    </div>

</table>
</body>
</html>

