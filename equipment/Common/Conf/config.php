<?php
return array(
	//'配置项'=>'配置值'

	// 设置禁止访问的模块列表
	'MODULE_DENY_LIST'      =>  array('Common','Runtime','Api'),
	// 更改默认的模型层名称为Logic
	'DEFAULT_M_LAYER'       =>  'Logic', 
	//定义扩展类库命名空间
	'AUTOLOAD_NAMESPACE' => array(    'Libs' => APP_PATH.'Libs' ),

	// 数据库相关配置
	'DB_CHARSET' => 'utf8', // 数据库字符编码
	'DB_TYPE' => 'mysql', // 数据库类型
	// 'DB_HOST' => '115.28.59.1', // 主机名称
	'DB_HOST'=>'localhost',
	'DB_NAME' => 'temp', // 数据库名称
	'DB_USER' => 'root', // 数据库管理员密码员用户名
	// 'DB_PWD'=>'hubing520',
	'DB_PWD' => 'hubing', // 数据库管理员密码
    'DB_PORT'=> 8889,
	'DB_PREFIX' => 'leepet_', // 数据库前缀，
    'RSA_PUB_KEY'=>'-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuvWBug0eiNMdO+ko2Fk0bp572
3e52VtU6pXha+aEQ7f7XNjntL2kdtXaQ1zzL9LowpfSUm2/nJ1knTKORhxxvFtvc
GaP7orP9T2EyFW3jLjNam5iTXooyKPxV88OXi5y+EY2iGEXifyhTLA76dXygrXMT
FnO+katy6Z3NDX5LRQIDAQAB
-----END PUBLIC KEY-----
',
		
	// 'TOKEN_ON' => False, // 是否开启令牌验证 默认关闭
	// 'TOKEN_NAME' => '__hash__', // 令牌验证的表单隐藏字段名称，默认为__hash__
	// 'TOKEN_TYPE' => 'md5', // 令牌哈希验证规则 默认为MD5
	// 'URL_HTML_SUFFIX' => 'htm|html|shtml|xml'  // 配置网站伪静态后缀 为空支持所有后缀
	
);

