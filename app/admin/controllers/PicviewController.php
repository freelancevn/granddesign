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
		$inputParam			= $objRequest->getParams();
		$objPicture			= new Picture();
		$strPathImage 		= 'index';
		$strUploadDir 	 	= ROOT_DIR . '/data/upload/' . $strPathImage;
		$arrResultUpload 	= NhutFunction::process($_FILES['imgname'], $strUploadDir, 3*1024*1024);
		$arrParam = array();
		if ($arrResultUpload['error']==''){
			$arrParam['imgname'] =  $strPathImage . '/' .  $arrResultUpload['filename'];
		} else {
				$arrParam['imgname'] = '';
		}
		$arrParam['date_create'] = date("Y-m-d H:i:s");
		$arrParam['link'] = $inputParam['link'];
		$arrParam['description'] = $inputParam['description'];
		$arrParam['type'] = $inputParam['type'];
		$arrParam['visible'] = isset($inputParam['visible']);
		$intPictureID = $objPicture->insertPicture($arrParam);
		$this->_redirect(HOST_ADMIN.'/picview');
	}
}
?>