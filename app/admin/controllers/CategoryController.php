<?php
class CategoryController extends Zend_Controller_Action
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
		$objCategory					= new Category();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objCategory->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objCategory->getListCategoryAdmin($intOffset,$intLimit);
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
		$iType				= $objRequest->getParam('cbo_type', 0);
		$sName				= $objRequest->getParam('txtName', 1);
		$iSort				= $objRequest->getParam('txt_sort', 1);
		$iCateShop			= $objRequest->getParam('cbo_type_shop', 0);
		$objCategory		= new Category();
		$arrData			= array('category_name'=>$sName, 'type'=>$iType, 'cate_shop'=>$iCateShop,'sort'=>$iSort,'date_create'=>date('Y-m-d H:i:s'));
		$objCategory->insertCategory($arrData);
		$this->_redirect(HOST_ADMIN.'/category');
	}
	
	function editAction()
	{
		$objRequest 					= $this->_request;
		$intCategoryID					= $objRequest->getParam('id', 0);
		$objCategory					= new Category();
		$arrDetail						= $objCategory->getCategoryAdmin($intCategoryID);
		$this->view->arrDetail			= $arrDetail;
	}
	
	function dosaveeditAction()
	{
		$objRequest 	= $this->_request;
		$iType			= $objRequest->getParam('cbo_type', 0);
		$sName			= $objRequest->getParam('txtName', 1);
		$iSort			= $objRequest->getParam('txt_sort', 1);
		$intID			= $objRequest->getParam('txtId', 1);
		$iCateShop		= $objRequest->getParam('cbo_type_shop', 0);
		$objCategory	= new Category();
		$arrData		= array('category_name'=>$sName, 'type'=>$iType,'cate_shop'=>$iCateShop,'sort'=>$iSort,'date_create'=>date('Y-m-d H:i:s'));
		$strWhere		= 'id=' . $intID;
		$intCategoryID = $objCategory->updateCategory($arrData, $strWhere);
		$this->_redirect(HOST_ADMIN.'/category');
	}

}
?>