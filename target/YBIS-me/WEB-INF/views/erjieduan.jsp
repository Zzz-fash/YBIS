<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--设置mata标签-->
    <!--强制设置ie浏览器使用edge模式-->
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--缩放按照1:1缩放-->
    <meta name="viewport" content="width=device-width,initial-scale=1">
     <title>Title</title>
    <link rel="stylesheet" href="../../static/lib/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../static/css/ml.css">
    <link rel="stylesheet" href="../../static/css/lyz.calendar.css">

</head>
<body>
<div class="container-fluid stuInfor_content">
  <div class="row" >
    <div class="col-lg-12">
      <div class="row">
        <div class="col-lg-2"></div>
        <div class="stuInfor_searchBar col-lg-8">
          <input type="text" class="stuInfor_inputText bjgl_ss" placeholder="输入班级名或班主任名">
          <button type="submit" class="stuInfor_search btn btn-success iradius"><i>&#xe609;</i> 搜索班级</button>
        </div>
        <div class="col-lg-2"></div>
      </div>
      <div class="row">
        <div class="col-lg-2">
          <a href="#" data-toggle="modal" data-target="#bjgl_mtk" id="bjgl_a_1" ><span>&#xe605;</span>添加班级</a>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 bjgl_xianshi">
          <table class="table table-hover  table-striped table-condensed bjgl_table">
            <thead>
            <tr>

            </tr>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
      </div>
      <!-- 显示页数 -->
      <div class=" row bjgl_ys">
        <ul class="col-md-offset-8  bjgl_ul" >
          <li id="bjgl_ul_li">
            <a href="#">上一页</a>
          </li>
          <li id="bjgl_anniu">

          </li>
          <li class="bjgl_ul_li" id="bjgl_ul_li_1">
            <a href="#">下一页</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="modal fade in" tabindex="-1" role="dialog" id="bjgl_mtk">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="确认">
          <span aria-hidden="true">&times;</span>
        </button>
        <div class="row">
          <h4 class="bjgl_h4">需要添加的班级信息:</h4>
        </div>
        <div class="row tjdiv_1">
          <div  class=" col-md-12">
            <label for="bjgl_label" class="col-md-2">班级名:</label>
            <input id="bjgl_label" class="bjgl_input_2 col-md-3">
            <label for="bjgl_label2" class="label_2 col-md-2">班主任:</label>
            <input id="bjgl_label2" class="bjgl_input_2 col-md-3">
          </div>
        </div>
        <div class="row tjdiv_2">
          <div  class=" col-lg-12 col-md-12">
            <label for="bjgl_label3" class="label_1 col-md-3">班级类型:</label>
            <input id="bjgl_label3" class="bjgl_input col-md-3">
            <label for="bjgl_label4" class="label_2 col-md-3">班级人数:</label>
            <input id="bjgl_label4" class="bjgl_input col-md-3">
          </div>
        </div>
        <div class="row tjdiv_1">
          <div class="col-lg-12 col-md-12">
            <button  type="button" class="btn btn-default bjgl_qx" data-dismiss="modal">
              取消
            </button>
            <button type="button" class="col-lg-offset-9 btn btn-default" data-dismiss="modal" id="bjgl_btn" >
              确定
            </button>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

<div class="modal fade in" tabindex="-1" role="dialog" id="bjgl_bianji">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="确认">
          <span aria-hidden="true">&times;</span>
        </button>
        <div class="container-fluid">
          <div class="row">
            <h4 class="bjgl_h4">班级信息编辑处:</h4>
          </div>
          <div class="row tjdiv_1">
            <div  class=" col-md-12">
              <label for="bjgl_label_1" class="col-md-2">班级名:</label>
              <input id="bjgl_label_1" class="bjgl_input_2 col-md-3">
              <label for="bjgl_label2_1" class="label_2 col-md-2">班主任:</label>
              <input id="bjgl_label2_1" class="bjgl_input_2 col-md-3">
            </div>
          </div>
          <div class="row tjdiv_2">
            <div  class=" col-lg-12 col-md-12">
              <label for="bjgl_label3_1" class="label_1 col-md-3">班级类型:</label>
              <input id="bjgl_label3_1" class="bjgl_input col-md-3">
              <label for="bjgl_label4_1" class="label_2 col-md-3">班级人数:</label>
              <input id="bjgl_label4_1" class="bjgl_input col-md-3">
            </div>
          </div>
          <div class="row tjdiv_1">
            <div class="col-lg-12 col-md-12">
              <button  type="button" class="btn btn-default bjgl_qx" data-dismiss="modal">
                取消
              </button>
              <button type="button" class="col-lg-offset-9 btn btn-default" data-dismiss="modal" id="bjgl_btn_2" >
                确定
              </button>
            </div>
          </div>
        </div>

        </div>

    </div>
  </div>
</div>

<div class="modal fade in" tabindex="-1" role="dialog" id="bjgl_bianjick">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="确认">
          <span aria-hidden="true" id="bjgl_X">&times;</span>
        </button>
        <div class="row">
          <h4 class="bjgl_h4">班级信息:</h4>
        </div>
        <div class="row tjdiv_3 ">

        </div>
        <div class="row tjdiv_2">
          <button  type="button" class="btn btn-default bjgl_qx" data-dismiss="modal" id="bjgl_qx">
            取消
          </button>
          <button type="button" class="col-lg-offset-9 btn btn-default" data-dismiss="modal" id="bjgl_btn_1" >
            确定
          </button>
        </div>
      </div>

    </div>
  </div>
</div>

<script src="../../static/lib/bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
<script src="../../static/lib/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
<script src="../../static/js/DATE_index.js"></script>
<script src="../../static/js/lyz.calendar.min.js"></script>
<script src="../../static/js/ml.js"></script>
</body>
</html>
