<?php
class InfoController extends Zend_Controller_Action
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
		$objInfo						= new Info();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objInfo->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objInfo->getListAdmin($intOffset,$intLimit);
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
		$iType				= $objRequest->getParam('cboType', 0);
		$stxtPosition		= $objRequest->getParam('txtPosition', '');
		$iSort				= $objRequest->getParam('txt_sort', 1);
		$arrInsert			= array('name'=>$sName, 'postion'=>$stxtPosition, 'type'=>$iType, 'sort'=>$iSort);
		if(isset($_FILES['file']['tmp_name']) && $_FILES['file']['tmp_name'] !='')
		{
			$tempFile 	= $_FILES['file']['tmp_name'];			
			$targetPath = $_SERVER['DOCUMENT_ROOT'] . '/data/user/';
			$arrF 		= explode(".",$_FILES['file']['name']);
			$sTime 		= mktime() + microtime();
			$sFileName	= $sTime . '.' . $arrF[count($arrF)-1];
			$targetFile = str_replace('//','/',$targetPath) . $sFileName;			
			move_uploaded_file($tempFile,$targetFile);
			$arrInsert['image']	= $sFileName;
		}
		$objInfo	= new Info();
		$objInfo->insertInfo($arrInsert);
		$this->_redirect(HOST_ADMIN.'/info');
	}
}
?>