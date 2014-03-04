<?php
class ContactController extends Zend_Controller_Action
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
		$sLink				= $objRequest->getParam('txt_linkgoogle', '');
		$sLink2				= $objRequest->getParam('txt_linkgoogle2', '');
		if(trim($arrDes)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="CONTACTHCM"');
			$objConfig->updateConfig(array('key_value'=>$arrDes2), 'key_config="CONTACTHANOI"');
			$objConfig->updateConfig(array('key_value'=>$sLink), 'key_config="CONTACTHCMLINK"');
			$objConfig->updateConfig(array('key_value'=>$sLink2), 'key_config="CONTACTHANOILINK"');
		}
		$arrDetail			= $objConfig->getConfig('CONTACTHCM');
		$arrDetail2			= $objConfig->getConfig('CONTACTHANOI');
		$arrLink			= $objConfig->getConfig('CONTACTHCMLINK');
		$arrLink2			= $objConfig->getConfig('CONTACTHANOILINK');
		$this->view->arrDetail		= $arrDetail;
		$this->view->arrDetail2		= $arrDetail2;
		$this->view->arrLink		= $arrLink;
		$this->view->arrLink2		= $arrLink2;
	}
}
?>