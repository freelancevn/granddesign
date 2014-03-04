<?php
class PicviewController extends Zend_Controller_Action
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
		$objPicture						= new Picture();
		if(count($objRequest->getParam('txtCheckBoxId',array())) >0 ){				
			$objPicture->deleteData($objRequest->getParam('txtCheckBoxId',array()));
		}
		$arrList						= $objPicture->getListPictureAdmin();
		$this->view->arrList			= $arrList;
	}
	
	function addAction()
	{
		$objRequest 		= $this->_request;
		$arrParam			= $objRequest->getParams();
		$objPicture			= new Picture();
		$strPathImage 		= 'index';
		$strUploadDir 	 	= ROOT_DIR . '/data/upload/' . $strPathImage;
		$arrResultUpload 	= NhutFunction::process($_FILES['fileImage'], $strUploadDir, 3*1024*1024);
		if ($arrResultUpload['error']==''){
			$arrParam['pimage']		= $strPathImage . '/' .  $arrResultUpload['filename'];
		} else {
				$arrParam['pimage']		= '';
		}
		$intPictureID = $objPicture->insertPicture($arrParam['pimage']);
		$this->_redirect(HOST_ADMIN.'/picview');
	}
}
?>