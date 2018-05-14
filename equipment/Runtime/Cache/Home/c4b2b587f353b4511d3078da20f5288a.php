<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>顺丰二维码运单系统</title>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
    <link rel="stylesheet" href="/Public/CSS/common.css">
</head>
<body>
<div class="top_div"><img src="http://www.sf-express.com/resource/images/index/sf.png" class='logo'></div>
<div style="width: 800px;height: 340px;margin: auto auto;padding-top: 40px;background: #ffffff;text-align: center;margin-top: -200px;border: 1px solid #e7e7e7;border-radius:10px">
 <div class='wel' ><span>登录到顺丰二维码运单系统</span></div>
<form action="<?php echo U('login/login');?>" method="post">
    <p style="padding: 30px 0px 10px 0px;position: relative;margin-bottom: 20px;">
        <span class="u_logo"></span>
        <input class="ipt" type="text"   name="name" placeholder="管理员账号" />
    </p>
    <p style="position: relative;">
        <span class="p_logo"></span>
        <input  class="ipt" type="password"  name="pass"  placeholder="管理员密码">
    </p>

    <div style="height: 50px;line-height: 50px;margin-top: 30px">
        <p style="margin: 0px 35px 20px 45px;">
           <span style="">
               <input type="submit" style="width: 200px;height: 45px;background: #dc1e32;padding: 7px 10px;border-radius: 4px;border: 1px solid #dc1e32;color: #FFF;font-weight: bold;" value="登录" />
           </span>
        </p>
    </div>
</form>
</div>
<div style="position: fixed;right: 10px;bottom: 10px;text-align: right;width: 100%;">
    <img src="/Public/download.png" alt="扫我下载" width='120px'>
</div>
</body>
</html>