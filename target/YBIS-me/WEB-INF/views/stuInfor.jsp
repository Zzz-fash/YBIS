<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>学生信息</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../static/css/stuInfor.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
</head>
<body>
    <!-- 内容区域 -->
    <div class="stuInfor_content container-fluid">
       <div class="row">
            <!-- 搜索学生栏 -->
            <div class="row">
                <div class="stuInfor_searchBar col-md-12 col-lg-12">
                    <span>班级：</span>
                    <select name="" id="stuInfor_selectClass">
                        <option class="stuInfor_searchOption" value="all">全部</option>
                    </select>
                   
                    <input type="text" class="stuInfor_inputText" placeholder="输入学生名称或学号进行查询" value='' id="studentInput" name="">
                    <span class="searchStu">  
                        <i class="iconfont icon-icon09"></i> 
                        搜索学生
                    </span>
                </div>
            </div>
            <!-- 批量删除及添加学生 -->
            <div class="row">
                <!-- 批量删除及添加学生按钮 -->
                <div class="stuInfor_delateAdd col-md-3 col-lg-3">
                    <button type="button" class="stuInfo_delateBtn iconfont icon-shanchu btn btn-danger" data-toggle="modal" data-target="#stuInfor_delateAllStuModal">批量删除</button>
                    <button type="button" class="stuInfo_addBtn iconfont icon-icon-test btn btn-info" data-toggle="modal" data-target="#stuInfor_addStuModal">添加学生</button>
                </div>
                <div class="col-md-6 col-lg-6"></div>
                <!-- 显示学生总数 -->
                <div class="stuInfor_stuNumber col-md-3 col-lg-3">
                    <span class="stuInfor_stuNumberSpan">共有数据：<strong class="stuInfor__stuNumberStrong"></strong> 条</span>
                    <div id="export">导出</div>
                </div>

            </div>
            <!-- 显示学生基本信息 -->
            <div class="row">
                <div class="stuInfor_table col-md-12 col-lg-12">
                    <table id="stuInfor_mytable" class="table table-hover table-bordered table-striped">
                        <thead id="stuInfor_thead">
                            <tr>
    
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
            <!-- 显示页数 -->
            <div class="stuInfor_pages row">
                <div class="stuInfor_pageNumCounts col-lg-12">
                    <button class="stuInfor_btnComm">上一页</button>
                    <div id="stuInfor_pageNum"></div>
                    <button class="stuInfor_btnComm">下一页</button>
                </div>
        </div>
       </div>
        <!-- 导出数据 -->
        <div id="exportTable">
            <div class="col-md-12 col-lg-12">
                <table id="stuInfor_exportTable" class="table table-hover table-bordered table-striped">
                    <thead id="stuInfor_exportThead">
                    <tr>

                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>

    </div>
    <!-- 批量删除学生 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_delateAllStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="stuInfor_delateAllStu_tittle modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="stuInfor_delateAllStu_tab">是否需要批量删除？</h4>
                    </div>
                    <div class="stuInfor_delateAllStu_btn stuInfor_addStu modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" id="stuInfor_deleteBatches" class="btn btn-primary" data-dismiss="modal">确认</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 单独删除学生或作退学处理 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_delateStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content1 modal-content">
                    <div class="stuInfor_delateAllStu_tittle modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="stuInfor_delateAllStu_tab">是否删除？</h4>
                    </div>
                    <div class="stuInfor_delateAllStu_btn stuInfor_addStu modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button"  class="stuInfor_delete btn btn-primary" data-dismiss="modal">确认</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 转班处理 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_changeClassModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="stuInfor_changeClass_modif modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">转班管理</h4>
                </div>
                <div class="modal-body row">
                <div class="stuInfor_addStu row">
                        <div class="col-md-12 col-lg-12">
                            请选择要转入的班级：
                            <select class="stuInfor_changeClass_select" name="" id="">
                                <option value="changClass" selected disabled>请选择班级</option>
                            </select>
                        </div>
                </div>
                <div class="stuInfor_changeClass_btnAll stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="stuInfor_changeClass_btn btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
        </div>
    </div>
    <!-- 添加学生信息 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_addStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="stuInfor_ViewDetails_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加学生信息</h4>
                </div>
                <div class="stuInfor_ViewDetails_content modal-body row">
                    <div class="row">
                        <div class="stuInfor_view_headPortrait_col col-md-6 col-lg-6">
                            <div class="stuInfor_view_headPortrait">
                                <img class="stuInfor_add_headPortraitImg stuInfor_view_headPortraitImg" src="../../static/images/stuInfor_images/add_stuImg.png" alt="">
                                <input type="file" id="chooseImage" name="file">
                            </div>
                        </div>
                        <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_stuName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">性别<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <select class="stuInfor_addStu_sex stuInfor_addStu_inputCo3 stuInfor_addStu_inputCo2" name="" id="">
                                        <option value="man">男</option>
                                        <option value="female">女</option>
                                    </select>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">年龄</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuAge stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text"/></div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">所属班级<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <select id="stuInfor_selectClassAdd" class="stuInfor_addStu_class2 stuInfor_addStu_inputCo3 stuInfor_addStu_inputCo2" name="" id="">
                                        <option value="" selected disabled>请选择班级</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学    号<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_stuId stuInfor_addStu_inputCom" type="text" readonly="readonly" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">出生日期<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input id="stuInfor_stuBridth" class="stuInfor_stuBridth stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">班级老师<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_teacherName stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">入园时间<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input id="stuInfor_stuIntime" class="stuInfor_stuIntime stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_praentName stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-4 col-lg-2">关系<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_relation stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长电话<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input  class="stuInfor_parentPhone stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长邮箱</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_parentEmial stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家庭住址</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_address stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学籍状态</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_studentStatus stuInfor_addStu_inputCom" type="text" placeholder="填写true/flase"/></div>
                    </div>
                </div>
                <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="stuInfor_addStudent btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
    </div>  
    <!-- 查看学生详细信息 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_ViewDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="stuInfor_ViewDetails_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">学生详细信息</h4>
                </div>
                <div class="stuInfor_ViewDetails_content modal-body row">
                    <div class="row">
                        <div class="stuInfor_view_headPortrait_col col-md-6 col-lg-6">
                            <div class="stuInfor_view_headPortrait">
                                <img class="stuInfor_view_headPortraitImg" src="../../static/images/stuInfor_images/stuImg01.jpg" alt="">
                            </div>
                        </div>
                        <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">姓名</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">性别</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuSex stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">年龄</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuAge stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">所属班级</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuGrade stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                            </div>
                        </div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学    号</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_stuId stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">出生日期</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_stuBridth stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">班级老师</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_teacherName stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">入园时间</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_stuIntime stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长姓名</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_praentName stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-4 col-lg-2">关系</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_relation stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长电话</div>
                        <div class="col-md-4 col-lg-4"><input  class="stuInfor_parentPhone stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长邮箱</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_parentEmial stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家庭住址</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_address stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学籍状态</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_studentStatus stuInfor_addStu_inputCom" type="text" disabled="true"></div>
                    </div>
                </div>
                <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 编辑学生信息 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_editStuInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="stuInfor_ViewDetails_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">编辑学生信息</h4>
                </div>
                <div class="stuInfor_ViewDetails_content modal-body row">
                    <div class="row">
                        <div class="stuInfor_view_headPortrait_col col-md-6 col-lg-6">
                            <div class="stuInfor_view_headPortrait">
                                <img class="stuInfor_add_headPortraitImg stuInfor_view_headPortraitImg" src="../../static/images/stuInfor_images/add_stuImg.png" alt="">
                                <input type="file" id="chooseImage_edit" name="file">
                            </div>
                        </div>
                        <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_stuName2 stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">性别<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_stuSex2 stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">年龄</div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8"><input class="stuInfor_stuAge2 stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text"/></div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">所属班级<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                        <input class="stuInfor_stuGrade2 stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="true"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学    号<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_stuId2 stuInfor_addStu_inputCom" type="text"  disabled="true"/></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">出生日期<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input id="stuInfor_stuBridth" class="stuInfor_stuBridth2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">班级老师<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_teacherName2 stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">入园时间<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input id="stuInfor_stuIntime" class="stuInfor_stuIntime2 stuInfor_addStu_inputCom" type="text" disabled="true"/></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_praentName2 stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-4 col-lg-2">关系<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_relation2 stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长电话<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                        <div class="col-md-4 col-lg-4"><input  class="stuInfor_parentPhone2 stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家长邮箱</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_parentEmial2 stuInfor_addStu_inputCom" type="text" /></div>
                    </div>
                    <div class="stuInfor_addStu row">
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">家庭住址</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_address2 stuInfor_addStu_inputCom" type="text" /></div>
                        <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">学籍状态</div>
                        <div class="col-md-4 col-lg-4"><input class="stuInfor_studentStatus2 stuInfor_addStu_inputCom" type="text" placeholder="填写true/flase"/></div>
                    </div>
                </div>
                <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="stuInfor_editStudent btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
    </div>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
    <script src="../../static/js/DATE_index.js"></script>
    <script src="../../static/lib/date/laydate.dev.js"></script>
    <script src="../../static/lib/jquery-table2excel-master/src/jquery.table2excel.js"></script>
    <script src="../../static/js/stuInfor.js"></script>
</body>
</html>