<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="../../static/charts/echarts.js"></script>
    <style>
        @import url(../../static/css/mian_CSS.css);
    </style>
    <link rel="stylesheet" href="../../static/font/iconfont.css">
</head>
<body>
    <header id="header" class="container-fluid">
        <div id="class_size">
        </div>
        <div id="lxy_announcement">
                <img src="../../static/images/main_images/timg.jpg"/>
            <div class="lxy_newsBook">
                <p>最新园区公告</p>
                <ul id="lxy_news_head">
                    <c:forEach items="${notices_main}" var="notice_main">
                        <li>
                            <p>${notice_main.nName}：${notice_main.nContent}</p>
                            <p>发布人:${notice_main.nUser}<span>${notice_main.nDate}</span> </p>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
            <ul class="main_polaroids col-lg-12 col-md-12">

                <li><a href="1" title="甜甜生日"><img src="../../static/images/main_images/01.jpg" alt="风景1" /></a></li>
                <li><a href="2" title="手工课"><img src="../../static/images/main_images/06.jpg" alt="风景2" /></a></li>
                <li><a href="3" title="课外活动"><img src="../../static/images/main_images/21.jpg" alt="风景3" /></a></li>
                <li><a href="4" title="课外活动"><img src="../../static/images/main_images/19.jpg" alt="风景4" /></a></li>
                <li><a href="5" title="涂涂生日"><img src="../../static/images/main_images/01.jpg" alt="风景5" /></a></li>


            </ul>

    </header>



    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script >
        var myChart = echarts.init(document.getElementById('class_size'));
        option = {
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                x: 'left',
                data:['大班','中班','小班','教职工','园长','管理员','后勤']
            },
            series: [
                {
                    name:'访问来源',
                    type:'pie',
                    selectedMode: 'single',
                    radius: [0, '30%'],

                    label: {
                        normal: {
                            position: 'inner'
                        }
                    },
                    labelLine: {
                        normal: {
                            show: false
                        }
                    },
                    data:[
                        {value:3, name:'管理员', selected:true},
                        {value:2, name:'园长'},
                        {value:5, name:'后勤'}
                    ]
                },
                {
                    name:'人数',
                    type:'pie',
                    radius: ['45%', '55%'],
                    label: {
                        normal: {
                            formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                            backgroundColor: '#eee',
                            borderColor: '#aaa',
                            borderWidth: 1,
                            borderRadius: 4,

                            rich: {
                                a: {
                                    color: '#999',
                                    lineHeight: 22,
                                    align: 'center'
                                },

                                hr: {
                                    borderColor: '#aaa',
                                    width: '100%',
                                    borderWidth: 0.40,
                                    height: 0
                                },
                                b: {
                                    fontSize: 16,
                                    lineHeight: 33
                                },
                                per: {
                                    color: '#eee',
                                    backgroundColor: '#334455',
                                    padding: [2, 1],
                                    borderRadius: 2
                                }
                            }
                        }
                    },
                    data:[
                        {value:25, name:'大班'},
                        {value:35, name:'中班'},
                        {value:32, name:'小班'},
                        {value:8, name:'教职工'}
                    ]
                }
            ]
        };
//-------------------------------- 公告内容---------------------
        myChart.setOption(option);
        var notices = [

            {
                noticeIssuer:"毛亮",//发起人
                noticeContent:"2018年秋季报名正式开始！新生成功报名交费送一个月特色课程（舞蹈、街舞、手工、钢琴任选其一）再送表情抱枕一个",//公告内容
                noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
                noticeTime: "2018/8/15",//发布时间
                noticeObj:1501,//发布对象
                noticeImg:"<img src=\"../../static/images/main_images/face3.jpg\" alt=\"\">"
            },
            {
                noticeIssuer:"罗喜洋",//发起人
                noticeContent:"因工作需要，决定对萌宝幼儿园人事作如下调整：任命毛亮为营业部部长，全面负责营业部工作。园长级，营口地区班子成员。",//公告内容
                noticeType:"public",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
                noticeTime: "2018/12/1",//发布时间
                noticeObj:1,//发布对象
                noticeImg:"<img src=\"../../static/images/main_images/face4.jpg\" alt=\"\">"
            },
            {
                noticeIssuer:"赖红梅",//发起人
                noticeContent:"学校全体干部，教师职工均系考勤对象，由教务处负责考勤工作。各组、室设考勤员一名，（由组长担任），逐日记载出勤情况，按日统计，上报教务处汇总公布。",//公告内容
                noticeType:"class",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
                noticeTime: "2018/9/1",//发布时间
                noticeObj:1501,//发布对象
                noticeImg:"<img src=\"../../static/images/main_images/face2.jpg\" alt=\"\">"
            },
            {
                noticeIssuer:"赖红梅",//发起人
                noticeContent:"学校全体干部，教师职工均系考勤对象，由教务处负责考勤工作。各组、室设考勤员一名，（由组长担任），逐日记载出勤情况，按日统计，上报教务处汇总公布。",//公告内容
                noticeType:"me",//公告类型：public（园区公告），class（班级公告），person(个人邮件)
                noticeTime: "2018/9/1",//发布时间
                noticeObj:1501,//发布对象
                noticeImg:"<img src=\"../../static/images/main_images/face2.jpg\" alt=\"\">"
            },
            ]
        $(document).ready(function () {
            //数据公告
            for(let i=0;i<3;i++){
                $("#lxy_news_head").append(
                    `<li>
                        ${notices[i].noticeImg}
                        <p>${notices[i].noticeContent}</p>
                        <p>发布人:${notices[i].noticeIssuer} <span>${notices[i].noticeTime}</span> </p>
                     </li>`
                );
            }
        })
        $("body").on("click",function () {
            console.log(123)
            console.log( $(".main_mail_content")[0])
            $(".main_mail_content").css({height:0});
        })




    </script>
</body>
</html>