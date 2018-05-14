<?php

	header( 'Content-Type:text/html; charset=utf-8' );
	define( 'THINK_PATH','./ThinkPHP/' );
	define( 'APP_DEBUG',true );
	define('BIND_MODULE', 'Admin');
	define( 'APP_PATH','./equipment/' );
	require "./ThinkPHP/ThinkPHP.php";
?>