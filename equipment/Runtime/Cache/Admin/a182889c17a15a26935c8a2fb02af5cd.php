<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E8CMS管理系统</title>
<link type="text/css" href="/Public/e8admin/default/css/login.css" rel="stylesheet" />
<link type="text/css" href="/Public/e8admin/default/css/login-com.css" rel="stylesheet" />
</head>

<body>

	<div class="login">
    	<div class="l-info">
            <p style="font-size: 20px;font-weight: bold;">
                顺丰二维码快递管理后台<br>
            </p>
            <p style="font-size: 16px;padding: 10px 0 10px 80px;">
                --做你的信息保卫者<br>
            </p>

        </div>
        
        <form action="/admin.php/Login/login" method="post">
        <div class="l-form">
        	<p>
            	<label>账&emsp;号：</label>
                <input type="text" name="username" />
            </p>
            <p>
            	<label for="password">密&emsp;码：</label>
                <input type="password" name="password" />
            </p>
            <p>
            	<label>验证码：</label>
                <input id="yzm" maxlength="4" name="verify" type="text" />
                <img id="verifyCode" src="/admin.php/Login/createVerify" onclick="this.src='/admin.php/Login/createVerify?time=<?php echo time();?>'" />
            </p>
            <p>
            	<input type="submit" value="提交" />
                <a href="/admin.php/Findpassword/index" class="a-1">忘记密码</a>
            </p>
        </div>
        </form>
        <div class="clearL h1"></div>
    </div>

    <div style="position: fixed;bottom:120px;text-align: center;width: 100%;font-size: 18px;">
        <a style="margin-left: 10px;" href="http://localhost:8888/index.php">顺丰二维码运单，拒绝隐私暴露！</a>
    </div>

</body>
</html>