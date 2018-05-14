<?php
return array(
	//'配置项'=>'配置值'

	//上传路径
	'UPLOAD_PATH' => __ROOT__.'/Public/e8admin/upload/',
	//权限SESSION名称
	'PERM_SESSION_NAME' => 'perm',

    'TMPL_PARSE_STRING'  =>array(
        '__IMAGE__' => __ROOT__.'/images/', // 增加新的上传路径替换规则
    )

);