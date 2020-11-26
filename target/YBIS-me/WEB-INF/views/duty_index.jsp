<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>考勤</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
    <style>
        @import "../../static/css/duty_style.css";
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="row duty_input">
            <div class="col-md-1 col-lg-1"></div>
            <div class="col-md-4 col-lg-4">
                <div id="duty_selectBox" >
                    <span>班级：</span>
                    <span id="duty_mySelect">请选择班级</span>
                    <i class="iconfont icon-down"></i>
                    <ul id="duty_option">
                        <li>全部</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-5 col-lg-5 duty_icon">
                <input type="text" placeholder="请输入学生信息" class="duty_input_text"  name="">
                <i class="iconfont icon-icon09"></i>
                <button type="submit" class="btn btn-success radius duty_input_button" name="">搜索学生</button>
            </div>
            <div class="col-md-2 col-lg-2"></div>
        </div>
        <div class="row">

            <div class="col-md-3 col-lg-3"></div>
            <div class="col-md-6 col-lg-6"></div>
            <!-- 显示学生总数 -->
            <div class="col-md-2 col-lg-2 duty_id">
                <span>共有数据：<strong id="duty_count"></strong> 条</span>
            </div>
            <div class="col-md-1 col-lg-1">
                <a id="out_table3" class=" btn btn-success">导出</a>
            </div>
        </div>
        <div class="row">
            <!-- 显示学生考勤信息 -->
            <div class="col-lg-12">
                <table id="duty_table" class="table table-hover table-bordered table-striped">
                    <thead>
                        <tr></tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <!-- 显示页数 -->
        <div class="row">
            <div class="col-lg-8"></div>
            <div class="duty_pages col-lg-4">
                <button class="duty_paging">上一页</button>
                <div id="duty_pageNum"></div>
                <button class="duty_paging">下一页</button>
            </div>
        </div>
    </div>
</div>
<!-- 查看学生详细信息 -->
<div class="modal fade" id="duty_ViewDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">学生详细信息</h4>
            </div>
            <div class="modal-body row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-md-5 col-lg-5">
                    <div class="row duty_detail">
                        <div class="col-md-5 col-lg-5 duty_detail_left">
                            <div>姓名：</div>
                            <div>学号：</div>
                            <div>班级老师：</div>
                            <div>家长姓名：</div>
                            <div>家长电话：</div>
                            <div>出园时间：</div>
                            <div>家庭住址：</div>
                        </div>
                        <div class="col-md-7 col-lg-7">
                            <div  id="duty_name"></div>
                            <div  id="duty_num"></div>
                            <div  id="duty_tea"></div>
                            <div  id="duty_par"></div>
                            <div  id="duty_tel"></div>
                            <div  id="duty_out"></div>
                            <div  id="duty_str"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="row duty_detail">
                        <div class="col-md-5 col-lg-5 duty_detail_left">
                            <div>性别：</div>
                            <div>出生日期：</div>
                            <div>班级：</div>
                            <div>关系：</div>
                            <div>家长邮箱：</div>
                            <div>入园时间：</div>
                            <div>出勤：</div>
                        </div>
                        <div class="col-md-7 col-lg-7">
                            <div  id="duty_sex"></div>
                            <div  id="duty_da"></div>
                            <div  id="duty_class"></div>
                            <div  id="duty_rel"></div>
                            <div  id="duty_ema"></div>
                            <div  id="duty_in"></div>
                            <div  id="duty_att"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
    </div>
</div>
<!-- 查看请假详细信息 -->
<div class="modal fade" id="duty_viewVacation" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">学生请假信息</h4>
            </div>
            <div class="modal-body row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <div class="row duty_detail">
                        <div class="col-lg-12">
                            <span> 请假理由：</span>
                            <textarea id="duty_vaca_text"></textarea>
                        </div>
                        <div class="col-lg-12">
                            <span>请假时间：</span>
                            <span id="duty_vaca_time"></span>
                        </div>
                        <div class="col-lg-12">
                            <span>家长邮箱：</span>
                            <span id="duty_vaca_email"></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>
            <div class="row duty_but">
                <button type="button" class="duty_model_button" data-dismiss="modal">确定</button>
            </div>

        </div>
    </div>
</div>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
<script src="../../static/js/DATE_index.js"></script>
<script src="../../static/js/duty.js"></script>
<script src="../../static/lib/jquery-table2excel-master/src/jquery.table2excel.js"></script>
</body>
</html>