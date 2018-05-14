<?php
namespace Home\Controller;
use Think\Controller;
class QrcodeController  extends Controller {
    function  CreateForExcel($temp){//生成
        $value=$temp["senderName"]."|".$temp["senderMobile"]."|".$temp["senderAddr"]."|".$temp["recverName"]."|".$temp["recverMobile"]."|".$temp["recverAddr"];
        $Index=new IndexController();
        $value=$Index->pubRsaEncrypt($value);

        vendor("phpqrcode.phpqrcode");
				// 纠错级别：L、M、Q、H
            $level = 'L';
            // 点的大小：1到10,用于手机端4就可以了
            $size = 4;
            $path ="./images/";
            // 生成的文件名
            $filename=time()+rand(0,10000000).'.png';
            $url = $path.$filename;

            \QRcode::png($value,$url, $level, $size);//生成
              // \QRcode::png($data, false, $level, $size);//显示 
          	return $url;
    }
   public function testself(){//测试  
   	$arr=array('hubing','youyou');
   	$hello=$this->get_mes_by_code($arr);	
   	var_dump($hello);
	   }
     public function add_event(){//添加维护记录
          $map['manage_id']=I('mid');
          $map['event']=I('event');
          $map['asset_id']=$this->return_aid(I('code'));
          if (null!==$map) {
           $info= D('events')->add($map);
            $tip=$info?true:false;
            $this->ajaxReturn($tip);
          }else $this->ajaxReturn(false);
     }
     public function get_event(){
          $map['asset_id']=$this->return_aid(I('code'));
          $info=D('events')->where($map)->select();
          $this->ajaxReturn($info);
     }
     public function return_aid($temp){
        $get=D('assets')->where("asset_code='$temp'")->select();
        return  $get[0]['id'];
     }
    
}