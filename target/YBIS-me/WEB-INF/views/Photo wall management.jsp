<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Photo wall management</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--缩放按照1:1缩放-->
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <style>
        body{
            background-color: #F2F8F9;
        }
        #mytable_cjl{
            margin-top: 20px;
        }
        .Sstop_cjl{
            overflow: hidden;
        }
        .Sslandiv_cjl{
            width: 375px;
            position: relative;
            left: 50%;
            margin-left: -187.5px;
        }
        .fabu{
            position: relative;
            margin-left: -25px;
            margin-top:25%;
            left: 50%;
            width: 50px;
            height: 20px;
            background-color: #5CB85C;
            text-align: center;
            border-radius: 5px;
            color: #fff;
        }
        .zhan{
            text-align: center;
        }
        .cjlul{
            position: absolute;
            right: 50px;
        }
        .dropdown{    /*操作按钮*/
            margin-top: 25px;
            width: 100px;
            margin-left: 50px;
        }
        .tdOperation{
            width: 100px;
        }
        .caozuo_cjl{
            width: 100px;
        }
        .dropdown-menu{
            min-width: 0px
        }
        .imgInfo_addBtn{
            background-color: #5CB85C;
            border: 1px solid #5CB85C;
        }
        .imgInfo_addBtn:hover{
            background-color: #37b837;
        }
        .btn-info{
            background-color: #00A855;
        }
        .btn-info:focus{
            background-color: #00A855;
        }
        .btn-info:active:hover{
            background-color: #00A855;
        }
        .btn-info:active{
            background-color: #00A855;
        }
        .btn-info:focus{
            background-color: #00A855;
        }
        .btn-info:hover{
            border-color: #00A855;
        }
        .cjlul{
            margin: 0px 0 5px;
        }


        .imgInfo_returnBtn{
            background-color: #5bc0de;
            color: white;
        }
        .imgInfo_returnBtn:hover{
            background-color: #5bc0de;
            color: white;
        }

        .imgInfor_moreActions{
            background-color: #5bc0de;
            color: white;
        }
        .imgInfor_moreActions:hover{
            background-color: #5bc0de;
            color: white;
        }
        .dropdown-menu{
            background-color: #5bc0de;
            color: white;
        }

        .dropdown-menu>li>a,.caret{
           color: white;
        }
        .dropdown-menu>li>a:hover{
            color: white;
            background-color: #40BDD1;
        }
        .btn:focus{
            color: white;
        }
            /*.caozuo_cjl:hover>a{*/
            /*background-color: #438da3;*/
            /*w*/
            /*border: 1px solid white;*/
        /*}*/

        /*下面是点击添加图片的样式*/
        .tianjia_cjl_Xx{
            position: relative;
            font-weight: bold;
            font-size:26px;
            padding: 10px;
            top: 5px;
        }
        .tianjia_cjl_xian{
            border-top: 1px solid #adb4c2;
            height: 20px;
            margin-top: 10px;
        }
        .tianjia_cjl_xian2{
            border-top: 1px solid #adb4c2;
            height: 20px;
            margin-top: 10px;
            width: 598px;
        }
        .Mycjl_addphoto>span{
            position: relative;
            top: 4px;
        }
        .Mycjl_addphoto_on{
            font-size: 8px;
        }
        .Mycjl_addphoto_cla{
            margin-top: -100px;
            left: -15px;
        }
        .Mycjl_addphoto_cla_sel{
            margin-left: 105px;
            margin-top: -20px;

        }
        .Mycjl_addphoto1{
            position: relative;
            top: 10px;
        }
        .Mycjl_addphoto1>span   .Mycjl_addphoto_cla_sel>span{
            position: relative;
            top: 4px;
        }
        .modalcjl_guan>button{
            position: relative;
            margin-top: 30px;
            left: 220px;
            bottom: 10px;
        }
        .modalcjl_guan{
            /*border: 1px solid red;*/
            width: 600px;
            margin-left: 15px;
        }
        .close{
            position: relative;
            margin-top: 15px;
            left: -20px;
        }
        #photocjl_Ss{
            height: 40px;
        }
        #photocjl_Ssanniu{
            height: 40px;
        }
        #stuInfor_selectClass{
           height: 40px;
        }
        #MyxrTr_cjl>td:nth-child(1),#MyxrTr_cjl>td:nth-child(3),#MyxrTr_cjl>td:nth-child(4),#MyxrTr_cjl>td:nth-child(5){
            text-align: center;
            line-height: 80px;
        }

    </style>
