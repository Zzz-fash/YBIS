<%--
  Created by IntelliJ IDEA.
  User: 12079
  Date: 2020/12/2
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Opamo</title>
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png" sizes="32x32">
    <!-- Core Bootstrap -->
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
    <!-- Fontawesome -->
    <link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
    <!-- Animate -->
    <link rel="stylesheet" href="../../assets/css/animate.css">
    <!-- Slick slider -->
    <link rel="stylesheet" href="../../assets/css/slick.css">
    <!-- Range slider -->
    <link rel="stylesheet" href="../../assets/css/ion.rangeSlider.min.css">
    <!-- light box -->
    <link rel="stylesheet" href="../../assets/css/lightbox.min.css">
    <!-- nice select -->
    <link rel="stylesheet" href="../../assets/css/nice-select.min.css">
    <!-- main custom styles -->
    <link rel="stylesheet" href="../../assets/scss/main.css">
</head>
<body>
<!-- loader -->
<div class="loader-wrapper">
    <div class="loader">
        <div></div>
        <div></div>
    </div>
</div>
<!-- end loader -->
<!-- header section -->
<!-- end header section -->
<!-- page header image section -->
<div class="page-header-img"
     style="background-image: url('../../assets/images/page-header-01.jpg')">
    <div class="container">
        <div class="page-header-img__wrapper">
            <h2 class="page-title">动态</h2>
        </div>
    </div>
</div>
<!-- end page header image section -->
<!-- breadcrumb section -->
<div class="custom-breadcrumb custom-breadcrumb--minimal">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">返回上一页</a></li>
                <li class="breadcrumb-item active" aria-current="page">Blog</li>
            </ol>
        </nav>
    </div>
</div>
<!-- end breadcrumb section -->
<!-- main content section -->
<div class="main-content pb-150">
    <div class="container">
        <div class="row">
            <%--动态列表--%>
            <c:forEach items="${dynamics}" var="dynamic">
                <c:if test="${empty dynamic.smId}">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-post-card blog-post--block img-hover-4">
                        <div class="blog-post-image">
                            <a href="#">
                                <img src="../../images/upload_dynamic/a123.jpg" alt="">
                            </a>
                        </div>
                        <div class="blog-post-body">
                            <div class="post-meta">
                                    <%--发布者--%>
                                <div class="post-author">
                                    <a href="#">${dynamic.dUname}(${dynamic.aClass.cName})</a>
                                </div>
                                    <%--时间--%>
                                <div class="post-date">
                                        ${dynamic.dDate}
                                </div>
                            </div>
                                <%--主题--%>
                            <a href="#">
                                <h3 class="post-title">${dynamic.dName}</h3>
                            </a>
                                <%--内容--%>
                            <div class="post-summery">
                                <p>
                                        ${dynamic.dContent}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="load-more-btn">
                    <a href="#" class="button button--dark button-md">Load more</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end main content section -->
<!-- footer section -->
<!-- end footer section -->
<!-- back to top btn -->
<!-- end back to top btn -->
<!-- Theme js files -->
<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/popper.min.js"></script>
<script src="../../assets/js/bootstrap.min.js"></script>
<!-- slick js -->
<script src="../../assets/js/slick.min.js"></script>
<!-- range slider js -->
<script src="../../assets/js/ion.rangeSlider.min.js"></script>
<!-- nice select -->
<script src="../../assets/js/nice-select.min.js"></script>
<!-- countdown -->
<script src="../../assets/js/countdown.jquery.min.js"></script>
<!-- light box -->
<script src="../../assets/js/lightbox.min.js"></script>
<!-- theme js -->
<script src="../../assets/js/custom.js"></script>
</body>
</html>
