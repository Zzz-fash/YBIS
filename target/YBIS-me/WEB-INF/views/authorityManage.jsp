<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>权限管理</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../static/css/stuInfor.css">
    <link rel="stylesheet" href="../../static/font/iconfont.css">
    <link rel="stylesheet" href="../../static/css/authorityManage.css">
</head>
<body>
    <!-- 内容区域 -->
    <div class="stuInfor_content container-fluid">
       <div class="row">
            <!-- 搜索管理员栏 -->
            <div class="row">
                <div class="stuInfor_searchBar col-md-12 col-lg-12">
                    <span>权限管理：</span>
                    <input type="text" class="stuInfor_inputText" placeholder="输入名称进行查询" value='' id="studentInput" name=""><span class="searchStu"><i class="iconfont icon-icon09"></i> 搜索</span>
                </div>
            </div>
            <!-- 添加管理员 -->
            <div class="row">
                <!-- 添加按钮 -->
                <div class="stuInfor_delateAdd col-md-3 col-lg-3">
                    <button type="button" class="stuInfo_addBtn iconfont icon-icon-test btn btn-info" data-toggle="modal" data-target="#stuInfor_addStuModal">添加管理员</button>
                </div>
                <div class="col-md-6 col-lg-6"></div>
                <!-- 显示总数 -->
                <div class="stuInfor_stuNumber col-md-3 col-lg-3">
                    <span class="stuInfor_stuNumberSpan">共有数据：<strong class="stuInfor__stuNumberStrong"></strong> 条</span> 
                </div>
            </div>
            <!-- 显示管理员基本信息 -->
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
    </div>
    <!-- 添加管理员信息 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_addStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="stuInfor_ViewDetails_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加管理员信息</h4>
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
                                    <input class="stuInfor_usrReallyName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">账号<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">密码<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrPsd stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="password"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">确认密码<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrPsdChecked stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="password"/>
                                </div>
                            </div>
                        </div>
                        <div class="stuInfor_addStu row">
                            <div class="stuInfor_addStu_col2Add stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">职    务<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="col-md-4 col-lg-4">
                                <input class="stuInfor_usrDuty stuInfor_addStu_inputCom" type="text" />
                            </div>
                            <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">权限等级<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="col-md-4 col-lg-4">
                                <input class="stuInfor_accessLevel stuInfor_addStu_inputCom" type="text" placeholder="权限等级为1、5或10" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="stuInfor_addStudent btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
    </div>
     <!-- 编辑管理员信息 -->
    <!-- Modal -->
    <div class="modal fade" id="stuInfor_editManageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="stuInfor_ViewDetails_tittle modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">更改权限</h4>
                </div>
                <div class="stuInfor_ViewDetails_content modal-body row">
                    <div class="row">
                        <div class="stuInfor_view_headPortrait_col col-md-6 col-lg-6">
                            <div class="stuInfor_view_headPortrait">
                                <img class="stuInfor_add_headPortraitImg stuInfor_view_headPortraitImg" src="../../static/images/stuInfor_images/add_stuImg.png" alt="">
                            </div>
                        </div>
                        <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrReallyName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="disabled"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">账号<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" disabled="disabled"/>
                                </div>
                            </div>
                            <div class="stuInfor_infoComm row">
                                <div class="stuInfor_infoComm2 col-md-4 col-lg-4">密码<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                                <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                    <input class="stuInfor_usrPsd stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="password" disabled="disabled"/>
                                </div>
                            </div>
                        </div>
                        <div class="stuInfor_addStu row">
                            <div class="stuInfor_addStu_col2Add stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">职    务<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="col-md-4 col-lg-4">
                                <input class="stuInfor_usrDuty stuInfor_addStu_inputCom" type="text" disabled="disabled"/>
                            </div>
                            <div class="stuInfor_addStu_col2 stuInfor_addStu_col col-md-2 col-lg-2">权限等级<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="col-md-4 col-lg-4">
                                <input class="stuInfor_accessLevel1 stuInfor_addStu_inputCom" type="text" placeholder="权限等级为1、5或10"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="stuInfor_manageEdit btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
    </div>    
    <!-- 删除处理 -->
    <!-- Modal -->
    <div class="modal fade" id="delate_manage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content1 modal-content">
                    <div class="stuInfor_delateAllStu_tittle modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="stuInfor_delateAllStu_tab">是否删除？</h4>
                    </div>
                    <div class="stuInfor_delateAllStu_btn stuInfor_addStu modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button"  class="deleteMange_btn btn btn-primary" data-dismiss="modal">确认</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
    <script src="../../static/js/DATE_index.js"></script>
    <script src="../../static/js/authorityManage.js"></script>
</body>
</html>