</head>
<body>
<div class="stuInfor_content container-fluid Sstop_cjl">
    <div class="row">
        <!-- 搜索学生栏 -->
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="Sslan col-lg-8">
                <div class="Sslandiv_cjl">
                    <span>班级：</span>
                    <select name="" id="stuInfor_selectClass">
                        <option class="leibie_cjl" value="">全部</option>
                    </select>
                    <input type="text" class="stuInfor_inputText" placeholder="输入照片编号或类型" id="photocjl_Ss" name="">
                    <button type="submit" class="stuInfor_search btn btn-success radius" id="photocjl_Ssanniu" name=""><i class="iconfont icon-icon09"></i> 搜索照片</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <!-- 批量删除及添加照片按钮 -->
        <div class="col-md-3 col-lg-3 MyModal">
            <button type="button" class="imgInfo_returnBtn iconfont icon-shanchu btn" data-toggle="modal" data-target=".topimg_yulan" id="fanhui_cjl">返回照片墙</button>
            <!--<div class="modal fade topimg_yulan" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">-->
                <!--<div class="modal-dialog modal-lg" role="document">-->
                    <!--<div class="modal-content">-->
                        <!--...-->
                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->

            <button type="button" class="imgInfo_addBtn iconfont icon-icon-test btn btn-info" data-toggle="modal" data-target=".topimg_cjl_add">添加照片</button>
            <div class="modal fade topimg_cjl_add " tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                <div class="modal-dialog modal-sm" role="document" style="width: 600px">
                    <div class="modal-content">
                        <span class="tianjia_cjl_Xx">添加新照片</span>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <div class="tianjia_cjl_xian"></div>
                        <div class="row">
                            <div class="col-md-2 col-lg-2 Mycjl_addphoto">
                                <span>照片编号:</span>
                            </div>
                            <div class="col-md-4 col-lg-4 Mycjl_addphoto">
                                <input id="Mycjl_photo_bianhao" type="text" placeholder="请为这种照片设置编号">
                            </div>
                            <div class="col-md-2 col-lg-2 Mycjl_addphoto">
                                <span>上传照片:</span>
                            </div>
                            <div class="col-md-4 col-lg-4 Mycjl_addphoto">
                                <input type="file" id="btn_file3" name="consignerRdFile" accept="image/jpg,image/jpeg,image/gif,image/png"
                                       style="display:none"
                                       onchange="imgChange(event,'consignerRdSign')">
                                <img id="consignerRdSign" class="nnter" src=""  width="100px" height="100px" border="1px"
                                     onclick="F_Open_dialog('btn_file3')">
                                <span class="Mycjl_addphoto_on">点击上传图片</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-lg-2 Mycjl_addphoto1" style="height: 50px">
                                <span>图片简介:</span>
                            </div>
                            <div class="col-md-4 col-lg-4 Mycjl_addphoto1">
                                <input id="Mycjl_photo_bianhao2" type="text" placeholder="请对照片简单的描述">
                            </div>
                            <div class="col-md-2 col-lg-2 Mycjl_addphoto1" style="height: 50px">
                                <span>选择类别:</span>
                            </div>
                            <div class="col-md-4 col-lg-4 Mycjl_addphoto1">
                                <select>
                                    <option value ="volvo">校园活动</option>
                                    <option value ="saab">户外活动</option>
                                    <option value="opel">小朋友乐园</option>
                                    <option value="audi">课外实践</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-lg-6 Mycjl_addphoto_cla">
                                <span class="col-lg-4">班级:</span>
                                <div class="col-lg-2 Mycjl_addphoto Mycjl_addphoto_cla_sel">
                                    <select>
                                        <option value ="volvo">小班</option>
                                        <option value ="saab">中班</option>
                                        <option value="opel">大班</option>
                                        <option value="audi">超级班</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                            <div class="tianjia_cjl_xian2 col-lg-12">

                            </div>


                            <div class="modalcjl_guan">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="cjlimgadd_tijiao">确定</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <div class="col-md-7 col-lg-7"></div>
        <!-- 显示学生总数 -->
        <div class="col-md-2 col-lg-2">
            <span class="imgtop_Shuju">共有数据：<strong class="imgtop_Ss_shuju"></strong> 条</span>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <table id="mytable_cjl" class="table table-hover table-bordered table-striped">
                <thead>
                <tr id="PhotoMytr_cjl">

                </tr>
                </thead>
                <tbody id="MyTbody_cjl">

                </tbody>
            </table>
            <nav aria-label="Page navigation">
                <ul class="pagination cjlul">
                    <li>
                        <a href="#" aria-label="Previous" class="onCjl">
                            <span aria-hidden="true">上一页</span>
                        </a>
                    </li>

                    <li class="topCjl_li">
                        <a href="#" aria-label="Next" class="UnderCjl">
                            <span aria-hidden="true">下一页</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-lg-6"></div>
    </div>
