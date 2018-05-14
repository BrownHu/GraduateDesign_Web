<?php
	namespace Home\Controller;
	header('Content-type:text/html;charset=utf-8');
	use Think\Controller;
	class LoginController extends Controller{
		public function login(){//电脑端登录
			if (IS_POST) {
				$map['user_name']=I('name');
				$map['user_pass']=I('pass','','md5');
				$temp=D('Users','Model');
				$info=$temp->login($map);
				if ($info) {
					F('log_sta',1);
					$nick=$this->get_user_nickname(I('name'));
					F('cur_user',$nick);
					$this->success("login in",'../index/index');
				}else $this->error('sorry for login fail');
			}else

			$this->display();
		}
		public function  web_login(){
			if (IS_POST) {
				$map['user_name']=I('name');
				$map['user_pass']=I('pass','','md5');
				$temp=D('users','Model');
				$info=$temp->login($temp);
				if ($info) {
					F('log_sta',1);
					$nick=$this->get_user_nickname(I('name'));
					F('cur_user',$nick);

				}
				# code...
			}
		}
		public function login_onandroid(){//安卓端登录
				$map['user_name']=I('name');
				$map['user_pass']=I('pass','','md5');
				$temp=D('Users','Model');
				$info=$temp->login($map);
				if ($info) {
					$fuck=D('users')->where($map)->find();
					$this->ajaxReturn($fuck);
				} $this->ajaxReturn(array('tip'=>false));
  		}
		public function  log_off(){//注销
			F('log_sta',null);
			F('cur_user',null);
			$this->success('status changes','../Index/index');
			// $this->redirect('Index/index');
		}
		public function  get_user_nickname($temp){//获取用户昵称
		 return D('Users')->where("user_name='$temp'")->getfield('user_nick') ;
		}
	}

 ?>