<?php
namespace Home\Controller;
header('Content-type:text/html;charset=utf-8');
use Think\Controller;
use Think\Upload;
/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2016-08-04 10:46:04
 * @version $Id$
 */

class ExcelAboutController extends  Controller{

	function index(){
		$this->display();
	}

  	function  in_operate(){//excel导入主控制器
  			$qr=new QrcodeController();
	  		$temp_as=D('express');
  		   $info=D()->query("describe leepet_express");
        foreach ($info as  $value) {
            $fi[]=$value['field'];
        }

        unset($fi[0],$fi[8]);
        $fi=array_values($fi);

    	$config = array(
    'maxSize'    =>    3145728,
    'rootPath'   =>    './public/',
    'savePath'   =>    '',
    'saveName'   =>    array('uniqid',''),
    // 'exts'       =>    array('jpg'),
    'autoSub'    =>    true,
    'subName'    =>    array('date','Ymd'),
);
$up= new Upload($config);
$mes=$up->upload();
foreach ($mes as  $value) {
    $filetmpname = './public/'
    .$value['savepath'].$value['savename'];
        Vendor('Classes.PHPExcel');
        $objPHPExcel = \PHPExcel_IOFactory::load($filetmpname);	
        $arrExcel = $objPHPExcel->getSheet(0)->toArray();
}
unset($arrExcel[0]);
        $arrExcel=array_values($arrExcel);

//生成二维码
$interrupt=false;

foreach ($arrExcel as $key => $value) {
    unset($value[7]);
    $map=array_combine($fi,$value);
    $map["qr_path"]=$qr->CreateForExcel($map);
    $info=$temp_as->add($map);
    $interrupt=$info ? true:false;
    if ($interrupt){
        break;
    }
}

if ($interrupt) {
    $this->success("批量导入成功...3秒返回");
}else $this->error('请检查你的EXCE文件格式是否正确,错误代码1041...');
}

}