</div>





<script src="../../static/js/Photo%20wall%20management.js"></script>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
<script>
    // $(document).ready(function () {
    //     // 拿到数据  将数据渲染在页面上
    //     // 根据我的数据渲染表头
    //     // 怎么写thead里面有几个数据  根据我每个人的属性有几个 然后还要加操作项
    //
    //     // for in循环是遍历对象的循环
    //     // 1渲染表头
    //     for(let item in Photo_cjl[0]){
    //         if(item=="photoName_cjl"){
    //             // 向表头里面添加<th>编号</th>
    //             $("#mytable_cjl thead tr").append("<th>图片编号</th>")
    //         }else if(item=="PhotoManagements_cjl"){
    //             // 向表头里面添加<th>图片</th>
    //             $("#mytable_cjl thead tr").append("<th>图片</th>")
    //         }else if(item=="photoHuo_cjl"){
    //             // 向表头里面添加<th>类别</th>
    //             $("#mytable_cjl thead tr").append("<th>类别</th>")
    //         } else if(item=="photoIntroduction"){
    //             // 向表头里面添加<th>图片简介</th>
    //             $("#mytable_cjl thead tr").append("<th>图片简介</th>")
    //         } else if(item=="photoBan_cjl"){
    //             // 向表头里面添加<th>图片简介</th>
    //             $("#mytable_cjl thead tr").append("<th>班级</th>")
    //         }
    //     }
    //
    //     for (let i=0;i<Photo_cjl.length;i++) {
    //         if (i<5){
    //             $("#mytable_cjl").append(
    //                 `<tr>
    //                 <td>${Photo_cjl[i].photoName_cjl}</td>
    //                 <td><img src=${Photo_cjl[i].PhotoManagements_cjl} alt="1111" width="200px" height="100px"></td>
    //                 <td>${Photo_cjl[i].photoHuo_cjl}</td>
    //                 <td>${Photo_cjl[i].photoIntroduction}</td>
    //                 <td>${Photo_cjl[i].photoBan_cjl}</td>
    //             </tr>`
    //             )
    //         }else {
    //             break;
    //         }
    //
    //     }
    //
    //     for (let i =0;i<Math.ceil(Photo_cjl.length/5);i++){
    //         $("#pageNum_cjl").append(`<button class="pageNumClick_cjl">${i+1}</button>`)
    //     }
    //     $("#pageNum_cjl").on("click",".pageNumClick_cjl",function () {
    //         var i= $(this).text()
    //         console.log("打开第"+i+"页")
    //     })
    // })
    const pageNum = 3 //控制每页显示多少条数据
    var mypageNum=1;//第一个变量用于存当前页数

    var kaiguan=1

    function pageContent_cjl(table,countNum,arr,mybool) {

        if (mybool) {
            for (let item in arr[0]){
                if(item=="photoName_cjl"){
                    // 向表头里面添加<th>编号</th>
                    $("#mytable_cjl thead tr").append("<th class='zhan'>图片编号</th>")
                }else if(item=="PhotoManagements_cjl"){
                    // 向表头里面添加<th>图片</th>
                    $("#mytable_cjl thead tr").append("<th class='zhan' width='250px'>图片</th>")
                }else if(item=="photoHuo_cjl"){
                    // 向表头里面添加<th>类别</th>
                    $("#mytable_cjl thead tr").append("<th class='zhan'>类别</th>")
                } else if(item=="photoIntroduction"){
                    // 向表头里面添加<th>图片简介</th>
                    $("#mytable_cjl thead tr").append("<th class='zhan'>图片简介</th>")
                } else if(item=="photoBan_cjl"){
                    // 向表头里面添加<th>图片简介</th>
                    $("#mytable_cjl thead tr").append("<th class='zhan'>班级</th>")
                }
            }
            $("#mytable_cjl thead tr").append("<th class='zhan'>发布状态</th>")
            $("#mytable_cjl thead tr").append("<th class='zhan'>操作</th>")

        }

        $(`${table} tbody`).html("")

        for (let i=countNum;i<countNum+pageNum;i++){
            if (i<arr.length){
                $(`${table} tbody`).append(`
            <tr id="MyxrTr_cjl">
                <td>${arr[i].photoName_cjl}</td>
                    <td class="tucjl"><img src=${arr[i].PhotoManagements_cjl} alt="1111" width="200px" height="100px"></td>
                    <td>${arr[i].photoHuo_cjl}</td>
                    <td>${arr[i].photoIntroduction}</td>
                    <td>${arr[i].photoBan_cjl}</td>

                    <td>
                        <div class="fabu">
                            <span>已上传</span>
</div>
                    </td>
                    <td class="tdOperation">
                        <div class="dropdown">
                            <button class="imgInfor_moreActions btn" type="button" id="dropdown_cjl" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                更多
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdown_cjl">
                                <li class="caozuo_cjl"><a href="#">编辑</a></li>
                                <li class="caozuo_cjl" data-toggle="modal" data-target="#MyPhoto_xiu_cjl"><a class="out_cjl" href="#">修改</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">发布上传</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">预览</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">删除</a></li>
                            </ul>
                        </div>
                    </td>
            </tr>
            `)
            }
        }

        // $("#cjlimgadd_tijiao").on("click",function () {
        //     let bian = $("#Mycjl_photo_bianhao").val()
        //     console.log(bian)
        //     let jie = $("#Mycjl_photo_bianhao2").val() //获取input值
        //     console.log(jie)
        //     console.log(tu)
        // })

        // let zhi = $(".Mycjl_addphoto option:selected").text()
        // console.log(zhi)

    }
    // 渲染页面有几个页面按钮
    function pageBtn_cjl(element,arr){
        for (let i = 0; i<Math.ceil(arr.length/pageNum);i++)
            if (kaiguan=="1"){
                $(element).before(`
            <li id="btnlist_cjl" class="cjltianjia"><a href="#">${i+1}</a> </li>
        `)
            }

    }
    
