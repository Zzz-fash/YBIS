<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--设置mate标签-->
    <!--强制设置ie浏览器使用edge模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--缩放按照1:1缩放-->
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>公告</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
    <style>
        @import "../../static/css/notice_style.css";
    </style>
</head>
<body>
<%-----------------------------------------form 表单区域------------------------------------------%>
<form action="notice_send.do" method="post">
    <div class="container-fluid">
        <P style="color: #00CE68; margin-left: 500px;size: B4 ">${sendMsg}</P>
        <div class="row">
            <div class="notice_input">
                <textarea name="n_name" id="notice_text" style="width: 500px;height: 40px;font-family: 黑体"
                          placeholder="公告主题"></textarea>
                <textarea name="n_content" id="notice_text" placeholder="请输入公告内容"></textarea>
                <div id="notice_type">
                    <i class="iconfont icon-biaoti"></i>
                    <i class="iconfont icon-bold"></i>
                    <i class="iconfont icon-chakanzhaopian">
                        <input type="file" id="notice_file" name="touxiang" value=""/></i>
                    <span id="notice_file_img"></span>
                    <div id="notice_selectBox">
                        <span>公告类型：</span>
                        <span id="notice_mySelect">请选择公告类型</span>
                        <i class="iconfont icon-down"></i>
                        <ul id="notice_option">
                            <li>园区公告</li>
                            <li>班级公告</li>
                            <li>个人邮件</li>
                        </ul>
                    </div>
                    <input type="submit" class="iconfont" id="notice_class_button" value="发布公告"/>
                </div>
            </div>
        </div>
        <div class="row">
            <ul class="notice_myUl clear">
                <li>
                    <div class="img"><img src="../../static/images/notice_images/timg.jpg" alt=""></div>
                    <a href="#">园区公告 <i class="iconfont icon-notice"></i></a>
                    <div id="notice_public_content" class="notice_content">
                    </div>
                </li>
                <li>
                    <div class="img"><img src="../../static/images/notice_images/timg.jpg" alt=""></div>
                    <a href="#">班级公告 <i class="iconfont icon-notice"></i></a>
                    <div id="notice_select_class">
                        <input type="text" placeholder="请输入查看的班级" id="notice_class_text">
                        <input type="button" value="查询" id="notice_class_button">
                    </div>
                    <div id="notice_class_content" class="notice_content">
                    </div>
                </li>
                <li>
                    <div class="img"><img src="../../static/images/notice_images/timg.jpg" alt=""></div>
                    <a href="#">已发公告 <i class="iconfont icon-notice"></i></a>
                    <div id="notice_select_issue">
                        <input type="text" placeholder="请输入查看的公告" id="notice_issue_text">
                        <input type="button" value="查询" id="notice_issue_button">
                    </div>
                    <div id="notice_issue_content" class="notice_content">

                    </div>
                </li>
            </ul>
        </div>
    </div>
</form>
<%-----------------------------------------/form 表单区域------------------------------------------%>

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content notice_email">
            <p>您的邮件已发送成功！</p>
            <div class="row">
                <div class="col-xs-5">收件人：</div>
                <div class="col-xs-7"><span></span></div>
            </div>
            <div class="row">
                <div class="col-xs-5">收件地址：</div>
                <div class="col-xs-7"><span></span></div>
            </div>
            <div class="row">
                <div class="col-xs-5">发件人：</div>
                <div class="col-xs-7"><span></span></div>
            </div>
            <div class="row">
                <div class="col-xs-5">发送时间：</div>
                <div class="col-xs-7"><span></span></div>
            </div>

        </div>
    </div>
</div>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
<script type="text/javascript">
    var notices = [
        {
            noticeIssuer:"张通",//发起人
            noticeHead:"face3.jpg",//发起人头像
            noticeContent:"2018年秋季报名正式开始！新生成功报名交费送一个月特色课程（舞蹈、街舞、手工、钢琴任选其一）再送表情抱枕一个",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"public",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/8/15",//发布时间
            noticeObj:1801//发布对象
        },{
            noticeIssuer:"超级管理员",//发起人
            noticeHead:"face4.jpg",//发起人头像
            noticeContent:"2018年秋季报名正式开始！新生成功报名交费送一个月特色课程（舞蹈、街舞、手工、钢琴任选其一）再送表情抱枕一个",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"public",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/8/15",//发布时间
            noticeObj:1801//发布对象
        },
        {
            noticeIssuer:"张通",//发起人
            noticeHead:"face2.jpg",//发起人头像
            noticeContent:"各组、室设考勤员一名，（由组长担任），逐日记载出勤情况，按日统计，上报教务处汇总公布。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/9/1",//发布时间
            noticeObj:1802//发布对象
        },
        {
            noticeIssuer:"罗喜洋",//发起人
            noticeHead:"face4.jpg",//发起人头像
            noticeContent:"因工作需要，决定对萌宝幼儿园人事作如下调整：任命毛亮为营业部部长，全面负责营业部工作。园长级，营口地区班子成员。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"public",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/12/1",//发布时间
            noticeObj:1//发布对象
        },
        {
            noticeIssuer:"毛亮",//发起人
            noticeHead:"face3.jpg",//发起人头像
            noticeContent:"由教务处负责考勤工作。各组、室设考勤员一名，（由组长担任），逐日记载出勤情况，按日统计，上报教务处汇总公布。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/9/1",//发布时间
            noticeObj:1801//发布对象
        },
        {
            noticeIssuer:"毛亮",//发起人
            noticeHead:"face3.jpg",//发起人头像
            noticeContent:"希望能与您就孩子的成长教育问题做一次良好的沟通。你的建议是我们的收获，让我们为孩子撑起一片天空。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"public",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/12/1",//发布时间
            noticeObj:1//发布对象
        },
        {
            noticeIssuer:"罗喜洋",//发起人
            noticeHead:"face4.jpg",//发起人头像
            noticeContent:"你的建议是我们的收获，让我们为孩子撑起一片天空。希望能与您就孩子的成长教育问题做一次良好的沟通。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/12/7",//发布时间
            noticeObj:1802//发布对象
        },
        {
            noticeIssuer:"毛亮",//发起人
            noticeHead:"face3.jpg",//发起人头像
            noticeContent:"各组、室设考勤员一名，（由组长担任），逐日记载出勤情况，按日统计，上报教务处汇总公布。",//公告内容
            noticeContentImg:"",//内容图片
            noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
            noticeTime: "2018/9/1",//发布时间
            noticeObj:1801//发布对象
        }
        ];
</script>
<script src="../../static/js/notice.js"></script>
</body>
</html>