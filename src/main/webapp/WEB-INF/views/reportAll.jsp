<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>成绩管理</title>
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
            <form action="/page" method="post">
            <div class="col-md-12 col-lg-12">
                <span>成绩单查询：</span>
                <input type="text" class="stuInfor_inputText" placeholder="输入名称进行查询" name="likename" value="${likename}" id="likename"><span class="searchStu"><i class="iconfont icon-icon09"></i> 搜索</span>
            </div>
            </form>
        </div>
        <!-- 添加成绩单 -->
        <div class="row">
            <!-- 添加按钮 -->
            <c:if test="${tm}">
            <div class="stuInfor_delateAdd col-md-3 col-lg-3">
                <button type="button" class="stuInfo_addBtn iconfont icon-icon-test btn btn-info" data-toggle="modal" data-target="#stuInfor_addStuModal">添加成绩单</button>
            </div>
            </c:if>
            <div class="col-md-6 col-lg-6"></div>
<%--            分页--%>
            <!-- 显示总数 -->
            <div class="stuInfor_stuNumber col-md-3 col-lg-3">
                <span class="stuInfor_stuNumberSpan">共有数据：${pageInfo.total} 条</span>
                <a href="/page" class="stuInfo_addBtn btn btn-info">刷新</a>
                <button type="button" class="stuInfo_delateBtn iconfont icon-shanchu btn btn-danger" data-toggle="modal">批量删除</button>
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
                            <h4 class="modal-title" id="stuInfor_delateAllStu_tab1">是否需要批量删除？</h4>
                        </div>
                        <div class="stuInfor_delateAllStu_btn stuInfor_addStu modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="button" id="stuInfor_deleteBatches" class="btn btn-primary" data-dismiss="modal"  onclick="deleteAll()">确认</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 显示成绩单基本信息 -->
        <div class="row">
            <div class="stuInfor_table col-md-12 col-lg-12">
                <table  class="table table-hover table-bordered table-striped">
                    <tr>
                        <th width="30"><input type="checkbox" id="checkAll" style="text-align: center"></th>
                        <th style="text-align: center">成绩单名称</th>
                        <th style="text-align: center">创建人</th>
                        <th style="text-align: center">操作</th>
                    </tr>
                    <tbody>
                        <c:forEach items="${pageInfo.list}" var="d">
                            <tr>
                                <input type="hidden" value="${d.downId}">
                                <td><input type="checkbox" class="checkOne"></td>
                                <td>${d.tTitle}</td>
                                <td>班主任</td>
                                <td>
                                    <button>查看</button>
                                    <div class="dropdown">
                                        <button class="stuInfor_moreActions btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            更多操作
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                            <li class="moreOperationLi" data-toggle="modal" data-target="#stuInfor_editManageModal"><a href="#">编辑</a></li>
                                            <li class="moreOperationLi" data-toggle="modal" data-target="#delate_manage"><a href="#">删除</a></li>
                                            <li class="moreOperationLi" data-toggle="modal"><a href="">下载</a></li>
                                        </ul>
                                    </div>
<%--                                    <select name="chooseManager">--%>
<%--                                        <option value="0" class="stuInfor_moreActions btn btn-default dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">更多操作</option>--%>
<%--&lt;%&ndash;                                        <button type="button" class="manageEditBtn stu_lookBtn btn" data-toggle="modal" data-target="#stuInfor_editManageModal">编辑</button>&ndash;%&gt;--%>
<%--                                        <option value="1" class="manageEditBtn stu_lookBtn btn" data-toggle="modal" data-target="#stuInfor_editManageModal">编辑</option>--%>
<%--&lt;%&ndash;                                        <button type="button" class="mangaDelateBtn btn btn-danger" data-toggle="modal" data-target="#delate_manage">删除</button>&ndash;%&gt;--%>
<%--                                        <option value="2" class="mangaDelateBtn btn btn-danger" data-toggle="modal" data-target="#delate_manage">删除</option>--%>

<%--                                        下载--%>
<%--                                    </select>--%>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <h3 align="center"><span>${msg}</span></h3>
            </div>
        </div>
        <!-- 显示页数 -->
        <div class="stuInfor_pages row">
            <div class="stuInfor_pageNumCounts col-lg-12">
                <button class="stuInfor_btnComm">上一页</button>
                <div id="stuInfor_pageNum"></div>
                <button class="stuInfor_btnComm">下一页</button>
            </div>
<%--    <tfoot>--%>

