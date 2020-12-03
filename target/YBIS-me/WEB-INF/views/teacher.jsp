<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>教师信息</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../static/css/teacher.css">
    <link rel="stylesheet" href="../../static/css/lyz.calendar.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
</head>
<body>
<div class="teaInfor_content container-fluid">
    <div class="row">
        <!-- 搜索教师栏 -->
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="teaInfor_searchBar col-lg-8">
                <input type="text"    class="teaInfor_inputText " placeholder="输入教师名称或教职工编号" id="input" name="search">
                <button type="submit" class="teaInfor_search btn btn-success radius" id="" name=""><i class="iconfont icon-icon09"></i> 搜索教师</button>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <!-- 批量删除及添加教师 -->
        <div class="row">
            <!-- 批量删除及添加教师按钮 -->
            <div class="teaInfor_delateAdd col-lg-3">
                <button type="button" class="teaInfo_delateBtn iconfont icon-shanchu btn btn-danger" data-toggle="modal" data-target="#teaMo">批量删除</button>
                <button type="button" class="teaInfo_addBtn iconfont icon-icon-test btn btn-info" data-toggle="modal" data-target="#steMo">添加教师</button>
            </div>
            <div class="col-lg-7"></div>
            <!-- 显示教师总数 -->
            <div class="tInfor_tNumber col-lg-2">
                <span class="tInfor_tNumberSpan">共有教师：<strong class="tInfor__tNumberStrong"></strong> 人</span>
            </div>
        </div>
        <!-- 显示教师基本信息 -->
        <div class="row">
            <div class="teacher_mytable col-lg-12">
                <table id="teacher_mytable" class="table table-hover table-bordered table-striped">
                    <thead id="tInfor_thead">
                    <tr>

                    </tr>
                    </thead>
                    <tbody id="myTbody">

                    </tbody>
                </table>
            </div>
        </div>
        <!-- 显示页数 -->
        <div class="tInfor_pages row">
            <div class="col-lg-2">

            </div>
            <div class="col-lg-6">

            </div>
            <div class="tInfor_pageNumCounts col-lg-4">
                <button class="tInfor_btnComm">上一页</button>
                <div id="tInfor_pageNum"></div>
                <button class="tInfor_btnComm">下一页</button>
            </div>
        </div>
    </div>
</div>
<!-- 批量删除教师 -->
<!-- Modal -->
<div class="modal fade" id="teaMo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="tInfor_delateAllT_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="tInfor_delateAllT_tab">是否需要批量删除？</h4>
                </div>
                <div class="tInfor_delateAllt_btn tInfor_addT modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" onclick="delAll(this)"data-dismiss="modal" class="btn btn-primary">确认</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 添加教师 -->
<!-- Modal -->
<div class="modal fade" id="steMo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="tInfor_addT_tab">添加教师信息</h4>
            </div>
            <div class="modal-body row">
                <div class="tInfor_addt row">
                        <div class="teaInfor_addTea_col col-lg-2 col-md-2">姓名<i class="tea iconfont icon-xinghao"></i></div>
                    <div class="col-lg-4 col-md-4"><input id="tName" name="no." class="tInfor_addT_inputCom" type="text"></div>
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">教职工编号<i class="tea iconfont icon-xinghao"></i></div>
                    <div class="col-lg-4 col-md-4"><input id="tNo" name="no." class="tInfor_addT_inputCom" type="text"></div>
                </div>
                <div class="tInfor_addt row">
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">性别<i class="tea iconfont icon-xinghao"></i></div>
                    <div class="col-lg-4 col-md-4">
                        <select name="no."  class="tInfor_addT_inputCom" name="" id="tSex">
                            <option value="">男</option>
                            <option value="">女</option>
                        </select>
                    </div>
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">婚姻状况<i class="tea iconfont icon-xinghao"></i></div>
                    <div class="col-lg-4 col-md-4">
                        <select name="no." class="tInfor_addT_inputCom" name="" id="">
                            <option value="">已婚</option>
                            <option value="">未婚</option>
                        </select>
                    </div>
                </div>
                <div class="tInfor_addt row">
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">所属班级<i class="tea iconfont icon-xinghao"></i></div>
                    <div class="col-lg-4 col-md-4">
                        <select name="no." class="tInfor_addT_inputCom" name="" id="tClass">
                            <option value="">1801</option>
                            <option value="">1802</option>
                        </select>
                    </div>
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">联系电话<i class="tea iconfont icon-xinghao"></i></div>
                    <div name="no." class="col-lg-4 col-md-4"><input class="tInfor_addT_inputCom" type="text"></div>
                </div>
                <div class="tInfor_addt row">
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">出生日期<i class="tea iconfont icon-xinghao"></i></div>
                    <div name="no." class="col-lg-4 col-md-4"><input id="tBirthday" class="tInfor_addT_inputCom" type="text"></div>
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">年    龄</div>
                    <div name="no." class="col-lg-4 col-md-4"><input id="tAge" class="tInfor_addT_inputCom" type="text"></div>
                </div>
                <div class="tInfor_addt row">
                    <div class="teaInfor_addTea_col col-lg-2 col-md-2">职     务</div>
                    <div name="no." class="col-lg-4 col-md-4"><input id="tWork" class="tInfor_addT_inputCom"  type="text"></div>
                    <div class="teaInfor_addTea_col col-lg-4 col-md-4">住    址</div>
                    <div name="no." class="col-lg-4 col-md-4"><input class="tInfor_addT_inputCom" type="text"></div>
                </div>
            </div>
            <div class="tInfor_addT_btn tInfor_addt modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="yuan"onclick="addDepartmentLocal()"data-dismiss="modal" class="btn btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
    <script src="../../static/js/DATE_index.js"></script>
    <script src="../../static/js/teacher.js"></script>

</body>
</html>