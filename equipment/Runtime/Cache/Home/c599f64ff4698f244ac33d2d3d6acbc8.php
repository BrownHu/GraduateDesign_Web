<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>顺丰二维码运单系统</title>
    <link rel="stylesheet" href="/Public/CSS/buttons.css">
    <link rel="stylesheet" href="/Public/CSS/common.css">
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>

  
</head>
<body>
<div  class="for_admin">
     <a href="<?php echo U('ExcelAbout/index');?>"> 批量导入</a>
       
    </div>
<div class="for_tips"> 单号为:&nbsp;<?php echo ($qw_info); ?>&nbsp;的运单已生成并更新物流状态为已创单入库</div>

<div class="top_div">
    <a href="<?php echo U('index/index');?>">
        <img src="http://www.sf-express.com/resource/images/index/sf.png" class='logo'>
    </a>
    <div class="for_single"  id="for_print">
            <img src="/images/<?php echo ($url); ?>" alt="test_for_single">
</div></div>
<div class="home_for_print_once">
 <!-- <div   id="div2"><img src="/images/<?php echo ($url); ?>" id="src_deal"></div> -->
<a href="javascript:printHTML('#for_print')" target="_self" class="button button-glow button-rounded button-raised" style="background: #dc1e32;color: #fff;" >快递打印粘附</a>

<script language="javascript">
function printHTML(page)
{
var bodyHTML=window.document.body.innerHTML;
window.document.body.innerHTML=$(page).html();
window.print();
window.document.body.innerHTML=bodyHTML;
}
</script>

</div>

<div style="position:fixed; bottom: 20px ;text-align: center;width: 100%;font-size: 18px;">
    <a style="margin-left: 10px;color: #dc1e32;" href="http://localhost:8888/admin.php/Login.html">顺丰二维码运单，拒绝隐私暴露！</a>
</div>
</body>
</html>