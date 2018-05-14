<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>二维码记录页</title>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="/Public/e8admin/default/lib/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="/Public/e8admin/default/lib/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/Public/e8admin/default/lib/jquery-confirm/jquery.confirm.css">

<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- e8 style -->
<link rel="stylesheet" href="/Public/e8admin/default/css/common.css">
<link rel="stylesheet" href="/Public/e8admin/default/css/main.css">

</head>

<body>

    <div class="topbar">

        <!-- 面包屑 -->
        

        <div class="topbar-search">
            <form class="form-inline" role="form">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                    <input type="email" class="form-control  input-sm"
                        id="exampleInputEmail2" placeholder="Enter email"> <i
                        class="fa fa-search color-gray"></i>
                </div>
            </form>
        </div>
    </div>
    <!-- /.topbar -->

    <div class="page-content">

        <div class="page-header col-sm-12">
            <h1>运单记录管理</h1>
        </div>

        <div class="col-sm-12">
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#">记录管理</a></li>
                </ul>

                <div class="tab-content">                        
                    <div class="tab-pane in active">
                        <p class="title background-blue"><?php echo ($name); ?></p>

                        <form action="/admin.php/Comment/index" method="post">
                            <table class="table table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>发件人</th>
                                    <th>发件手机</th>
                                    <th>始发地址</th>
                                    <th>收件人</th>
                                    <th>收件手机</th>
                                    <th>收件地址</th>
                                    <th>处理时间</th>
                                    <th>操作</th>

                                </tr>
                                <?php if(is_array($expressList)): foreach($expressList as $key=>$comment): ?><tr>
                                    <td><?php echo ($comment["id"]); ?></td>
                                    <td><?php echo ($comment["sendername"]); ?></td>
                                    <td><?php echo ($comment["sendermobile"]); ?></td>
                                    <td><?php echo ($comment["senderaddr"]); ?></td>
                                    <td><?php echo ($comment["recvername"]); ?></td>
                                    <td><?php echo ($comment["recvermobile"]); ?></td>
                                    <td><?php echo ($comment["recveraddr"]); ?></td>
                                    <td><?php echo (date("Y-m-d H:s:i",$comment["opunix"])); ?></td>
                                    <td class="align-center">
                                        <a href="/admin.php/asset/show/id/<?php echo ($comment["id"]); ?>">查看</a>|&nbsp;
                                        <a href="javascript:void(0);" onclick="return confirm('/admin.php/asset/del/id/<?php echo ($comment["id"]); ?>','确定删除?');">删除</a>
                                    </td>
                                </tr><?php endforeach; endif; ?>
                            </table>
                        </form>
                    </div>
                    <div class="pageBar"><?php echo ($page); ?></div>
                </div>
            </div>
        </div>
        <!-- /span -->

    </div>
    <!-- /.page-content -->

    <!-- 图片弹出层 -->
    <div id="outerdiv"
        style="position: fixed; top: 0; left: 0; background: rgba(0, 0, 0, 0.7); z-index: 10000; width: 100%; height: 100%; display: none;">
        <div id="innerdiv" style="position: absolute;">
            <img id="bigimg" style="border: 5px solid #fff;" src="" />
        </div>
    </div>

    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/Public/e8admin/default/lib/bootstrap/bootstrap.min.js"></script>
    <script src="/Public/e8admin/default/lib/jquery-confirm/jquery.confirm.js"></script>
    <!--  -->
    <script src="/Public/e8admin/default/js/fun.js"></script>
    <script src="/Public/e8admin/default/js/e8.js"></script>

    <script>
    function showphoto(obj){
        var _obj = obj;
        var _this = $("#"+_obj);
        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
    }
    </script>

</body>
</html>