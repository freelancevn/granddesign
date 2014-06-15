<?php
class ProductController extends Zend_Controller_Action
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
		$objProduct						= new Product();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objProduct->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objProduct->getListProductAdmin($intOffset,$intLimit);
		$this->view->arrList			= $arrList['result'];
		$this->view->intTotal			= $arrList['total'];
		$this->view->intLimit			= $intLimit;
		$this->view->intOffset			= $intOffset;
	}
	
	function addAction()
	{
		$objCategory		= new Category();
		$arrCategory		= $objCategory->getAllCategory(0);
		$this->view->arrCategory	= $arrCategory;
	}
	
	function dosaveAction()
	{
		$objRequest 		= $this->_request;
		$iCategory			= $objRequest->getParam('cbo_Category', 1);
		$sName				= $objRequest->getParam('txtName', '');
		$sInvestors			= $objRequest->getParam('txtInvestors', '');
		$sAddress			= $objRequest->getParam('txtAddress', '');
		$sUnbuilt_Area		= $objRequest->getParam('txtUnbuilt_Area', '');
		$sTime_Finish		= $objRequest->getParam('txtTime_Finish', '');
		$sContent			= $objRequest->getParam('txtContent', '');
		$sIntroduce			= $objRequest->getParam('txtIntroduce', '');
		$iSort				= $objRequest->getParam('txt_sort', 1);
		if($sName!='')
		{
			$objProduct			= new Product();
			$arrData			= array('fk_category'=>$iCategory, 'product_name'=>$sName, 'investors'=>$sInvestors, 'address'=>$sAddress, 
			'unbuilt_area'=>$sUnbuilt_Area, 'time_finish'=>$sTime_Finish, 'introduce'=>$sIntroduce, 'content'=>$sContent, 'sort'=>$iSort, 'date_create'=>date('Y-m-d H:i:s'));
			$objProduct->insertProduct($arrData);
		}		
		$this->_redirect(HOST_ADMIN.'/product');
	}
	
	function editAction()
	{
		$objRequest 				= $this->_request;
		$iProduct					= $objRequest->getParam('id', 0);
		$objProduct					= new Product();
		$objCategory				= new Category();
		$arrCategory				= $objCategory->getAllCategory(0);
		$arrDetail					= $objProduct->getProductAdmin($iProduct);
		$this->view->arrDetail		= $arrDetail;
		$this->view->arrCategory	= $arrCategory;
	}
	
	function dosaveeditAction()
	{
		$objRequest = $this->_request;
		$iCategory = $objRequest->getParam ( 'cbo_Category', 1 );
		$sName = $objRequest->getParam ( 'txtName', '' );
		$sInvestors = $objRequest->getParam ( 'txtInvestors', '' );
		$sAddress = $objRequest->getParam ( 'txtAddress', '' );
		$sUnbuilt_Area = $objRequest->getParam ( 'txtUnbuilt_Area', '' );
		$sTime_Finish = $objRequest->getParam ( 'txtTime_Finish', '' );
		$sContent = $objRequest->getParam ( 'txtContent', '' );
		$sIntroduce = $objRequest->getParam ( 'txtIntroduce', '' );
		$iSort = $objRequest->getParam ( 'txt_sort', 1 );
		$intID = $objRequest->getParam ( 'txtId', 0 );
		$view_count = $objRequest->getParam ( 'txt_viewCount', 0 );
		if($intID>0)
		{
			$objProduct		= new Product();
			$arrData		= array('fk_category'=>$iCategory, 'product_name'=>$sName, 'investors'=>$sInvestors, 'address'=>$sAddress, 
			'unbuilt_area'=>$sUnbuilt_Area, 'time_finish'=>$sTime_Finish, 'introduce'=>$sIntroduce, 'content'=>$sContent, 'sort'=>$iSort, 'view_count'=>$view_count);
			$strWhere		= 'id=' . $intID;
			$objProduct->updateProduct($arrData, $strWhere);
		}
		$this->_redirect(HOST_ADMIN.'/product');
	}
	
	function imagesAction()
	{
		$objRequest = $this->_request;
		$intID = $objRequest->getParam('id', 0);
		$objProduct	= new Product();
		$checkSave = $objRequest->getParam('btnLuu');
		$checkDelete = $objRequest->getParam('btDelete');
		$arrImages		= $objProduct->getProductImagesAdmin($intID);		
		$arrDetail		= $objProduct->getProductAdmin($intID);
		$checkedItems = count($objRequest->getParam('txtCheckBoxId',array()));
		if (isset($checkSave) && $checkedItems > 0)
		{
			foreach($arrImages as $rRow){
				$sContent	= $objRequest->getParam('txtContent_' . $rRow['id'],'');
				$sType		= $objRequest->getParam('txtType_' . $rRow['id'],0);
				$arrData	= array('description'=>$sContent,'type'=>$sType);
				$objProduct->updateProductImages($arrData, $rRow['id']);
			}
			$arrImages	= $objProduct->getProductImagesAdmin($intID);
			$arrDetail		= $objProduct->getProductAdmin($intID);
		}
		if( isset($checkDelete) && $checkedItems > 0 )
		{
			$objProduct->deleteDataProductImages($objRequest->getParam('txtCheckBoxId',array()));
			$arrImages		= $objProduct->getProductImagesAdmin($intID);
			$arrDetail		= $objProduct->getProductAdmin($intID);
		}		
		$this->view->arrDetail	= $arrDetail;
		$this->view->arrImages	= $arrImages;
	}
	
	
}
?>