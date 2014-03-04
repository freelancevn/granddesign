<?php
class ServiceController extends Zend_Controller_Action
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
		$objRequest 					= $this->_request;
		$intPage						= $objRequest->getParam('page', 1);
		$objService						= new Service();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objService->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objService->getListServiceAdmin($intOffset,$intLimit);
		$this->view->arrList			= $arrList['result'];
		$this->view->intTotal			= $arrList['total'];
		$this->view->intLimit			= $intLimit;
		$this->view->intOffset			= $intOffset;
	}
	
	function addAction()
	{
	}
	
	function dosaveAction()
	{
		$objRequest 		= $this->_request;
		$sName				= $objRequest->getParam('txtName', '');
		$sShort_Des			= $objRequest->getParam('txt_short_desc', '');
		$sDes				= $objRequest->getParam('txt_description', '');
		$iSort				= $objRequest->getParam('txt_sort', 1);
		if($sName!='')
		{
			$objService			= new Service();
			$arrData			= array('name'=>$sName, 'sortcontent'=>$sShort_Des, 'description'=>$sDes, 'sort'=>$iSort, 'date_create'=>date('Y-m-d H:i:s'));
			$objService->insertService($arrData);
		}		
		$this->_redirect(HOST_ADMIN.'/service');
	}
	
	function editAction()
	{
		$objRequest 				= $this->_request;
		$iService					= $objRequest->getParam('id', 0);
		$objService					= new Service();
		$arrDetail					= $objService->getServiceAdmin($iService);
		$this->view->arrDetail		= $arrDetail;
	}
	
	function dosaveeditAction()
	{
		$objRequest 		= $this->_request;
		$sName				= $objRequest->getParam('txtName', '');
		$sShort_Des			= $objRequest->getParam('txt_short_desc', '');
		$sDes				= $objRequest->getParam('txt_description', '');
		$iSort				= $objRequest->getParam('txt_sort', 1);
		$intID				= $objRequest->getParam('txtId', 0);
		if($intID>0)
		{
			$objService		= new Service();
			$arrData			= array('name'=>$sName, 'sortcontent'=>$sShort_Des, 'description'=>$sDes, 'sort'=>$iSort);
			$strWhere		= 'id=' . $intID;
			$objService->updateService($arrData, $strWhere);
		}
		$this->_redirect(HOST_ADMIN.'/service');
	}
		
}
?>