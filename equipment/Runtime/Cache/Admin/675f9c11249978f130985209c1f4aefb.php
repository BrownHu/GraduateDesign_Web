<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/Public/CSS/buttons.css">
    <link rel="stylesheet" href="/Public/CSS/common.css">
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>

</head>
<body>
<div   id="for_print"  style="position: absolute;top: 10%;left: 37%;">
    <img src="/images/<?php echo ($message); ?>" alt="test_for_single"  class="image_once" style="width: 350px;">
</div></div>
<div class="for_print_once" style=";left: 49%;">
<a href="javascript:printHTML('#for_print')" target="_self" class="button button-glow button-rounded button-raised button-primary" style="" >打印</a>

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


</body>
</html>