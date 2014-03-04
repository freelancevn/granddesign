<?php
	$objCategory	= new Category();
	$arrMenu		= $objCategory->getAllCategory(0);
	$this->view->arrMenu	= $arrMenu;
	$objConfig		= new Config();
	$arrTemp		= $objConfig->getAllConfig();
	$arrConfig		= array();
	foreach($arrTemp as $rRows)
	{
		$arrConfig[$rRows['key_config']]	= $rRows['key_value'];
	}
	$this->view->arrConfigSite	= $arrConfig;
?>