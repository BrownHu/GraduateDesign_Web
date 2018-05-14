<?php
namespace Admin\Controller;
use  Think\Controller;
/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2016-08-19 10:08:44
 * @version $Id$
 */
class AssetController extends BaseController {
    public function index(){
    $res=D('express')->select();
   	$this->assign('expressList',$res);
    	$this->display();
    }
    public function del(){
    	$temp=D('express');
    	$map['id']=I('id');
    	$content=$temp->where($map)->getfield('qr_path');
    	$mess=unlink($content);
    	$info=$temp->where($map)->delete();
    	if ($info&&$mess) {
    		$this->success('删除成功');
    	}else $this->error('删除失败，请重试');
    }
    public function  show(){
    	$map['id']=I('id');
    	$res=D('express')->where($map)->select();
    	$tmp=explode("/",$res[0]["qr_path"]);
    	$this->assign('message',$tmp[2]);
    	$this->display();
    }
    public function welcome(){
    	echo md5('admin');die();
    	$this->display();
    }
}