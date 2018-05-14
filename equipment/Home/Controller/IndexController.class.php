<?php
namespace Home\Controller;
use Think\Controller;
header('Content-type:text/html;charset=utf-8');
class IndexController extends Controller {

    public  function  index(){//前端首页
        if (F('log_sta')) {
            $this->assign('cur_user',F('cur_user'));
            $this->display();
        }else
        $this->redirect('login/login');
    	
    }
    public function  weget()
{
  $this->display('system:success');
}
public function show_onpage(){//show 页面
    $data="";
  $map=I('post.');

    foreach ($map as $key => $value){
        $map[$key]=trim($value);
        $data.=trim($value)."|";
    }
  $map['opunix']=time();
  vendor("phpqrcode.phpqrcode");

            if ($data=="") {
            	echo "没有任何输入，请重新尝试";
            }else{
                $data=rtrim($data,"|");
            // 纠错级别：L、M、Q、H
            $level = 'L';
            // 点的大小：1到10,用于手机端4就可以了
            $size =10;
            $path ="./images/";
            // 生成的文件名
            $filename=time().'.png';
            $url = $path.$filename;
            $map['qr_path']=$url;
            D('express')->add($map);
            \QRcode::png($this->pubRsaEncrypt($data),$url, $level, $size);
              // \QRcode::png($data, false, $level, $size);
            $this->assign('qw_info',"发往[".$map['recverAddr']."]的二维快递码已生成入库");
            $this->assign("url",$filename);
            $this->display();
            }
    }
   
   public function get_weather(){//api测试
   	vendor("juhe.weather");
   	$key="5f6ae82ac31370570703ed2b62040d41";
   	$weather=new \weather($key);
   	$forecastResult = $weather->getForecast("苏州");//
if($forecastResult['error_code'] == 0){    //以下可根据实际业务需求，自行改写
    //////////////////////////////////////////////////////////////////////
    $data = $forecastResult['result'];
    foreach($data as $key => $d){
        echo "日期：".$d['date']." (".$d['sh']."点-".$d['eh']."点)  ".$d['weather']." ".$d['temp1']."~".$d["temp2"]."<br>";
    }
}else{    //以下可根据实际业务需求，自行改写
    //////////////////////////////////////////////////////////////////////
    echo $forecastResult['error_code'].":".$forecastResult['reason'];
}
   }


       public function draw(){//库测试
  vendor("phpqrcode.phpqrcode");
            $data = I("data");
            // 纠错级别：L、M、Q、H
            $level = 'L';
            // 点的大小：1到10,用于手机端4就可以了
            $size = 10;
            \QRcode::png($data, false, $level, $size);       
    }


    public function pubRsaEncrypt($data){
        $key='-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuvWBug0eiNMdO+ko2Fk0bp572
3e52VtU6pXha+aEQ7f7XNjntL2kdtXaQ1zzL9LowpfSUm2/nJ1knTKORhxxvFtvc
GaP7orP9T2EyFW3jLjNam5iTXooyKPxV88OXi5y+EY2iGEXifyhTLA76dXygrXMT
FnO+katy6Z3NDX5LRQIDAQAB
-----END PUBLIC KEY-----
';
        openssl_public_encrypt($data, $crypted, $key);


        return base64_encode($crypted);
    }


}