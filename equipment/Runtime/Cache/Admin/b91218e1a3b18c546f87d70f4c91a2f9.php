<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
  <head>
  	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>顺丰二维码运单系统后台</title>
    
    <link rel="stylesheet" href="/Public/e8admin/default/lib/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/Public/e8admin/default/lib/font-awesome/css/font-awesome.min.css">
 
    
    <link rel="stylesheet" href="/Public/e8admin/default/lib/zTree/css/zTreeStyle.css">
    
    <link rel="stylesheet" href="/Public/e8admin/default/css/common.css">
    <link rel="stylesheet" href="/Public/e8admin/default/css/e8.css">
      <style>
          .iframeS{
              width:1088px !important;
          }
      </style>
  </head>
  
  <body>
  	
    <div class="e8-navbar">
    	<div class="navbar-container">
        	<!--<div class="navbar-header pull-left">-->
                <!---->
            	<!--<a href="#" class="navbar-info color-white">-->
                     <!---->
				<!--<i class="icon-logo">-->
                    <!--顺丰二维码运单系统后台-->
                <!--</i>-->
				<!--</a>-->

            <!--</div>-->
            
            <div class="navbar-topmenu pull-left">
            	<ul class="list-inline topmenu">
            		<?php if(is_array($topMenuArr)): $i = 0; $__LIST__ = $topMenuArr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$topMenu): $mod = ($i % 2 );++$i; if($topMenu["id"] == $menuid): ?><li class="active"><a class="color-white" href="/admin.php/<?php echo ($topMenu["controller"]); ?>/<?php echo ($topMenu["action"]); ?>/<?php echo ($topMenu["parameter"]); ?>"><?php echo ($topMenu["name"]); ?></a></li>
            			<?php else: ?>
            				<li><a class="color-white" href="/admin.php/<?php echo ($topMenu["controller"]); ?>/<?php echo ($topMenu["action"]); ?>/<?php echo ($topMenu["parameter"]); ?>"><?php echo ($topMenu["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            
            <div class="navbar-user pull-right">
            	<ul class="list-inline usermenu">
                    <li class="user-info">
                    	<a data-toggle="dropdown" href="javascript:void(0);" class="dropdown-toggle">
                    	<img class="img-circle" src="<?php echo (C("UPLOAD_PATH")); echo ($user["photo"]); ?>" height="38" width="38" />
                            <span class="color-white">
                                <small>欢迎光临,</small>
                                <?php echo ($user["username"]); ?>
                            </span>
                        
                        <span class="caret color-white"></span>
                        </a>
                        
                        <ul class="pop-usermenu pull-right dropdown-yellow dropdown-menu">
                            <li><a href="/admin.php/Person/pwd" target="coniframe"><i class="fa fa-pencil fa-fw"></i> 修改密码</a></li>
                            <li class="divider"></li>
                            <li><a href="/admin.php/Public/logout"><i class="fa fa-sign-out fa-fw"></i> 退出登录</a></li>
						</ul>
                    </li>
                </ul>
            </div><!-- /.navbar-user -->
        </div><!-- /.navbar-container -->
    </div><!-- /.e8-navbar -->
    
    
    <div class="e8-container">
    	<div class="left-content pull-left">
    
            <ul class="nav nav-list e8-nav list-unstyled pull-left">
            	<?php if(is_array($childMenuArr)): $i = 0; $__LIST__ = $childMenuArr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$childMenu): $mod = ($i % 2 );++$i;?><li>
                        <?php if($childMenu["url"] != '#'): ?><a href="/admin.php/<?php echo ($childMenu["url"]); ?>" class="solid-line" target="coniframe">
                        <?php else: ?>
                            <a href="javascript:void(0);" class="solid-line"><?php endif; ?>
                                <i class="fa fa-circle-thin"></i>&nbsp;&nbsp;
                                <span class="menu-text"> <?php echo ($childMenu["name"]); ?> </span>
                            </a>
						

						<ul class="submenu list-unstyled">
						<?php if($childMenu["cmenu"] != 'null'): if(is_array($childMenu["cmenu"])): $i = 0; $__LIST__ = $childMenu["cmenu"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li class="dotted-line">
                                    <?php if($menu["type"] != 2): ?><a href="/admin.php/<?php echo ($menu["url"]); ?>" onclick="hideTree();" target="coniframe">
                                        <i class="fa fa-angle-double-right"></i>&nbsp;&nbsp;
                                        <?php echo ($menu["name"]); ?>
                                    </a>
                                    <?php else: ?>
                                    <a href="<?php echo ($menu["url"]); ?>">
                                        <i class="fa fa-angle-double-right"></i>&nbsp;&nbsp;
                                        <?php echo ($menu["name"]); ?>
                                    </a><?php endif; ?>
								</li><?php endforeach; endif; else: echo "" ;endif; endif; ?>
						</ul>
                	</li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul><!-- /.nav -->
            
            <div class="sidebar-collapse solid-line pull-left">
		    	<i class="fa fa-angle-double-left fa-lg color-gray" id="sidebar-collapse-btn"></i>
			</div>
            
        </div><!-- /.left-content -->
     	
        <div class="tree-content pull-left" id="tree-content">
        	<div class="tree-header pull-left">
            	<i class="fa fa-tree color-gray"></i>
                <span class="color-gray">列表视图</span>
                <button class="e8-btn pull-right" id="tree-close">
                	<i class="fa fa-times color-gray"></i>
                </button>
            </div>
            
            <div class="tree-pancel pull-left">
                <div class="">
                    <ul id="tree" class="ztree"></ul>
                </div>
            </div>
        </div>
        
        <iframe class="right-content pull-left iframeS" name="coniframe" frameborder="0" scrolling="auto"  src="/admin.php/asset/index"></iframe>

    </div><!-- /.container -->
    
    <!-- jQuery文件 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="/Public/e8admin/default/lib/bootstrap/bootstrap.min.js"></script>
    <!-- 树形列表支持库文件 -->
	<script type="text/javascript" src="/Public/e8admin/default/lib/zTree/js/jquery.ztree.core-3.5.js"></script>

    <!--  页面初始化js文件  -->
    <!-- 监听div 大小改变插件 -->
    <script src="/Public/e8admin/default/js/resize.js"></script>
    <script src="/Public/e8admin/default/js/fun.js"></script>
	<script src="/Public/e8admin/default/js/e8.js"></script>
    
    <script type="text/javascript">
        var APP = "/admin.php";
        var PUBLIC = "/Public";
	</script>
    
  </body>
</html>