<?php

class PromotionController extends Zend_Controller_Action {

	public function init() {
		$objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
		$AppUI		= $objStorage->read();
		if(!($AppUI->id>0)){
			$this->_redirect(HOST_ADMIN.'/user/login');
		}
		$this->view->AppUI	= $AppUI;
	
	}
	
	function indexAction()
	{
		$objRequest 					= $this->_request;
		$intPage						= $objRequest->getParam('page', 1);
		$objPromotion					= new Promotion();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){
			$objPromotion->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objPromotion->getListPromotionAdmin($intOffset,$intLimit);
		$this->view->arrList			= $arrList['result'];
		$this->view->intTotal			= $arrList['total'];
		$this->view->intLimit			= $intLimit;
		$this->view->intOffset			= $intOffset;
	}
	
	function addAction()
	{
	}
	
	function dosaveAction() {
		$objRequest 		= $this->_request;
		$name				= $objRequest->getParam('txt_name', "");
		$content			= $objRequest->getParam('txt_content', "");
		$order			    = $objRequest->getParam('txt_sort', 1);
		$ava                = $objRequest->getParam('checkAvailable', null);
		$check = 0;
		if ($ava != null) {
			$check = 1;
		}
		$objPromotion		= new Promotion();
		$arrData			= array('name'=>$name, 'content'=>$content, 'order'=>$order, 'available'=>$check);
		$objPromotion->insertPromotion($arrData);
		$this->_redirect(HOST_ADMIN.'/Promotion');
	}
}

?>