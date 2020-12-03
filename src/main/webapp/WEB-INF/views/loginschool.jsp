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
    <title>注册学校信息</title>
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
    <form action="/yu/addschools" method="post" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">

            <tr>
                <td>学校名称</td>
                <td><input  type="text" name="sName" id="sName"  value=""/></td>
            </tr>

            <tr>
                <td>学校地址</td>
                <td><input  type="text" name="sAddress" id="sAddress"  value=""/></td>
            </tr>


            <tr>
                <td>学校账号：</td>
                <td><input type="text"  name="smPhone" id="smPhone" value=""/>
                </td>
            </tr>
            <tr>
                <td>学校邮箱：</td>
                <td><input type="text"  name="smEmail" id="smEmail" value=""/>
                </td>
            </tr>

            <tr>
                <td>学校头像：</td>
                <td><input type="file" name="filename" id="idPic"  id="smPath" value=""/>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <input align="center" type="submit" id="button" value="提交"/>
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
        $("#button").click(function () {

            var sName = $("#sName").val();
            var smPhone = $("#smPhone").val();
            var sAddress = $("#sAddress").val(); //学校的地址
            var smEmail = $("#smEmail").val(); //学校的邮箱
            var mail = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;

            if (sName == "") {
                alert("学校名称不能为空！！！")
                return false;
            }

            if (!mail.test(smEmail)) {//邮箱
                alert("邮箱格式不正确");
                return false;
            }

            if (smPhone == "") {
                alert("账号不能为空!!!")
                return false;
            }
            if (sAddress == "") {
                alert("学校地址不能为空!!!")
                return false;
            }


            alert("录入成功,正在审核请等待....")
        })
    });
    // 定义存放生成随机数的数组
    var smPhone=new Array();
    // 循环N次生成随机数
    for(var i = 0 ; ; i++){
// 只生成10个随机数
        if(smPhone.length<11){
            generateRandom(11);
        }else{
            break;
        }
    }
    // 循环遍历随机数数组
    for(var i = 0 ; i < smPhone.length; i++){
        document.write(array[i]);
    }
    // 生成随机数的方法
    function generateRandom(count){
        var smPhone = parseInt(Math.random()*count);
        for(var i = 0 ; i < smPhone.length; i++){
            if(smPhone[i] == smPhone){
                return false;
            }
        }
        array.push(smPhone);
    }
</script>

