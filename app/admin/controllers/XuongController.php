<?php
class XuongController extends Zend_Controller_Action
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
		if(trim($arrDes)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="FACTORY"');
		}
		$arrDetail			= $objConfig->getConfig('FACTORY');
		$this->view->arrDetail		= $arrDetail;
	}
}
?>