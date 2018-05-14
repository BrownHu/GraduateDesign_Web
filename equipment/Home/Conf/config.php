<?php
return array(
	//'配置项'=>'配置值'
'TMPL_FILE_DEPR'=>'_' ,
'TMPL_PARSE_STRING'  =>array(
     // '__PUBLIC__' => '/Common', // 更改默认的/Public 替换规则
     // '__JS__'     => '/Public/JS/', // 增加新的JS类库路径替换规则
     '__IMAGE__' => __ROOT__.'/images/', // 增加新的上传路径替换规则
	'__ALONE__'=>__IMAGE__.'/alone/',
	)

);