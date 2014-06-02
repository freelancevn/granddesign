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
		$objRequest = $this->_request;
		$objPicture = new Picture();
		$update = $objRequest->getParam("btUpdate");
		$delete = $objRequest->getParam("btDelete");
		$isUpdateAction = isset($update);
		$isDeleteAction = isset($delete);
		if ($isUpdateAction) {
			$selectedIds = $objRequest->getParam('id',array());
			if( count($selectedIds) > 0 ){
				$links = $objRequest->getParam("link", array());
				$descriptions = $objRequest->getParam("description", array());
				$visibles = $objRequest->getParam("visible", array());
				$types = $objRequest->getParam("type", array());
				$allId = $objRequest->getParam("all_id", array());
				
				for($i = 0; $i < count ( $allId ); $i ++) {
					$id = $allId[$i];
					$whereClause = '`id`=' . $id;
					if (in_array($id, $selectedIds)) {
						$updateData = array(
							'link' => $links[$i],
							'description' => $descriptions[$i],
							'visible' => $visibles[$i],
							'type' => $types[$i]
						);
						$objPicture->updatePicture($updateData, $whereClause);
					}
				}
			}
		} else if ($isDeleteAction) {
			if(count($objRequest->getParam('id',array())) > 0 ){				
				$objPicture->deleteData($objRequest->getParam('id',array()));
			}
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