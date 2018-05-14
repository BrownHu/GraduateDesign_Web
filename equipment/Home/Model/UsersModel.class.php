<?php
namespace Home\Model;
use Think\Model;

/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2016-08-18 11:17:00
 * @version $Id$
 */

class UsersModel extends Model {//用户模型

		public   function   login($map){
				$info=$this->where($map)->find()?true :false;
				return $info;
			}
        public  function  get(){
	   	echo "this is get method";
	   }
}

?>