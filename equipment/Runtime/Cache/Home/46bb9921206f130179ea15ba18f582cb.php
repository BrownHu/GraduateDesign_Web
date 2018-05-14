<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>顺丰-单运单生成</title>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
    <script>
    </script>
<link rel="stylesheet" href="/Public/CSS/common.css">
  
</head>
<body>
<div class="top_div">
<!--<img src="/Public/logo.png" class='logo'>-->
    <a href="<?php echo U('index/index');?>">
<img src="http://www.sf-express.com/resource/images/index/sf.png" class='logo'>
    </a>
    <div  class="for_admin">
    <a href="<?php echo U('ExcelAbout/index');?>"> 批量生成</a> &nbsp;&nbsp;&nbsp;
        当前用户: &nbsp;&nbsp;<?php echo ($cur_user); ?> &nbsp; &nbsp; &nbsp; <a href="<?php echo U('Login/log_off');?>">注销</a>
    </div>
</div>
<div style="width: 800px;height: 600px;margin: auto auto;padding-top: 40px;background: #ffffff;text-align: center;margin-top: -300px;border: 1px solid #e7e7e7;border-radius:10px">
    <div style="width: 165px;height: 96px;position: absolute">
        <div class="tou"></div>
        <div id="left_hand" class="initial_left_hand"></div>
        <div id="right_hand" class="initial_right_hand"></div>
    </div>
<form action=<?php echo U('Index/show_onpage');?> method="post" class="tmp">
    <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                    发件人姓名" name="senderName" >
    </p> 
    <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                       发件人手机号 " name="senderMobile" >
    </p>
     <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                    发出地" name="senderAddr" >
    </p>
    <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                    收件人姓名" name="recverName" >
    </p>
    <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                    收件人手机号" name="recverMobile" >
    </p>
    <p style="padding: 30px 0px 0px 0px;position: relative;">
        <span class="u_logo"></span>
        <input class="ipt" type="text" placeholder="                    收件人地址" name="recverAddr" >
    </p>

    <div style="height: 50px;line-height: 50px;margin-top: 30px;">
        <p style="margin: 0px 35px 20px 45px;">
           <span style="float: center">
              <input type="submit" style="background: #dc1e32;padding: 15px 8px;border-radius: 4px;border: 1px solid #dc1e32;color: #FFF;font-weight: bold;" value="生成二维码运单">
           </span>
        </p>
    </div>
    </form>
</div>

<div style="position: relative;margin: 20px 0;text-align: center;width: 100%;font-size: 18px;">
    <a style="margin-left: 10px;color: #dc1e32;" href="http://localhost:8888/admin.php/Login.html">顺丰二维码运单，拒绝隐私暴露！</a>
</div>
</body>
</html>