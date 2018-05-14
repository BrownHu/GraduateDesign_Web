<?php
namespace Home\Controller;
use Think\Controller;
header('Content-type:text/html;charset=utf-8');

/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2016-07-21 09:46:11
 * @version $Id$
 */

class UserController extends Controller {

    function add(){//add user
        if (IS_POST) {
        	$arr=I('post.');   
        	$info=D('users')->add($arr);
        	if ($info) {
        		$this->success('操作成功',U('Index/index'),3);
        	}else $this->error("操作失败，返回重试");
        }else
        $this->display();

    }
   public function get_phpass(){//test for pass
            // var_dump(hash_algos());
            // die();
            $res=hash("md5",false,"hubing");
            var_dump($res);
            die();
            //引入类库
            vendor("Classes.Phpass");
        // 生成密码
            $password = "hubing";
            $hasher = new \PasswordHash(8, TRUE);
            $phpassword = $hasher->HashPassword($password);
            // $phpassword="$B0ad1VIY2k9JgPW8cMAbjgfJjxtfnT1";
            echo "生成的密码为:".$phpassword;
            echo "\n";

        //验证密码
            $data = $hasher->CheckPassword($password,"$P$BHSoulb83fK1FriDDfKhDzuKHFErxe0");
            if($data){
                echo '密码正确';
            }else{
                echo '密码错误';
            }
   }
   public function  showme(){
    $this->display();
   }

}