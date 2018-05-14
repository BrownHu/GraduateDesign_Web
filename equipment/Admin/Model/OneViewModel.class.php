<?php 
namespace Admin\Model;
use Think\Model\ViewModel;
class OneViewModel extends ViewModel{
	 protected $trueTableName = 'leepet_assets';
    protected $dbName = 'temp';
	public $viewFields = array(
     'assets'=>array('id','asset_code','add_time','user_id','qr_path'),
     'branch'=>array('branch_name' ,'_on'=>'branch.branch_id=assets.user_part_id'),
     'staff'=>array('user_name','_on'=>'assets.user_id=staff.user_id'),
   );
}

 ?>