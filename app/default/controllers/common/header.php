<?php
	$objCategory	= new Category();
	$arrMenu		= $objCategory->getAllCategory(0);
	$this->view->projectTypes	= $arrMenu;
	$arrMenu		= $objCategory->getAllCategory(1);
	$this->view->materialTypes	= $arrMenu;
	
	$objConfig		= new Config();
	$arrTemp		= $objConfig->getAllConfig();
	$arrConfig		= array();
	foreach($arrTemp as $rRows)
	{
		$arrConfig[$rRows['key_config']]	= $rRows['key_value'];
	}
	$this->view->arrConfigSite	= $arrConfig;
	
	$picture = new Picture();
	$this->view->headerPic = $picture->getHeaderPicture();
	
	$utils = new Utils();
	$this->view->utils = $utils;
?>