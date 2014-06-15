<?php
class ConfigsiteController extends AbstractController
{
	function indexAction()
	{
		$objRequest 		= $this->_request;
		$objConfig			= new Config();
		$sTitle				= $objRequest->getParam('txtTitle', '');
		$sAbout				= $objRequest->getParam('txtAbout', '');
		$sSlogan			= $objRequest->getParam('txtSlogan', '');
		$sKeywords			= $objRequest->getParam('txtKeywords', '');
		$sDes				= $objRequest->getParam('txtDes', '');
		if(trim($sTitle)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$sTitle), "key_config='".Config::TITLE."'");
			$objConfig->updateConfig(array('key_value'=>$sAbout), "key_config='".Config::ABOUT."'");
			$objConfig->updateConfig(array('key_value'=>$sKeywords), "key_config='".Config::KEYWORDS."'");
			$objConfig->updateConfig(array('key_value'=>$sDes), "key_config='".Config::DESCRIPTION."'");
			$objConfig->updateConfig(array('key_value'=>$sSlogan), "key_config='".Config::SLOGAN."'");
		}
		$arrTitle			= $objConfig->getConfig(Config::TITLE);
		$arrAbout			= $objConfig->getConfig(Config::ABOUT);
		$arrKeywords		= $objConfig->getConfig(Config::KEYWORDS);
		$arrDes				= $objConfig->getConfig(Config::DESCRIPTION);
		$arrSlogan          = $objConfig->getConfig(Config::SLOGAN);
		$this->view->arrTitle		= $arrTitle;
		$this->view->arrAbout		= $arrAbout;
		$this->view->arrKeywords	= $arrKeywords;
		$this->view->arrDes			= $arrDes;
		$this->view->arrSlogan		= $arrSlogan;
	}
}
?>