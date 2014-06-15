<?php
class AboutController extends AbstractController
{
	
	function indexAction()
	{
		$objRequest 		= $this->_request;
		$objConfig			= new Config();
		$arrDes				= $objRequest->getParam('txt_description', '');
		if(trim($arrDes)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="ABOUT"');
		}
		$arrDetail			= $objConfig->getConfig('ABOUT');
		$this->view->arrDetail		= $arrDetail;
	}
}
?>