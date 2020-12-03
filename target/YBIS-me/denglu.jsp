<%--
  Created by IntelliJ IDEA.
  User: 12079
  Date: 2020/11/24
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!--设置mata标签-->
    <!--强制设置ie浏览器使用edge模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--缩放按照1:1缩放-->
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/css/dljm.css">
    <link rel="stylesheet" href="../../static/css/jsxuehua.css">
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
    <script src="../../static/js/denglu.js"></script>
    <script src="../../static/js/jsxuehua.js"></script>
    <script src="../../static/js/jquery.js"></script>
    <script src="../../static/js/DATE_index.js"></script>
    <script src="../../static/js/three.js"></script>
    <style>
        #loggons{
            position: absolute;
            width: 200px;
            height: 100px;
            background-color: white;
            top:20px;
            left: 20px;
            z-index: 999;
        }
        #loggons>p{
            padding: 3px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <img src="../../static/images/loginImages/icon.png" class="dljm_img col-lg-4 col-lg-offset-2">
        <div id="dljm_div" class="col-md-3 col-lg-offset-1">
            <p>&#xe611;</p>
            <p>萌宝幼儿园</p>
            <div id="dljm_zh">
                <label for="dljm_lable"></label>
                <input id="dljm_lable" placeholder="请输入你的账号">
            </div>
            <div id="dljm_mm">
                <label for="dljm_lable_2"></label>
                <input id="dljm_lable_2" type="password" placeholder="请输入你的密码">

            </div>
            <div class="logbin">
                <input type="checkbox"><span>下次自动登录</span>
                <p>找回密码?</p>
            </div>
            <button class="btn btn-default" type="submit" id="dljm_dl">登录</button>
            <div class="logbin_three">
                <p>第三方登录</p>
                <div class="logbin_three_dl">
                    <p class="col-md-5 col-md-offset-1" ><span>&#xe617;</span></p>
                    <p class="col-md-5" ><span>&#xe60b;</span></p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    sessionStorage.setItem("grade_info",JSON.stringify(Grade));
    sessionStorage.setItem("duty_info",JSON.stringify(student));    //考勤管理
    sessionStorage.setItem("info",JSON.stringify(department));//将对象"序列化"为JSON数据(字符串格式)   //以字符串格式存储信息  吴政
    sessionStorage.setItem("teacher_info",JSON.stringify(teacher));//将对象"序列化"为JSON数据(字符串格式)   //以字符串格式存储信息 圆圆
</script>

</body>
</html>