<%--    <a onclick="page(${pageInfo.firstPage})">首页</a>--%>
<%--    <c:if test="${pageInfo.hasPreviousPage}">--%>
<%--        <a onclick="page(${pageInfo.prePage})">上一页</a>--%>
<%--    </c:if>--%>
<%--    <c:forEach items="${pageInfo.navigatepageNums}" var="i">--%>
<%--        <c:if test="${i==pageInfo.pageNum}">--%>
<%--            <a onclick="page(${i})">【${i}】</a>--%>
<%--        </c:if>--%>
<%--        <c:if test="${i!=pageInfo.pageNum}">--%>
<%--            <a onclick="page(${i})">${i}</a>--%>
<%--        </c:if>--%>
<%--    </c:forEach>--%>
<%--    <c:if test="${pageInfo.hasNextPage}">--%>
<%--        <a onclick="page(${pageInfo.nextPage})">下一页</a>--%>
<%--    </c:if>--%>
<%--    <a onclick="page(${pageInfo.lastPage})">尾页</a>--%>
<%--    共${pageInfo.pages}页，${pageInfo.total}条记录 到第<input value="1" name="pn" id="pn_input">页--%>
<%--    <input type="button" value="确定" onclick="one()">--%>
<%--    </tfoot>--%>
        </div>

    </div>
</div>
<!-- 添加成绩单信息 -->
<!-- Modal -->
<div class="modal fade" id="stuInfor_addStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="stuInfor_ViewDetails_tittle modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加成绩单信息</h4>
            </div>
<%--            提交成绩标题--%>
            <form action="/add?cId=${cId}" method="post" enctype="multipart/form-data">
            <div class="stuInfor_ViewDetails_content modal-body row">
                <div class="row">
                    <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                        <input type="button"  onclick="window.location.href='/copy?cId=${cId}'" value="下载模板" style="margin: 0 auto"></input>
                        <br>
                        <div align="left">
                            成绩单标题:<input id="departInfo1" type="text" value="" name="title">
                            <input type="file" name="idpic">
                        </div>
                    </div>
                </div>
            </div>
            <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">确认</button>
            </div>
            </form>
        </div>
    </div>
</div>
<!-- 编辑成绩单信息 -->
<!-- Modal -->
<div class="modal fade" id="stuInfor_editManageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="stuInfor_ViewDetails_tittle modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">学生成绩信息</h4>
            </div>
<%--            修改学生成绩--%>
            <form action="" method="post">
            <div class="stuInfor_ViewDetails_content modal-body row">
                <div class="row">
                    <div class="stuInfor_view_headPortrait_col col-md-6 col-lg-6">
                        <div class="stuInfor_view_headPortrait">
                            <img class="stuInfor_add_headPortraitImg stuInfor_view_headPortraitImg" src="../../static/images/stuInfor_images/add_stuImg.png" alt="">
                        </div>
                    </div>
                    <div class="stuInfor_view_headPortrait_col2 col-md-6 col-lg-6">
                        <div class="stuInfor_infoComm row">
                            <%-- 换成模糊查询利用ajax--%>
                            <div class="stuInfor_infoComm2 col-md-4 col-lg-4">姓名<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                <input class="stuInfor_usrReallyName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" name="name" id="seach"/>
                            </div>
                            <div id="tips" style="display: none"></div>
                        </div>
                        <div class="stuInfor_infoComm row">
                            <%-- 换成下拉列表利用ajax--%>
                            <div class="stuInfor_infoComm2 col-md-4 col-lg-4">科目<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                <input class="stuInfor_usrName stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" name="type"/>
                            </div>
                        </div>
                        <div class="stuInfor_infoComm row">
                            <div class="stuInfor_infoComm2 col-md-4 col-lg-4">成绩<i class="stuInfor_addStu_xing iconfont icon-xinghao"></i></div>
                            <div class="stuInfor_infoInputComm col-md-8 col-lg-8">
                                <input class="stuInfor_usrPsd stuInfor_addStu_inputCo2 stuInfor_addStu_inputCom" type="text" value="" name="score"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="stuInfor_addStu_btn stuInfor_addStu modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="stuInfor_manageEdit btn btn-primary" data-dismiss="modal">确认</button>
            </div>
            </form>
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
                    <a href=""><button type="button"  class="btn btn-primary" data-dismiss="modal">确认</button></a>
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
<script type="text/javascript">
    // function one() {
    //     var likename = document.getElementById("likename").value;
    //     var pageNum = document.getElementById("pn_input").value;
    //     window.location = "page?pageNum=" + pageNum + "&likename=" + likename;
    // }
    //
    // function page(pageNum) {
    //     var likename = document.getElementById("likename").value;
    //     window.location = "page?pageNum=" + pageNum + "&likename=" + likename;
    // }

    $(function () {
        $("#checkAll").click(function () {
            $(".checkOne").prop("checked", this.checked)
        })
    })

    function deleteAll() {
        var ids = "";
        $(".checkOne").each(function () {
            if ($(this).is(":checked")) {
                var id = $(this).parent().parent().find("input:first").val();
                ids += id;
                ids += ",";

            }
        })
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg) == true) {
            var idstr = ids.substring(0, ids.length - 1);
            window.location = "deleteAll?idstr=" + idstr;
        }
    }
    $(function (){
        $("#seach").keyup(function (){

            $.ajax(
                {
                    url:"/",
                    type:"post",
                    data:{"name":this.value},
                    success:function (data){
                        if (data.length>0 && data!=null){
                            var  html ="";
                            for (var i = 0; i < data.length; i++) {
                                data[i].
                            }
                        }else {
                            return
                        }
                    }
                }
            )
        });
    });
</script>