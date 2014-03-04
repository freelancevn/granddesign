<?php
class ConfigsiteController extends Zend_Controller_Action
{
	public function init()
    {
		$objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
		$AppUI		= $objStorage->read();
		if(!($AppUI->id>0)){
			$this->_redirect(HOST_ADMIN.'/user/login');
		}
		$this->view->AppUI	= $AppUI;

    }
	
	function indexAction()
	{
		$objRequest 		= $this->_request;
		$objConfig			= new Config();
		$sTitle				= $objRequest->getParam('txtTitle', '');
		$sKeywords			= $objRequest->getParam('txtKeywords', '');
		$sDes				= $objRequest->getParam('txtDes', '');
		if(trim($sTitle)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$sTitle), 'key_config="TITLE"');
			$objConfig->updateConfig(array('key_value'=>$sKeywords), 'key_config="KEYWORDS"');
			$objConfig->updateConfig(array('key_value'=>$sDes), 'key_config="DESCRIPTION"');
		}
		$arrTitle			= $objConfig->getConfig('TITLE');
		$arrKeywords		= $objConfig->getConfig('KEYWORDS');
		$arrDes				= $objConfig->getConfig('DESCRIPTION');
		$this->view->arrTitle		= $arrTitle;
		$this->view->arrKeywords	= $arrKeywords;
		$this->view->arrDes			= $arrDes;
	}
}
?>