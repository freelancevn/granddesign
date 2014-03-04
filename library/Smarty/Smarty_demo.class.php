<?php
// load Smarty library
require('Smarty.class.php');
/**
* The setup.php file is a good place to load required application library files, and you can do that right here.
* Type : class <br>
* Name : Smarty_Demo <br>
* Date : Sep 26, 2007 <br>
* @author Minh Thong 
*/
class smarty_Demo extends Smarty {
	function smarty_Demo()
	{
		// Class Constructor.
		// These automatically get set with each new instance.
		$this->Smarty();
		$this->template_dir = '/home/httpd/vhosts/timnhanh/httpdocs/r_d/modules/ex_smarty/demo/templates/';
		$this->compile_dir = '/home/httpd/vhosts/timnhanh/httpdocs/r_d/modules/ex_smarty/demo/templates_c/';
		$this->config_dir = '/home/httpd/vhosts/timnhanh/httpdocs/r_d/modules/ex_smarty/demo/configs/';
		$this->cache_dir = '/home/httpd/vhosts/timnhanh/httpdocs/r_d/modules/ex_smarty/demo/cache/';
		$this->caching = true;
		$this->assign('app_name', 'Guest Book');
	}
}
?>