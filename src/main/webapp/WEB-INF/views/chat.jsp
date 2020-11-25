<%--
  Created by IntelliJ IDEA.
  User: 大眼萌
  Date: 2020/11/24 0024
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Chat | Chatvia - Responsive Bootstrap 4 Chat App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Responsive Bootstrap 4 Chat App" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="/static/assets/images/favicon.ico">

    <!-- magnific-popup css -->
    <link href="/static/assets/libs/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <!-- owl.carousel css -->
    <link rel="stylesheet" href="/static/assets/libs/owl.carousel/assets/owl.carousel.min.css">

    <link rel="stylesheet" href="/static/assets/libs/owl.carousel/assets/owl.theme.default.min.css">

    <!-- Bootstrap Css -->
    <link href="/static/assets/css/bootstrap-dark.min.css" id="bootstrap-dark-style" rel="stylesheet" type="text/css" />
    <link href="/static/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="/static/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/static/assets/css/app-dark.min.css" id="app-dark-style" rel="stylesheet" type="text/css" />
    <link href="/static/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body>

<div class="layout-wrapper d-lg-flex">

    <!-- Start left sidebar-menu -->
    <div class="side-menu flex-lg-column mr-lg-1">
        <!-- LOGO -->
        <div class="navbar-brand-box">
            <a href="
" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="/static/assets/images/logo.svg" alt="" height="30">
                        </span>
            </a>

            <a href="index.html" class="logo logo-light">
                        <span class="logo-sm">
                            <img src="/static/assets/images/logo.svg" alt="" height="30">
                        </span>
            </a>
        </div>
        <!-- end navbar-brand-box -->

        <!-- Start side-menu nav -->
        <div class="flex-lg-column my-auto">
            <ul class="nav nav-pills side-menu-nav justify-content-center" role="tablist">
                <li class="nav-item" data-toggle="tooltip" data-trigger="hover" data-placement="top" title="Profile">
                    <a class="nav-link" id="pills-user-tab" data-toggle="pill" href="#pills-user" role="tab">
                        <i class="ri-user-2-line"></i>
                    </a>
                </li>
                <li class="nav-item" data-toggle="tooltip" data-trigger="hover" data-placement="top" title="Chats">
                    <a class="nav-link active" id="pills-chat-tab" data-toggle="pill" href="#pills-chat" role="tab">
                        <i class="ri-message-3-line"></i>
                    </a>
                </li>
                <li class="nav-item" data-toggle="tooltip" data-trigger="hover" data-placement="top" title="Groups">
                    <a class="nav-link" id="pills-groups-tab" data-toggle="pill" href="#pills-groups" role="tab">
                        <i class="ri-group-line"></i>
                    </a>
                </li>
                <li class="nav-item" data-toggle="tooltip" data-trigger="hover" data-placement="top" title="Contacts">
                    <a class="nav-link" id="pills-contacts-tab" data-toggle="pill" href="#pills-contacts" role="tab">
                        <i class="ri-contacts-line"></i>
                    </a>
                </li>
                <li class="nav-item" data-toggle="tooltip" data-trigger="hover" data-placement="top" title="Settings">
                    <a class="nav-link" id="pills-setting-tab" data-toggle="pill" href="#pills-setting" role="tab">
                        <i class="ri-settings-2-line"></i>
                    </a>
                </li>
                <li class="nav-item dropdown profile-user-dropdown d-inline-block d-lg-none">
                    <a class="nav-link dropdown-toggle" href="javascript: void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="/static/assets/images/users/avatar-1.jpg" alt="" class="profile-user rounded-circle">
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Profile <i class="ri-profile-line float-right text-muted"></i></a>
                        <a class="dropdown-item" href="#">Setting <i class="ri-settings-3-line float-right text-muted"></i></a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Log out <i class="ri-logout-circle-r-line float-right text-muted"></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- end side-menu nav -->
        <!-- Side menu user -->
    </div>
    <!-- end left sidebar-menu -->

    <!-- start chat-leftsidebar -->
    <div class="chat-leftsidebar mr-lg-1">

        <div class="tab-content">
            <!-- Start Profile tab-pane -->
            <div class="tab-pane" id="pills-user" role="tabpanel" aria-labelledby="pills-user-tab">
                <!-- Start profile content -->
                <div>
                    <div class="px-4 pt-4">
                        <div class="user-chat-nav float-right">
                            <div class="dropdown">
                                <a href="javascript: void(0);" class="font-size-18 text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="ri-more-2-fill"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">Edit</a>
                                    <a class="dropdown-item" href="#">Action</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Another action</a>
                                </div>
                            </div>
                        </div>
                        <h4 class="mb-0">个人信息</h4>
                    </div>

                    <div class="text-center p-4 border-bottom">
                        <div class="mb-4">
                            <img src="/static/assets/images/}" class="rounded-circle avatar-lg img-thumbnail" alt="">
                        </div>

                        <h5 class="font-size-16 mb-1 text-truncate">Patricia Smith</h5>
                        <p class="text-muted text-truncate mb-1"><i class="ri-record-circle-fill font-size-10 text-success mr-1 d-inline-block"></i> Active</p>
                    </div>
                    <!-- End profile user -->

                    <!-- Start user-profile-desc -->
                    <div class="p-4 user-profile-desc" data-simplebar>
                        <div class="text-muted">
                            <p class="mb-4">If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual.</p>
                        </div>


                        <div id="profile-user-accordion-1" class="custom-accordion">
                            <div class="card shadow-none border mb-2">
                                <a href="#profile-user-collapseOne" class="text-dark" data-toggle="collapse"
                                   aria-expanded="true"
                                   aria-controls="profile-user-collapseOne">
                                    <div class="card-header" id="profile-user-headingOne">
                                        <h5 class="font-size-14 m-0">
                                            <i class="ri-user-2-line mr-2 align-middle d-inline-block"></i> About
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>

                                <div id="profile-user-collapseOne" class="collapse show"
                                     aria-labelledby="profile-user-headingOne" data-parent="#profile-user-accordion-1">
                                    <div class="card-body">

                                        <div>
                                            <p class="text-muted mb-1">Name</p>
                                            <h5 class="font-size-14">Patricia Smith</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Email</p>
                                            <h5 class="font-size-14">adc@123.com</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Time</p>
                                            <h5 class="font-size-14">11:40 AM</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Location</p>
                                            <h5 class="font-size-14 mb-0">California, USA</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End About card -->

                            <div class="card mb-1 shadow-none border">
                                <a href="#profile-user-collapseTwo" class="text-dark collapsed" data-toggle="collapse"
                                   aria-expanded="false"
                                   aria-controls="profile-user-collapseTwo">
                                    <div class="card-header" id="profile-user-headingTwo">
                                        <h5 class="font-size-14 m-0">
                                            <i class="ri-attachment-line mr-2 align-middle d-inline-block"></i> Attached Files
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>
                                <div id="profile-user-collapseTwo" class="collapse" aria-labelledby="profile-user-headingTwo"
                                     data-parent="#profile-user-accordion-1">
                                    <div class="card-body">
                                        <div class="card p-2 border mb-2">
                                            <div class="media align-items-center">
                                                <div class="avatar-sm mr-3">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                        <i class="ri-file-text-fill"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <div class="text-left">
                                                        <h5 class="font-size-14 mb-1">Admin-A.zip</h5>
                                                        <p class="text-muted font-size-13 mb-0">12.5 MB</p>
                                                    </div>
                                                </div>

                                                <div class="ml-4">
                                                    <ul class="list-inline mb-0 font-size-18">
                                                        <li class="list-inline-item">
                                                            <a href="#" class="text-muted px-1">
                                                                <i class="ri-download-2-line"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item dropdown">
                                                            <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="ri-more-fill"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end card -->

                                        <div class="card p-2 border mb-2">
                                            <div class="media align-items-center">
                                                <div class="avatar-sm mr-3">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                        <i class="ri-image-fill"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <div class="text-left">
                                                        <h5 class="font-size-14 mb-1">Image-1.jpg</h5>
                                                        <p class="text-muted font-size-13 mb-0">4.2 MB</p>
                                                    </div>
                                                </div>

                                                <div class="ml-4">
                                                    <ul class="list-inline mb-0 font-size-18">
                                                        <li class="list-inline-item">
                                                            <a href="#" class="text-muted px-1">
                                                                <i class="ri-download-2-line"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item dropdown">
                                                            <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="ri-more-fill"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end card -->

                                        <div class="card p-2 border mb-2">
                                            <div class="media align-items-center">
                                                <div class="avatar-sm mr-3">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                        <i class="ri-image-fill"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <div class="text-left">
                                                        <h5 class="font-size-14 mb-1">Image-2.jpg</h5>
                                                        <p class="text-muted font-size-13 mb-0">3.1 MB</p>
                                                    </div>
                                                </div>

                                                <div class="ml-4">
                                                    <ul class="list-inline mb-0 font-size-18">
                                                        <li class="list-inline-item">
                                                            <a href="#" class="text-muted px-1">
                                                                <i class="ri-download-2-line"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item dropdown">
                                                            <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="ri-more-fill"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end card -->

                                        <div class="card p-2 border mb-2">
                                            <div class="media align-items-center">
                                                <div class="avatar-sm mr-3">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                        <i class="ri-file-text-fill"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <div class="text-left">
                                                        <h5 class="font-size-14 mb-1">Landing-A.zip</h5>
                                                        <p class="text-muted font-size-13 mb-0">6.7 MB</p>
                                                    </div>
                                                </div>

                                                <div class="ml-4">
                                                    <ul class="list-inline mb-0 font-size-18">
                                                        <li class="list-inline-item">
                                                            <a href="#" class="text-muted px-1">
                                                                <i class="ri-download-2-line"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item dropdown">
                                                            <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="ri-more-fill"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end card -->

                                    </div>

                                </div>
                            </div>
                            <!-- End Attached Files card -->
                        </div>
                        <!-- end profile-user-accordion -->

                    </div>
                    <!-- end user-profile-desc -->
                </div>
                <!-- End profile content -->
            </div>
            <!-- End Profile tab-pane -->

            <!-- Start chats tab-pane -->
            <div class="tab-pane fade show active" id="pills-chat" role="tabpanel" aria-labelledby="pills-chat-tab">
                <!-- Start chats content -->
                <div>
                    <div class="px-4 pt-4">
                        <h4 class="mb-4">通讯录</h4>
                        <div class="search-box chat-search-box">
                            <div class="input-group mb-3 bg-light  input-group-lg rounded-lg">
                                <div class="input-group-prepend">
                                    <button class="btn btn-link text-muted pr-1 text-decoration-none" type="button">
                                        <i class="ri-search-line search-icon font-size-18"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control bg-light" placeholder="搜索消息或用户">
                            </div>
                        </div> <!-- Search Box-->
                    </div> <!-- .p-4 -->

                    <!-- Start user status -->
                    <!-- end user status -->

                    <!-- Start chat-message-list -->
                    <div class="px-2">
                        <h5 class="mb-3 px-3 font-size-16">任课老师列表</h5>

                        <div class="chat-message-list" data-simplebar>

                            <ul class="list-unstyled chat-list chat-user-list">

                                <c:forEach items="" var="" step="">

                                </c:forEach>

                                <li class="active pitch">
                                    <a href="#">
                                        <div class="media">

                                            <div class="chat-user-img online align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-2.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>

                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Patrick Hendricks</h5>
                                                <p class="chat-user-message text-truncate mb-0">Hey! there I'm available</p>
                                            </div>
                                            <div class="font-size-11">05 min</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="unread">
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img away align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-3.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Mark Messer</h5>
                                                <p class="chat-user-message text-truncate mb-0"><i class="ri-image-fill align-middle mr-1"></i> Images</p>
                                            </div>
                                            <div class="font-size-11">12 min</div>

                                            <div class="unread-message">
                                                <span class="badge badge-soft-danger badge-pill">02</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                G
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">General</h5>
                                                <p class="chat-user-message text-truncate mb-0">This theme is awesome!</p>
                                            </div>
                                            <div class="font-size-11">20 min</div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img online align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-4.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Doris Brown</h5>
                                                <p class="chat-user-message text-truncate mb-0">Nice to meet you</p>
                                            </div>
                                            <div class="font-size-11">10:12 AM</div>

                                        </div>
                                    </a>
                                </li>
                                <li class="unread">
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                D
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Designer</h5>
                                                <p class="chat-user-message text-truncate mb-0">Next meeting tomorrow 10.00AM</p>
                                            </div>
                                            <div class="font-size-11">12:01 PM</div>
                                            <div class="unread-message">
                                                <span class="badge badge-soft-danger badge-pill">01</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img away align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-6.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Steve Walker</h5>
                                                <p class="chat-user-message text-truncate mb-0"><i class="ri-file-text-fill align-middle mr-1"></i> Admin-A.zip</p>
                                            </div>
                                            <div class="font-size-11">03:20 PM</div>

                                        </div>
                                    </a>
                                </li>
                                <li class="typing">
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center online mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                A
                                                            </span>
                                                </div>
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Albert Rodarte</h5>
                                                <p class="chat-user-message text-truncate mb-0">typing<span class="animate-typing">
                                                            <span class="dot"></span>
                                                            <span class="dot"></span>
                                                            <span class="dot"></span>
                                                        </span></p>
                                            </div>
                                            <div class="font-size-11">04:56 PM</div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center online mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                M
                                                            </span>
                                                </div>
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Mirta George</h5>
                                                <p class="chat-user-message text-truncate mb-0">Yeah everything is fine</p>
                                            </div>
                                            <div class="font-size-11">12/07</div>

                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img away align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-7.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Paul Haynes</h5>
                                                <p class="chat-user-message text-truncate mb-0">Good morning</p>
                                            </div>
                                            <div class="font-size-11">12/07</div>

                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center online mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                J
                                                            </span>
                                                </div>
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Jonathan Miller</h5>
                                                <p class="chat-user-message text-truncate mb-0">Hi, How are you?</p>
                                            </div>
                                            <div class="font-size-11">12/07</div>

                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img away align-self-center mr-3">
                                                <img src="/static/assets/images/users/avatar-8.jpg" class="rounded-circle avatar-xs" alt="">
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Ossie Wilson</h5>
                                                <p class="chat-user-message text-truncate mb-0">I've finished it! See you so</p>
                                            </div>
                                            <div class="font-size-11">11/07</div>

                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="media">
                                            <div class="chat-user-img align-self-center online mr-3">
                                                <div class="avatar-xs">
                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                S
                                                            </span>
                                                </div>
                                                <span class="user-status"></span>
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <h5 class="text-truncate font-size-15 mb-1">Sara Muller</h5>
                                                <p class="chat-user-message text-truncate mb-0">Wow that's great</p>
                                            </div>
                                            <div class="font-size-11">11/07</div>

                                        </div>
                                    </a>
                                </li>


                            </ul>
                        </div>

                    </div>
                    <!-- End chat-message-list -->
                </div>
                <!-- Start chats content -->
            </div>
            <!-- End chats tab-pane -->

            <!-- Start groups tab-pane -->
            <div class="tab-pane" id="pills-groups" role="tabpanel" aria-labelledby="pills-groups-tab">
                <!-- Start Groups content -->
                <div>
                    <div class="p-4">
                        <div class="user-chat-nav float-right">
                            <div  data-toggle="tooltip" data-placement="bottom" title="Create group">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-link text-decoration-none text-muted font-size-18 py-0" data-toggle="modal" data-target="#addgroup-exampleModal">
                                    <i class="ri-group-line mr-1"></i>
                                </button>
                            </div>

                        </div>
                        <h4 class="mb-4">Groups</h4>

                        <!-- Start add group Modal -->
                        <div class="modal fade" id="addgroup-exampleModal" tabindex="-1" role="dialog" aria-labelledby="addgroup-exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title font-size-16" id="addgroup-exampleModalLabel">Create New Group</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <form action="chat.do">
                                            <div class="form-group mb-4">
                                                <label for="addgroupname-input">Group Name</label>
                                                <input type="text" class="form-control" id="addgroupname-input" placeholder="Enter Group Name">
                                            </div>
                                            <div class="form-group mb-4">
                                                <label>Group Members</label>
                                                <div class="mb-3">
                                                    <button class="btn btn-light btn-sm" type="button" data-toggle="collapse" data-target="#groupmembercollapse" aria-expanded="false" aria-controls="groupmembercollapse">
                                                        Select Members
                                                    </button>
                                                </div>

                                                <div class="collapse" id="groupmembercollapse">
                                                    <div class="card border">
                                                        <div class="card-header">
                                                            <h5 class="font-size-15 mb-0">Contacts</h5>
                                                        </div>
                                                        <div class="card-body p-2">
                                                            <div data-simplebar style="max-height: 150px;">
                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        A
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck1" checked>
                                                                                <label class="custom-control-label" for="memberCheck1">Albert Rodarte</label>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck2">
                                                                                <label class="custom-control-label" for="memberCheck2">Allison Etter</label>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        C
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck3">
                                                                                <label class="custom-control-label" for="memberCheck3">Craig Smiley</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        D
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck4">
                                                                                <label class="custom-control-label" for="memberCheck4">Daniel Clay</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        I
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck5">
                                                                                <label class="custom-control-label" for="memberCheck5">Iris Wells</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        J
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck6">
                                                                                <label class="custom-control-label" for="memberCheck6">Juan Flakes</label>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck7">
                                                                                <label class="custom-control-label" for="memberCheck7">John Hall</label>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck8">
                                                                                <label class="custom-control-label" for="memberCheck8">Joy Southern</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        M
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck9">
                                                                                <label class="custom-control-label" for="memberCheck9">Michael Hinton</label>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck10">
                                                                                <label class="custom-control-label" for="memberCheck10">Mary Farmer</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        P
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck11">
                                                                                <label class="custom-control-label" for="memberCheck11">Phillis Griffin</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        R
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck12">
                                                                                <label class="custom-control-label" for="memberCheck12">Rocky Jackson</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                                <div>
                                                                    <div class="p-3 font-weight-bold text-primary">
                                                                        S
                                                                    </div>

                                                                    <ul class="list-unstyled contact-list">
                                                                        <li>
                                                                            <div class="custom-control custom-checkbox">
                                                                                <input type="checkbox" class="custom-control-input" id="memberCheck13">
                                                                                <label class="custom-control-label" for="memberCheck13">Simon Velez</label>
                                                                            </div>
                                                                        </li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="addgroupdescription-input">Description</label>
                                                <textarea class="form-control" id="addgroupdescription-input" rows="3" placeholder="Enter Description"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Create Groups</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End add group Modal -->

                        <div class="search-box chat-search-box">
                            <div class="input-group bg-light  input-group-lg rounded-lg">
                                <div class="input-group-prepend">
                                    <button class="btn btn-link text-decoration-none text-muted pr-1" type="button">
                                        <i class="ri-search-line search-icon font-size-18"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control bg-light" placeholder="Search groups...">
                            </div>
                        </div>
                        <!-- end search-box -->
                    </div>

                    <!-- Start chat-group-list -->
                    <div class="p-4 chat-message-list chat-group-list" data-simplebar>


                        <ul class="list-unstyled chat-list">
                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            G
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#General</h5>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            R
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#Reporting <span class="badge badge-soft-danger badge-pill float-right">+23</span></h5>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            D
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#Designers</h5>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            D
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#Developers <span class="badge badge-soft-danger badge-pill float-right">New</span></h5>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            P
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#Project-alpha</h5>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="media align-items-center">
                                        <div class="chat-user-img mr-3">
                                            <div class="avatar-xs">
                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                            B
                                                        </span>
                                            </div>
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-0">#Snacks</h5>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End chat-group-list -->
                </div>
                <!-- End Groups content -->
            </div>
            <!-- End groups tab-pane -->

            <!-- Start contacts tab-pane -->
            <div class="tab-pane" id="pills-contacts" role="tabpanel" aria-labelledby="pills-contacts-tab">
                <!-- Start Contact content -->
                <div>
                    <div class="p-4">
                        <div class="user-chat-nav float-right">
                            <div data-toggle="tooltip" data-placement="bottom" title="Add Contact">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-link text-decoration-none text-muted font-size-18 py-0" data-toggle="modal" data-target="#addContact-exampleModal">
                                    <i class="ri-user-add-line"></i>
                                </button>
                            </div>
                        </div>
                        <h4 class="mb-4">Contacts</h4>

                        <!-- Start Add contact Modal -->
                        <div class="modal fade" id="addContact-exampleModal" tabindex="-1" role="dialog" aria-labelledby="addContact-exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title font-size-16" id="addContact-exampleModalLabel">Add Contact</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <form>
                                            <div class="form-group mb-4">
                                                <label for="addcontactemail-input">Email</label>
                                                <input type="email" class="form-control" id="addcontactemail-input" placeholder="Enter Email">
                                            </div>
                                            <div class="form-group">
                                                <label for="addcontact-invitemessage-input">Invatation Message</label>
                                                <textarea class="form-control" id="addcontact-invitemessage-input" rows="3" placeholder="Enter Message"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Invite Contact</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Add contact Modal -->

                        <div class="search-box chat-search-box">
                            <div class="input-group bg-light  input-group-lg rounded-lg">
                                <div class="input-group-prepend">
                                    <button class="btn btn-link text-decoration-none text-muted pr-1" type="button">
                                        <i class="ri-search-line search-icon font-size-18"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control bg-light " placeholder="Search users..">
                            </div>
                        </div>
                        <!-- End search-box -->
                    </div>
                    <!-- end p-4 -->

                    <!-- Start contact lists -->
                    <div class="p-4 chat-message-list chat-group-list" data-simplebar>

                        <div>
                            <div class="p-3 font-weight-bold text-primary">
                                A
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Albert Rodarte</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Allison Etter</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end contact list A -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                C
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Craig Smiley</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end contact list C -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                D
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Daniel Clay</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Doris Brown</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list D -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                I
                            </div>

                            <ul class="list-unstyled contact-list">

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Iris Wells</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end contact list I -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                J
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Juan Flakes</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">John Hall</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Joy Southern</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end contact list J -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                M
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Mary Farmer</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Mark Messer</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Michael Hinton</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list M -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                O
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Ossie Wilson</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list O -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                P
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Phillis Griffin</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Paul Haynes</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list P -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                R
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Rocky Jackson</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list R -->

                        <div class="mt-3">
                            <div class="p-3 font-weight-bold text-primary">
                                S
                            </div>

                            <ul class="list-unstyled contact-list">
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Sara Muller</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Simon Velez</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media align-items-center">
                                        <div class="media-body">
                                            <h5 class="font-size-14 m-0">Steve Walker</h5>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#" class="text-muted dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Block <i class="ri-forbid-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Remove <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!-- end contact list S -->
                    </div>
                    <!-- end contact lists -->
                </div>
                <!-- Start Contact content -->
            </div>
            <!-- End contacts tab-pane -->

            <!-- Start settings tab-pane -->
            <div class="tab-pane" id="pills-setting" role="tabpanel" aria-labelledby="pills-setting-tab">
                <!-- Start Settings content -->
                <div>
                    <div class="px-4 pt-4">
                        <h4 class="mb-0">Settings</h4>
                    </div>

                    <div class="text-center border-bottom p-4">
                        <div class="mb-4 profile-user">
                            <img src="/static/assets/images/users/avatar-1.jpg" class="rounded-circle avatar-lg img-thumbnail" alt="">
                            <button type="button" class="btn bg-light avatar-xs p-0 rounded-circle profile-photo-edit">
                                <i class="ri-pencil-fill"></i>
                            </button>
                        </div>

                        <h5 class="font-size-16 mb-1 text-truncate">Patricia Smith</h5>
                        <div class="dropdown d-inline-block mb-1">
                            <a class="text-muted dropdown-toggle pb-1 d-block" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Available <i class="mdi mdi-chevron-down"></i>
                            </a>

                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Available</a>
                                <a class="dropdown-item" href="#">Busy</a>
                            </div>
                        </div>
                    </div>
                    <!-- End profile user -->

                    <!-- Start User profile description -->
                    <div class="p-4 user-profile-desc" data-simplebar>

                        <div id="profile-setting-accordion" class="custom-accordion">
                            <div class="card shadow-none border mb-2">
                                <a href="#profile-setting-personalinfocollapse" class="text-dark" data-toggle="collapse"
                                   aria-expanded="true"
                                   aria-controls="profile-setting-personalinfocollapse">
                                    <div class="card-header" id="profile-setting-personalinfoheading">
                                        <h5 class="font-size-14 m-0">
                                            Personal Info
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>

                                <div id="profile-setting-personalinfocollapse" class="collapse show"
                                     aria-labelledby="profile-setting-personalinfoheading" data-parent="#profile-setting-accordion">
                                    <div class="card-body">

                                        <div class="float-right">
                                            <button type="button" class="btn btn-light btn-sm"><i class="ri-edit-fill mr-1 align-middle"></i> Edit</button>
                                        </div>

                                        <div>
                                            <p class="text-muted mb-1">Name</p>
                                            <h5 class="font-size-14">Patricia Smith</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Email</p>
                                            <h5 class="font-size-14">adc@123.com</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Time</p>
                                            <h5 class="font-size-14">11:40 AM</h5>
                                        </div>

                                        <div class="mt-4">
                                            <p class="text-muted mb-1">Location</p>
                                            <h5 class="font-size-14 mb-0">California, USA</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end profile card -->
                            <div class="card shadow-none border mb-2">
                                <a href="#profile-setting-privacycollapse" class="text-dark collapsed" data-toggle="collapse"
                                   aria-expanded="false"
                                   aria-controls="profile-setting-privacycollapse">
                                    <div class="card-header" id="profile-setting-privacyheading">
                                        <h5 class="font-size-14 m-0">
                                            Privacy
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>
                                <div id="profile-setting-privacycollapse" class="collapse" aria-labelledby="profile-setting-privacyheading"
                                     data-parent="#profile-setting-accordion">
                                    <div class="card-body">
                                        <div class="py-3">
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Profile photo</h5>

                                                </div>
                                                <div class="dropdown ml-2">
                                                    <button class="btn btn-light btn-sm dropdown-toggle w-sm" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Everyone <i class="mdi mdi-chevron-down"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">Everyone</a>
                                                        <a class="dropdown-item" href="#">selected</a>
                                                        <a class="dropdown-item" href="#">Nobody</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="py-3 border-top">
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Last seen</h5>

                                                </div>
                                                <div class="ml-2">
                                                    <div class="custom-control custom-switch">
                                                        <input type="checkbox" class="custom-control-input" id="privacy-lastseenSwitch" checked>
                                                        <label class="custom-control-label" for="privacy-lastseenSwitch"></label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="py-3 border-top">
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Status</h5>

                                                </div>
                                                <div class="dropdown ml-2">
                                                    <button class="btn btn-light btn-sm dropdown-toggle w-sm" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Everyone <i class="mdi mdi-chevron-down"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">Everyone</a>
                                                        <a class="dropdown-item" href="#">selected</a>
                                                        <a class="dropdown-item" href="#">Nobody</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="py-3 border-top">
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Read receipts</h5>

                                                </div>
                                                <div class="ml-2">
                                                    <div class="custom-control custom-switch">
                                                        <input type="checkbox" class="custom-control-input" id="privacy-readreceiptSwitch" checked>
                                                        <label class="custom-control-label" for="privacy-readreceiptSwitch"></label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="py-3 border-top">
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Groups</h5>

                                                </div>
                                                <div class="dropdown ml-2">
                                                    <button class="btn btn-light btn-sm dropdown-toggle w-sm" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Everyone <i class="mdi mdi-chevron-down"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">Everyone</a>
                                                        <a class="dropdown-item" href="#">selected</a>
                                                        <a class="dropdown-item" href="#">Nobody</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- end Privacy card -->

                            <div class="card shadow-none border mb-2">
                                <a href="#profile-setting-securitynoticollapse" class="text-dark collapsed" data-toggle="collapse"
                                   aria-expanded="false"
                                   aria-controls="profile-setting-securitynoticollapse">
                                    <div class="card-header" id="profile-setting-securitynotiheading">
                                        <h5 class="font-size-14 m-0">
                                            Security
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>
                                <div id="profile-setting-securitynoticollapse" class="collapse" aria-labelledby="profile-setting-securitynotiheading"
                                     data-parent="#profile-setting-accordion">
                                    <div class="card-body">

                                        <div>
                                            <div class="media align-items-center">
                                                <div class="media-body overflow-hidden">
                                                    <h5 class="font-size-13 mb-0 text-truncate">Show security notification</h5>

                                                </div>
                                                <div class="ml-2">
                                                    <div class="custom-control custom-switch">
                                                        <input type="checkbox" class="custom-control-input" id="security-notificationswitch">
                                                        <label class="custom-control-label" for="security-notificationswitch"></label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end Security card -->

                            <div class="card shadow-none border mb-2">
                                <a href="#profile-setting-helpcollapse" class="text-dark collapsed" data-toggle="collapse"
                                   aria-expanded="false"
                                   aria-controls="profile-setting-helpcollapse">
                                    <div class="card-header" id="profile-setting-helpheading">
                                        <h5 class="font-size-14 m-0">
                                            Help
                                            <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                        </h5>
                                    </div>
                                </a>
                                <div id="profile-setting-helpcollapse" class="collapse" aria-labelledby="profile-setting-helpheading"
                                     data-parent="#profile-setting-accordion">
                                    <div class="card-body">

                                        <div>
                                            <div class="py-3">
                                                <h5 class="font-size-13 mb-0"><a href="#" class="text-body d-block">FAQs</a></h5>
                                            </div>
                                            <div class="py-3 border-top">
                                                <h5 class="font-size-13 mb-0"><a href="#" class="text-body d-block">Contact</a></h5>
                                            </div>
                                            <div class="py-3 border-top">
                                                <h5 class="font-size-13 mb-0"><a href="#" class="text-body d-block">Terms & Privacy policy</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end Help card -->
                        </div>
                        <!-- end profile-setting-accordion -->
                    </div>
                    <!-- End User profile description -->
                </div>
                <!-- Start Settings content -->
            </div>
            <!-- End settings tab-pane -->
        </div>
        <!-- end tab content -->

    </div>
    <!-- end chat-leftsidebar -->

    <!-- Start User chat -->
    <div class="user-chat w-100">
        <div class="d-lg-flex">

            <!-- start chat conversation section -->
            <div class="w-100">
                <div id="sender" sender_id="" class="p-3 p-lg-4 border-bottom">
                    <div class="row align-items-center">
                        <div class="col-sm-4 col-8">
                            <div class="media align-items-center">
                                <div class="d-block d-lg-none mr-2">
                                    <a href="javascript: void(0);" class="user-chat-remove text-muted font-size-16 p-2"><i class="ri-arrow-left-s-line"></i></a>
                                </div>
                                <div class="mr-3">
                                    <img src="/static/assets/images/users/avatar-4.jpg" class="rounded-circle avatar-xs" alt="">
                                </div>
                                <div class="media-body overflow-hidden">
                                    <h5 class="font-size-16 mb-0 text-truncate"><a href="#" class="text-reset user-profile-show">Doris Brown</a> <i class="ri-record-circle-fill font-size-10 text-success d-inline-block ml-1"></i></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8 col-4">
                            <ul class="list-inline user-chat-nav text-right mb-0">

                                <li class="list-inline-item">
                                    <div class="dropdown">
                                        <button class="btn nav-btn dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ri-search-line"></i>
                                        </button>
                                        <div class="dropdown-menu p-0 dropdown-menu-right dropdown-menu-md">
                                            <div class="search-box p-2">
                                                <input type="text" class="form-control bg-light border-0" placeholder="Search..">
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li class="list-inline-item d-none d-lg-inline-block">
                                    <button type="button" class="btn nav-btn user-profile-show">
                                        <i class="ri-user-2-line"></i>
                                    </button>
                                </li>

                                <li class="list-inline-item">
                                    <div class="dropdown">
                                        <button class="btn nav-btn dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ri-more-fill"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item d-block d-lg-none user-profile-show" href="#">View profile <i class="ri-user-2-line float-right text-muted"></i></a>
                                            <a class="dropdown-item" href="#">Archive <i class="ri-archive-line float-right text-muted"></i></a>
                                            <a class="dropdown-item" href="#">Muted <i class="ri-volume-mute-line float-right text-muted"></i></a>
                                            <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- end chat user head -->

                <!-- start chat conversation -->
                <div class="chat-conversation p-3 p-lg-4" data-simplebar="init">
                    <ul id="allcontent" class="list-unstyled mb-0">
                        <li>
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-4.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                Good morning
                                            </p>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:00</span></p>
                                        </div>
                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="conversation-name">Doris Brown</div>
                                </div>
                            </div>
                        </li>

                        <li class="right">
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-1.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                Good morning, How are you? What about our next meeting?
                                            </p>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:02</span></p>
                                        </div>

                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="conversation-name">Patricia Smith</div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="chat-day-title">
                                <span class="title">Today</span>
                            </div>
                        </li>

                        <li>
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-4.jpg" alt="">
                                </div>

                                <div class="user-chat-content">

                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                Yeah everything is fine
                                            </p>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:05</span></p>
                                        </div>
                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                & Next meeting tomorrow 10.00AM
                                            </p>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:05</span></p>
                                        </div>
                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="conversation-name">Doris Brown</div>
                                </div>

                            </div>
                        </li>

                        <li class="right">
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-1.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                Wow that's great
                                            </p>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:06</span></p>
                                        </div>
                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="conversation-name">Patricia Smith</div>
                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-4.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">

                                        <div class="ctext-wrap-content">
                                            <ul class="list-inline message-img  mb-0">
                                                <li class="list-inline-item message-img-list">
                                                    <div>
                                                        <a class="popup-img d-inline-block m-1" href="/static/assets/images/small/img-1.jpg" title="Project 1">
                                                            <img src="/static/assets/images/small/img-1.jpg" alt="" class="rounded border">
                                                        </a>
                                                    </div>
                                                    <div class="message-img-link">
                                                        <ul class="list-inline mb-0">
                                                            <li class="list-inline-item">
                                                                <a href="#">
                                                                    <i class="ri-download-2-line"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item dropdown">
                                                                <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="ri-more-fill"></i>
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>

                                                <li class="list-inline-item message-img-list">
                                                    <div>
                                                        <a class="popup-img d-inline-block m-1" href="/static/assets/images/small/img-2.jpg" title="Project 2">
                                                            <img src="/static/assets/images/small/img-2.jpg" alt="" class="rounded border">
                                                        </a>
                                                    </div>
                                                    <div class="message-img-link">
                                                        <ul class="list-inline mb-0">
                                                            <li class="list-inline-item">
                                                                <a href="#">
                                                                    <i class="ri-download-2-line"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item dropdown">
                                                                <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="ri-more-fill"></i>
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:09</span></p>
                                        </div>

                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="conversation-name">Doris Brown</div>
                                </div>

                            </div>
                        </li>

                        <li class="right">
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-1.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">

                                        <div class="ctext-wrap-content">
                                            <div class="card p-2 mb-2">
                                                <div class="media align-items-center">
                                                    <div class="avatar-sm mr-3">
                                                        <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                            <i class="ri-file-text-fill"></i>
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="text-left">
                                                            <h5 class="font-size-14 mb-1">admin_v1.0.zip</h5>
                                                            <p class="text-muted font-size-13 mb-0">12.5 MB</p>
                                                        </div>
                                                    </div>

                                                    <div class="ml-4">
                                                        <ul class="list-inline mb-0 font-size-20">
                                                            <li class="list-inline-item">
                                                                <a href="#" class="text-muted">
                                                                    <i class="ri-download-2-line"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item dropdown">
                                                                <a class="dropdown-toggle text-muted" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="ri-more-fill"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#">Share <i class="ri-share-line float-right text-muted"></i></a>
                                                                    <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <p class="chat-time mb-0"><i class="ri-time-line align-middle"></i> <span class="align-middle">10:16</span></p>
                                        </div>

                                        <div class="dropdown align-self-start">
                                            <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ri-more-2-fill"></i>
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">Copy <i class="ri-file-copy-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Save <i class="ri-save-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Forward <i class="ri-chat-forward-line float-right text-muted"></i></a>
                                                <a class="dropdown-item" href="#">Delete <i class="ri-delete-bin-line float-right text-muted"></i></a>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="conversation-name">Patricia Smith</div>
                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="conversation-list">
                                <div class="chat-avatar">
                                    <img src="/static/assets/images/users/avatar-4.jpg" alt="">
                                </div>

                                <div class="user-chat-content">
                                    <div class="ctext-wrap">
                                        <div class="ctext-wrap-content">
                                            <p class="mb-0">
                                                typing
                                                <span class="animate-typing">
                                                            <span class="dot"></span>
                                                            <span class="dot"></span>
                                                            <span class="dot"></span>
                                                        </span>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="conversation-name">Doris Brown</div>
                                </div>

                            </div>
                        </li>

                    </ul>
                </div>
                <!-- end chat conversation end -->

                <!-- start chat input section -->
                <div class="p-3 p-lg-4 border-top mb-0">
                    <div class="row no-gutters">
                        <div class="col">
                            <div>
                                <input id="content" type="text" class="form-control form-control-lg bg-light border-light" placeholder="Enter Message...">
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="chat-input-links ml-md-2">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <button type="button" class="btn btn-link text-decoration-none font-size-16 btn-lg waves-effect" data-toggle="tooltip" data-placement="top" title="Emoji">
                                            <i class="ri-emotion-happy-line"></i>
                                        </button>
                                    </li>
                                    <li class="list-inline-item">
                                        <button type="button" class="btn btn-link text-decoration-none font-size-16 btn-lg waves-effect" data-toggle="tooltip" data-placement="top" title="Attached File">
                                            <i class="ri-attachment-line"></i>
                                        </button>
                                    </li>
                                    <li class="list-inline-item">
                                        <button id="btn1" type="button" class="btn btn-primary font-size-16 btn-lg chat-send waves-effect waves-light">
                                            <i class="ri-send-plane-2-fill"></i>
                                        </button>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end chat input section -->
            </div>
            <!-- end chat conversation section -->

            <!-- start User profile detail sidebar -->
            <div class="user-profile-sidebar">
                <div class="px-3 px-lg-4 pt-3 pt-lg-4">
                    <div class="user-chat-nav text-right">
                        <button type="button" class="btn nav-btn" id="user-profile-hide">
                            <i class="ri-close-line"></i>
                        </button>
                    </div>
                </div>

                <div class="text-center p-4 border-bottom">
                    <div class="mb-4">
                        <img src="/static/assets/images/users/avatar-4.jpg" class="rounded-circle avatar-lg img-thumbnail" alt="">
                    </div>

                    <h5 class="font-size-16 mb-1 text-truncate">Doris Brown</h5>
                    <p class="text-muted text-truncate mb-1"><i class="ri-record-circle-fill font-size-10 text-success mr-1"></i> Active</p>
                </div>
                <!-- End profile user -->

                <!-- Start user-profile-desc -->
                <div class="p-4 user-profile-desc" data-simplebar>
                    <div class="text-muted">
                        <p class="mb-4">If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual.</p>
                    </div>

                    <div id="profile-user-accordion" class="custom-accordion">
                        <div class="card shadow-none border mb-2">
                            <a href="#collapseOne" class="text-dark" data-toggle="collapse"
                               aria-expanded="true"
                               aria-controls="collapseOne">
                                <div class="card-header" id="headingOne">
                                    <h5 class="font-size-14 m-0">
                                        <i class="ri-user-2-line mr-2 align-middle d-inline-block"></i> About
                                        <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                    </h5>
                                </div>
                            </a>

                            <div id="collapseOne" class="collapse show"
                                 aria-labelledby="headingOne" data-parent="#profile-user-accordion">
                                <div class="card-body">

                                    <div>
                                        <p class="text-muted mb-1">Name</p>
                                        <h5 class="font-size-14">Doris Brown</h5>
                                    </div>

                                    <div class="mt-4">
                                        <p class="text-muted mb-1">Email</p>
                                        <h5 class="font-size-14">adc@123.com</h5>
                                    </div>

                                    <div class="mt-4">
                                        <p class="text-muted mb-1">Time</p>
                                        <h5 class="font-size-14">11:40 AM</h5>
                                    </div>

                                    <div class="mt-4">
                                        <p class="text-muted mb-1">Location</p>
                                        <h5 class="font-size-14 mb-0">California, USA</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End About card -->

                        <div class="card mb-1 shadow-none border">
                            <a href="#collapseTwo" class="text-dark collapsed" data-toggle="collapse"
                               aria-expanded="false"
                               aria-controls="collapseTwo">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="font-size-14 m-0">
                                        <i class="ri-attachment-line mr-2 align-middle d-inline-block"></i> Attached Files
                                        <i class="mdi mdi-chevron-up float-right accor-plus-icon"></i>
                                    </h5>
                                </div>
                            </a>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                 data-parent="#profile-user-accordion">
                                <div class="card-body">
                                    <div class="card p-2 border mb-2">
                                        <div class="media align-items-center">
                                            <div class="avatar-sm mr-3">
                                                <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                    <i class="ri-file-text-fill"></i>
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="text-left">
                                                    <h5 class="font-size-14 mb-1">admin_v1.0.zip</h5>
                                                    <p class="text-muted font-size-13 mb-0">12.5 MB</p>
                                                </div>
                                            </div>

                                            <div class="ml-4">
                                                <ul class="list-inline mb-0 font-size-18">
                                                    <li class="list-inline-item">
                                                        <a href="#" class="text-muted px-1">
                                                            <i class="ri-download-2-line"></i>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item dropdown">
                                                        <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <i class="ri-more-fill"></i>
                                                        </a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#">Action</a>
                                                            <a class="dropdown-item" href="#">Another action</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card -->

                                    <div class="card p-2 border mb-2">
                                        <div class="media align-items-center">
                                            <div class="avatar-sm mr-3">
                                                <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                    <i class="ri-image-fill"></i>
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="text-left">
                                                    <h5 class="font-size-14 mb-1">Image-1.jpg</h5>
                                                    <p class="text-muted font-size-13 mb-0">4.2 MB</p>
                                                </div>
                                            </div>

                                            <div class="ml-4">
                                                <ul class="list-inline mb-0 font-size-18">
                                                    <li class="list-inline-item">
                                                        <a href="#" class="text-muted px-1">
                                                            <i class="ri-download-2-line"></i>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item dropdown">
                                                        <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <i class="ri-more-fill"></i>
                                                        </a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#">Action</a>
                                                            <a class="dropdown-item" href="#">Another action</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card -->

                                    <div class="card p-2 border mb-2">
                                        <div class="media align-items-center">
                                            <div class="avatar-sm mr-3">
                                                <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                    <i class="ri-image-fill"></i>
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="text-left">
                                                    <h5 class="font-size-14 mb-1">Image-2.jpg</h5>
                                                    <p class="text-muted font-size-13 mb-0">3.1 MB</p>
                                                </div>
                                            </div>

                                            <div class="ml-4">
                                                <ul class="list-inline mb-0 font-size-18">
                                                    <li class="list-inline-item">
                                                        <a href="#" class="text-muted px-1">
                                                            <i class="ri-download-2-line"></i>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item dropdown">
                                                        <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <i class="ri-more-fill"></i>
                                                        </a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#">Action</a>
                                                            <a class="dropdown-item" href="#">Another action</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card -->

                                    <div class="card p-2 border mb-2">
                                        <div class="media align-items-center">
                                            <div class="avatar-sm mr-3">
                                                <div class="avatar-title bg-soft-primary text-primary rounded font-size-20">
                                                    <i class="ri-file-text-fill"></i>
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="text-left">
                                                    <h5 class="font-size-14 mb-1">Landing-A.zip</h5>
                                                    <p class="text-muted font-size-13 mb-0">6.7 MB</p>
                                                </div>
                                            </div>

                                            <div class="ml-4">
                                                <ul class="list-inline mb-0 font-size-18">
                                                    <li class="list-inline-item">
                                                        <a href="#" class="text-muted px-1">
                                                            <i class="ri-download-2-line"></i>
                                                        </a>
                                                    </li>
                                                    <li class="list-inline-item dropdown">
                                                        <a class="dropdown-toggle text-muted px-1" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <i class="ri-more-fill"></i>
                                                        </a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#">Action</a>
                                                            <a class="dropdown-item" href="#">Another action</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card -->

                                </div>

                            </div>
                        </div>
                        <!-- End Attached Files card -->
                    </div>
                    <!-- end profile-user-accordion -->
                </div>
                <!-- end user-profile-desc -->
            </div>
            <!-- end User profile detail sidebar -->
        </div>
    </div>
    <!-- End User chat -->
</div>
<!-- end  layout wrapper -->

<!-- JAVASCRIPT -->
<script src="/static/assets/libs/jquery/jquery.min.js"></script>
<script src="/static/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/assets/libs/simplebar/simplebar.min.js"></script>
<script src="/static/assets/libs/node-waves/waves.min.js"></script>

<!-- Magnific Popup-->
<script src="/static/assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- owl.carousel js -->
<script src="/static/assets/libs/owl.carousel/owl.carousel.min.js"></script>

<!-- page init -->
<script src="/static/assets/js/pages/index.init.js"></script>

<script src="/static/assets/js/app.js"></script>

</body>
<script type="text/javascript" src="/static/assets/js/jquery-1.7.2.min.js"></script>
<script>
    $(function () {
        var content = $("#content").val();

    });
</script>
</html>
