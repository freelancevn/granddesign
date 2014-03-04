<?php
class FooterController extends Zend_Controller_Action
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
		$arrDes				= $objRequest->getParam('txt_description', '');
		$arrDes2			= $objRequest->getParam('txt_description2', '');
		if(trim($arrDes)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="FOOTERHCM"');
			$objConfig->updateConfig(array('key_value'=>$arrDes2), 'key_config="FOOTERHANOI"');
		}
		$arrDetail			= $objConfig->getConfig('FOOTERHCM');
		$arrDetail2			= $objConfig->getConfig('FOOTERHANOI');
		$this->view->arrDetail		= $arrDetail;
		$this->view->arrDetail2		= $arrDetail2;
	}
}
?>