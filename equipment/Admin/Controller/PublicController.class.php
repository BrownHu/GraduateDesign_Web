<?php
//+---------------------------------
//| E8网络工作室 http:www.e8net.cn
//+---------------------------------
//| 公共控制器
//+---------------------------------
//| Author: webdd <2014/8/27>
//+---------------------------------

namespace Admin\Controller;
use Think\Controller;

class PublicController extends Controller {

	//用户退出
	public function logout() {
		//清空用户个人信息session
		session ($this->user['sessionName'],null);
		//清空权限session
		session (C('PERM_SESSION_NAME'),null);
		$url = __APP__ .'/Login';
		echo "<script>window.history.forward(1); top.location.href='" . $url . "';</script>";
	}

}