$(".caret").children().css({
    backgroundColor: "#5bc0de",
    color: "white"
})
    $(document).ready(function () {
        pageContent_cjl("#mytable_cjl",0,Photo_cjl,true)
        pageBtn_cjl(".topCjl_li",Photo_cjl)
        $(".cjlul").on("click","#btnlist_cjl",function () {
            let page = $(this).text()
            page = (page-1)*pageNum
            pageContent_cjl("#mytable_cjl",page,Photo_cjl,false)
        })
    });

    // 页面数据有几条
     $(".imgtop_Ss_shuju").append(`
      <span class="imgtop_Gy_shuju">${Photo_cjl.length}</span>
      `)



    // 图片点击触发input-file点击
    function F_Open_dialog(id) {
        document.getElementById(id).click();
    }


    // 处理event事件，给image赋值base64的src
    function imgChange(e, imageid) {
        // console.info(e.target.files[0]);//图片文件

        // console.log(e.target.value);//这个也是文件的路径和上面的dom.value是一样的


        tu_cjl = e.target.value   //这里获取到了图片的地址

        var toAbsURL = function(url){
            var tu_cjl = document.createElement('tu_cjl');
            tu_cjl.href = url;
            return tu_cjl.href;
        };
        // console.log(toAbsURL)


        var reader = new FileReader();
        reader.onload = (function (file) {
            return function (e) {
                // console.info(this.result); //这个就是base64的数据了
                document.getElementById(imageid).src = this.result;
            };
        })(e.target.files[0]);
        reader.readAsDataURL(e.target.files[0]);
    }

    $("#cjlimgadd_tijiao").on("click",function () {
        let ban = $(".Mycjl_addphoto option:selected").text()
        let tujian = $(".Mycjl_addphoto1 option:selected").text()  //获取select的值
        let bian = $("#Mycjl_photo_bianhao").val()
        console.log(bian)
        let jie = $("#Mycjl_photo_bianhao2").val() //获取input值
        console.log(jie)
        console.log(tu_cjl)     //获取到了图片

        let www = $(".nnter")[0].src

        var duixiang_cjl = {
            photoName_cjl: bian,                                            //照片编号
            PhotoManagements_cjl: www,                                      //上传的图片
            photoHuo_cjl: tujian,       //类型
            photoIntroduction: jie,         //图片简介
            photoBan_cjl: ban,                                       //班级
        };


        Photo_cjl.push(duixiang_cjl);
        console.log(Photo_cjl)

        function pageContent_cjl(table,countNum,arr,mybool) {

            if (mybool) {
                for (let item in arr[0]){
                    if(item=="photoName_cjl"){

                    }else if(item=="PhotoManagements_cjl"){

                    }else if(item=="photoHuo_cjl"){

                    } else if(item=="photoIntroduction"){

                    } else if(item=="photoBan_cjl"){
                    }
                }
            }

            $(`${table} tbody`).html("")

            for (let i=countNum;i<countNum+pageNum;i++){
                if (i<arr.length){
                    $(`${table} tbody`).append(`
            <tr id="MyxrTr_cjl">
                <td>${arr[i].photoName_cjl}</td>
                    <td class="tucjl"><img src=${arr[i].PhotoManagements_cjl} alt="1111" width="200px" height="100px"></td>
                    <td>${arr[i].photoHuo_cjl}</td>
                    <td>${arr[i].photoIntroduction}</td>
                    <td>${arr[i].photoBan_cjl}</td>

                    <td>
                        <div class="fabu">
                            <span>已上传</span>
</div>
                    </td>
                    <td class="tdOperation">
                        <div class="dropdown">
                            <button class="stuInfor_moreActions btn btn-default dropdown-toggle" type="button" id="dropdown_cjl" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                更多
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdown_cjl">
                                <li class="caozuo_cjl"><a href="#">编辑</a></li>
                                <li class="caozuo_cjl" data-toggle="modal" data-target="#MyPhoto_xiu_cjl"><a class="out_cjl" href="#">修改</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">发布上传</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">预览</a></li>
                                <li class="caozuo_cjl"><a class="out_cjl" href="#">删除</a></li>
                            </ul>
                        </div>
                    </td>
            </tr>
            `)
                }
            }
        }

            // $("#Mycjl_photo_bianhao").val(""),
            // $("#Mycjl_photo_bianhao2").val(""),
            // $("#consignerRdSign").removeAttr("src"),
        $("#Mycjl_photo_bianhao").val(""),
            $("#Mycjl_photo_bianhao2").val(""),



        // 渲染页面有几个页面按钮



        $(".cjltianjia").html("")
        function pageBtn_cjl(element,arr){
            for (let i = 0; i<Math.ceil(arr.length/pageNum);i++)
                $(element).before(`
            <li id="btnlist_cjl" class="cjltianjia"><a href="#">${i+1}</a> </li>
        `)
        }


        $(document).ready(function () {
            pageContent_cjl("#mytable_cjl",0,Photo_cjl,true)
            pageBtn_cjl(".topCjl_li",Photo_cjl)
            $(".cjlul").on("click","#btnlist_cjl",function () {
                let page = $(this).text()
                page = (page-1)*pageNum
                pageContent_cjl("#mytable_cjl",page,Photo_cjl,false)
            })
        });

        // 页面数据有几条
        $(".imgtop_Gy_shuju").html("")

        $(".imgtop_Ss_shuju").append(`
      <span class="imgtop_Gy_shuju">${Photo_cjl.length}</span>
      `)
    })


    $(document).ready(function () {
        $("#fanhui_cjl").click(function () {
            $(location).attr("href","Photozhan_cjl.html")
        })
    })

    //删除数据
               //渲染出来的数据不能通过他渲染出来的父亲来进行选中删除，因为他父亲也是渲染出来的，渲染刷新便会失效
    $(document).ready(function () {
        $("#mytable_cjl").on("click",".caozuo_cjl:nth-child(5)",function () {
          let j =  $(this).parent().parent().parent().parent().children()[0].innerHTML
            console.log($(this).parent().parent().parent().parent().children()[0].innerHTML)
            for (let i=0;i<Photo_cjl.length;i++){
              console.log(j)
                if (Photo_cjl[i].photoName_cjl==j){
                  $(this).parent().parent().parent().parent().remove()
                    Photo_cjl.splice(i,1)
                    $("#mytable_cjl thead").children(8).html("")

                    $(".cjltianjia").html("")
                    function pageBtn_cjl(element,arr){
                        for (let i = 0; i<Math.ceil(arr.length/pageNum);i++)
                            $(element).before(`
            <li id="btnlist_cjl" class="cjltianjia"><a href="#">${i+1}</a> </li>
        `)
                    }

                    $(document).ready(function () {
                        pageContent_cjl("#mytable_cjl",0,Photo_cjl,true)
                        pageBtn_cjl(".topCjl_li",Photo_cjl)
                        $(".cjlul").on("click","#btnlist_cjl",function () {
                            let page = $(this).text()
                            page = (page-1)*pageNum
                            pageContent_cjl("#mytable_cjl",page,Photo_cjl,false)
                        })
                    });


                    $(".imgtop_Gy_shuju").html("")

                    $(".imgtop_Ss_shuju").append(`
      <span class="imgtop_Gy_shuju">${Photo_cjl.length}</span>
      `)
                }
            }
        })
    })


    //模糊查询
    // $("#photocjl_Ss").keyup(function () {
    //     var inputzhi_cjl = $.trim($("#photocjl_Ss").val())
    //
    // })


    $("#photocjl_Ss").on("focus",function () {
        var that = $(this);

        // $("#MyTbody_cjl").show();
        //输入实时查询事件，propertychange是IE的输入监听事件，input是其它浏览器

        $("#photocjl_Ss").on("input propertychange",function () {

            $("#MyTbody_cjl tr")
                .hide()
                .filter(":contains('" + that.val().toLocaleLowerCase() + "')")//小写
                .show()
        })

    })


    // $(document).ready(function () {
    //     $("#mytable_cjl").on("click", ".caozuo_cjl:nth-child(2)", function () {
    //         let j = $(this).parent().parent().parent().parent().parent().children()[0].innerHTML
    //         console.log($(this).parent().parent().parent().parent().parent().children()[0].innerHTML)

            // let ban = $(".Mycjl_addphoto option:selected").text()
            // console.log(ban)
            // let tujian = $(".Mycjl_addphoto1 option:selected").text()  //获取select的值
            // console.log(tujian)
            // let bian = $("#Mycjl_photo_bianhao4").val()
            // console.log(bian)
            // let jie = $("#Mycjl_photo_bianhao3").val() //获取input值
            // console.log(jie)
            //
            // let www = $(".nnter")[0].src
        // })
    // })




    // 模糊查询函数
    // duty_Stu:输入的学生信息
    // student：数据表
    // duty_class_html：输入的班级
    // function duty_indexSelect(duty_Stu,student,duty_class_html){
    //     const duty_arr = student.filter( res => {
    //         if(duty_class_html=="全部"||duty_class_html=="请选择班级"){
    //             return res.studentId.indexOf(duty_Stu) > -1 || res.studentName.indexOf(duty_Stu) > -1||res.studentAttend.indexOf(duty_Stu) > -1;
    //         }else{
    //             return res.studentGrade.indexOf(duty_class_html) > -1 && (res.studentId.indexOf(duty_Stu) > -1 || res.studentName.indexOf(duty_Stu) > -1||res.studentAttend.indexOf(duty_Stu) > -1);
    //         }
    //     })
    //     return duty_arr;








</script>
</body>
</html>