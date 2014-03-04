<?php
class ShopController extends Zend_Controller_Action
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
		$objShop						= new Shop();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objShop->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$intLimit						= 10;
		$intTotal						= 0;
		$intOffset						= ($intPage - 1) * $intLimit;
		$arrList						= $objShop->getListProductAdmin($intOffset,$intLimit);
		$this->view->arrList			= $arrList['result'];
		$this->view->intTotal			= $arrList['total'];
		$this->view->intLimit			= $intLimit;
		$this->view->intOffset			= $intOffset;
	}
	
	function addAction()
	{
		$objCategory		= new Category();
		$arrCategory		= $objCategory->getAllCategory(1);
		$this->view->arrCategory	= $arrCategory;
	}
	
	function dosaveAction()
	{
		$objRequest 		= $this->_request;
		$iCategory			= $objRequest->getParam('cbo_Category', 1);
		$sName				= $objRequest->getParam('txtName', '');
		$sFeed				= $objRequest->getParam('txtInvestors', '');
		$sSize				= $objRequest->getParam('txtAddress', '');
		$sPrice				= $objRequest->getParam('txtUnbuilt_Area', '');
		$sDescription		= $objRequest->getParam('txt_description', '');
		$iShow				= $objRequest->getParam('chk_ishowhot', 0);
		$iSort				= $objRequest->getParam('txt_sort', 1);
		$arrInsert			= array('name'=>$sName, 'fk_category'=>$iCategory, 'feed'=>$sFeed, 'size'=>$sSize, 'price'=>$sPrice, 
							'description'=>$sDescription, 'showproduct'=>$iShow, 'sort'=>$iSort);
		for($i=1; $i<=3; $i++)
		{
			if(isset($_FILES['file_' . $i]['tmp_name']) && $_FILES['file_' . $i]['tmp_name'] !='')
			{
				$tempFile 	= $_FILES['file_' . $i]['tmp_name'];			
				$targetPath = $_SERVER['DOCUMENT_ROOT'] . '/data/upload/';
				$arrF 		= explode(".",$_FILES['file_' . $i]['name']);
				$sTime 		= mktime() + microtime();
				$sFileName	= $sTime . '.' . $arrF[count($arrF)-1];
				$targetFile = str_replace('//','/',$targetPath) . $sFileName;			
				move_uploaded_file($tempFile,$targetFile);
				$value 			= hash('crc32',$sTime);
				$firstDir 		= substr($value,6,2);
				$secondDir 		= substr($value,4,2);
				$strPathLarge	= $_SERVER['DOCUMENT_ROOT'] .  '/upload/shop/' . $firstDir . '/' . $secondDir . '/';			
				$strPathThumb	= $_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/shop/' . $firstDir . '/' . $secondDir . '/';
				NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload/shop/' . $firstDir . '/' );
				NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/shop/' . $firstDir . '/');
				NhutFunction::mkDirectory($strPathLarge);
				NhutFunction::mkDirectory($strPathThumb);
				$sFileName		= $value . '.' . strtolower($arrF[count($arrF)-1]);
				$sFileFull		= $strPathLarge . $sFileName;
				$sFileThumb		= $strPathThumb . $sFileName;
				copy($targetFile,$sFileFull);
				NhutFunction::createThumb($targetFile,$sFileThumb,200,200,100);	
				$strImages		= $firstDir . '/' . $secondDir . '/' . $sFileName;
				$arrInsert['img_' . $i]	= $strImages;
				@unlink($targetFile);
			}
		}
		$objShop	= new Shop();
		$objShop->insertShop($arrInsert);
		$this->_redirect(HOST_ADMIN.'/shop');
	}
	
	function editAction()
	{
		$objRequest 				= $this->_request;
		$iProduct					= $objRequest->getParam('id', 0);
		$objShop					= new Shop();
		$objCategory				= new Category();
		$arrCategory				= $objCategory->getAllCategory(1);
		$arrDetail					= $objShop->getShopAdmin($iProduct);
		$this->view->arrDetail		= $arrDetail;
		$this->view->arrCategory	= $arrCategory;
	}
	
	function dosaveeditAction()
	{
		$objRequest 		= $this->_request;
		$iCategory			= $objRequest->getParam('cbo_Category', 1);
		$sName				= $objRequest->getParam('txtName', '');
		$sFeed				= $objRequest->getParam('txtInvestors', '');
		$sSize				= $objRequest->getParam('txtAddress', '');
		$sPrice				= $objRequest->getParam('txtUnbuilt_Area', '');
		$sDescription		= $objRequest->getParam('txt_description', '');
		$iSort				= $objRequest->getParam('txt_sort', 1);
		$intID				= $objRequest->getParam('txtId', 0);
		$iShow				= $objRequest->getParam('chk_ishowhot', 0);
		if($intID>0)
		{
			$arrInsert			= array('name'=>$sName, 'fk_category'=>$iCategory, 'feed'=>$sFeed, 'size'=>$sSize, 'price'=>$sPrice, 
								'description'=>$sDescription, 'showproduct'=>$iShow, 'sort'=>$iSort);
			for($i=1; $i<=3; $i++)
			{
				if(isset($_FILES['file_' . $i]['tmp_name']) && $_FILES['file_' . $i]['tmp_name'] !='')
				{
					$tempFile 	= $_FILES['file_' . $i]['tmp_name'];			
					$targetPath = $_SERVER['DOCUMENT_ROOT'] . '/data/upload/';
					$arrF 		= explode(".",$_FILES['file_' . $i]['name']);
					$sTime 		= mktime() + microtime();
					$sFileName	= $sTime . '.' . $arrF[count($arrF)-1];
					$targetFile = str_replace('//','/',$targetPath) . $sFileName;			
					move_uploaded_file($tempFile,$targetFile);
					$value 			= hash('crc32',$sTime);
					$firstDir 		= substr($value,6,2);
					$secondDir 		= substr($value,4,2);
					$strPathLarge	= $_SERVER['DOCUMENT_ROOT'] .  '/upload/shop/' . $firstDir . '/' . $secondDir . '/';			
					$strPathThumb	= $_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/shop/' . $firstDir . '/' . $secondDir . '/';
					NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload/shop/' . $firstDir . '/' );
					NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/shop/' . $firstDir . '/');
					NhutFunction::mkDirectory($strPathLarge);
					NhutFunction::mkDirectory($strPathThumb);
					$sFileName		= $value . '.' . strtolower($arrF[count($arrF)-1]);
					$sFileFull		= $strPathLarge . $sFileName;
					$sFileThumb		= $strPathThumb . $sFileName;
					copy($targetFile,$sFileFull);
					NhutFunction::createThumb($targetFile,$sFileThumb,200,200,100);	
					$strImages		= $firstDir . '/' . $secondDir . '/' . $sFileName;
					$arrInsert['img_' . $i]	= $strImages;
					@unlink($targetFile);
				}
			}
			$objShop	= new Shop();
			$strWhere		= 'id=' . $intID;
			$objShop->updateShop($arrInsert, $strWhere);
		}
		$this->_redirect(HOST_ADMIN.'/shop');
	}

}
?>