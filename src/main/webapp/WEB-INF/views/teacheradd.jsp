<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <link href="/static/csss/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
    <style>
        @import "../../static/css/duty_style.css";
    </style>
    <meta charset="utf-8">
    <title>录入老师信息</title>
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
    <form action="/yu/teacheradd" method="post" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">
            <tr>
                <td colspan="2"><h1 align="center">录入老师信息</h1></td>
            </tr>
            <tr>
                <td>老师名称</td>
                <td><input type="text" name="tName" id="tName" value=""/></td>
            </tr>
            <tr>
                <td>老师密码：</td>
                <td><input type="password" name="tPassword" id="tPassword"/></td>
            </tr>
            <tr>
                <td>老师账号：</td>
                <td><input type="text" name="tPhone" id="tPhone" value=""/>

                </td>
            </tr>
            <tr>
                <td>描述(老师)：</td>
                <td><input type="text" name="tDesc" id="tDesc" value=""/></td>
            </tr>



            <tr>
                <td>老师状态：</td>
                <td>
                    <select name="status">
                        <option value="0">在校</option>
                        <option value="1">离校</option>
                        <option value="2">病假</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>老师邮箱：</td>
                <td><input type="text" name="tEmail" id="tEmail" value=""/>
                </td>
            </tr>

            <tr>
                <td>老师头像：</td>
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
            var   tName=$("#tName").val(); //
            var   password=$("#password").val(); //
            var   tPhone=$("#tPhone").val(); //
                var  tDesc =$("#tDesc").val(); //
                var  status =$("#status").val(); //
            var  tEmail =$("#tEmail").val(); //
            var mail  = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (tName==""){
                alert("老师名称不能为空!!!")
                return  false;
            }
            if (password==""){
                alert("老师密码不能为空!!!")
                return  false;
            }

            if (tPhone==""){
                alert("老师账号不能为空!!!")
                return  false;
            }
            if (tDesc==""){
                alert("老师描述不能为空!!!")
                return  false;
            }
            if (status==""){
                alert("老师状态不能为空!!!")
                return  false;
            }



            if (!mail.test(tEmail)) {//邮箱
                alert("邮箱格式不正确!");
                return  false;
            }

        })
    })

</script>

