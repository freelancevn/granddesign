<?php	
	ini_set('session.auto_start', true);
	ini_set('display_errors', 1);
	ini_set("default_charset", "utf8");
	ini_set('memory_limit', '-1');	
	error_reporting(E_ALL);	
	date_default_timezone_set('Asia/Saigon');
	header ("Content-Type: text/html; charset=utf-8");
	header ("Expires: Mon, 26 Jul 2009 05:00:00 GMT");
	header ("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	header ("Cache-Control: no-cache, must-revalidate, no-store, post-check=0, pre-check=0");
	header ("Pragma: no-cache");
	ob_start();
	require_once 'Mobile_Detect.php';
	$detect = new Mobile_Detect;
	$deviceType = ($detect->isMobile() ? ($detect->isTablet() ? 'tablet' : 'phone') : 'computer');
	if($deviceType!='computer')
	{	
		header( 'Location: http://m.granddesign.com.vn' ) ;
		exit();
	}
	require_once 'base.php';
	require_once ROOT_DIR . '/globals.php';
	require_once ROOT_DIR . '/bootstrap.php';
	$strHostName	= isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : '';
	$arrInfo		= explode('/', $strHostName);
	$strSiteName	= (isset($arrInfo[1]) && strtolower(trim($arrInfo[1]))=='admin') ? 'admin' : 'default';
	define('SITE_NAME', $strSiteName);
	$objBootstrap = new Bootstrap();
	$objBootstrap->runApp();
	ob_end_flush();	
?>