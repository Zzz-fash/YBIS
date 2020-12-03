<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <link href="/static/csss/bootstrap.min.css" rel="stylesheet" type="text/css">
    <meta charset="utf-8">
    <title>录入学生信息</title>
    <style>

        input[type=text], select {
            width: 150px;
            height: 30px;
            font-size: 18px;
        }

        tr > td:first-child {
            text-align: right;
            font-size: 18px;
        }
    </style>
</head>
<body>
<table style="margin-left: 40%;">
    <form action="/yu/add" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="form-group">
            <tr>
                <td colspan="2"><h1 align="center">录入学员信息</h1></td>
            </tr>
            <tr>
                <td>学生名称</td>
                <td><input type="text" name="uName" id="uName" value=""/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="uPassword" id="uPassword"/></td>
            </tr>
            <tr>
                <td>学生账号：</td>
                <td><input type="text" name="uPhone" id="uPhone" value=""/>

                </td>
            </tr>
            <tr>
                <td>学生地址：</td>
                <td><input type="text" name="uAddress" id="uAddress" value=""/></td>
            </tr>
            <tr>
                <td>学生班级：</td>
                <td>
                    <select name="cId">
                        <c:forEach items="${classs}" var="classss">
                            <option value="${classss.cId}">${classss.cName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>


            <tr>
                <td>学生状态：</td>
                <td>
                    <select name="status">
                        <option value="0">在校</option>
                        <option value="1">离校</option>
                        <option value="2">病假</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>入学时间：</td>
                <td><input type="date" name="uDate" id="uDate" value=""/>
                </td>
            </tr>

            <tr>
                <td>上传头像：</td>
                <td><input type="file" name="filename" id="idPic" enctype="multipart/form-data" value="请上传头像"/>
                </td>
            </tr>


            <tr>
                <td colspan="2">
                    <input align="center" type="submit" id="buttun" value="提交"/>
                    <input type="reset" name="" id="" value="重置"/>
                </td>
            </tr>
        </div>
    </form>
</table>
</body>
</html>
<script>
    $(function () {
        $("#buttun").click(function () {
            var   uName=$("#uName").val(); //学生名称
            var   password=$("#password").val(); //学生密码
            var   uPhone=$("#uPhone").val(); //学生账号
            var  uAddress =$("#uAddress").val(); //学生地址
            var  status =$("#status").val(); //学生状态

            if (uName==""){
                alert("学生地址不能为空!!!")
                return  false;
            }
            if (password==""){
                alert("学生密码不能为空!!!")
                return  false;
            }
            if (uPhone==""){
                alert("学生账号不能为空!!!")
                return  false;
            }
            if (uAddress==""){
                alert("学生地址不能为空!!!")
                return  false;
            }
            if (status==""){
                alert("学生状态不能为空!!!")
                return  false;
            }

        })
    })

</script>

