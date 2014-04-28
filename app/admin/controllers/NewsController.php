<?php
class NewsController extends Zend_Controller_Action
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
	
	function indexAction() {
		$objRequest = $this->_request;
		$intPage = $objRequest->getParam ( 'page', 1 );
		$objNews = new News ();
		if (count ( $objRequest->getParam ( 'txtCheckBoxId', array () ) ) > 0) {
			$objNews->deleteData ( $objRequest->getParam ( 'txtCheckBoxId', array () ) );
		}
		$intLimit = 10;
		$intTotal = 0;
		$intOffset = ($intPage - 1) * $intLimit;
		$arrList = $objNews->getListNewsAdmin ( $intOffset, $intLimit );
		$this->view->arrList = $arrList ['result'];
		$this->view->intTotal = $arrList ['total'];
		$this->view->intLimit = $intLimit;
		$this->view->intOffset = $intOffset;
	}
	
	public function addAction()
	{
	}
	
	function dosaveAction() {
		$objRequest = $this->_request;
		$title = $objRequest->getParam ( 'txt_title', "" );
		$summary = $objRequest->getParam ( 'txt_summary', "" );
		$content = $objRequest->getParam ( 'txt_content', "" );
		$creationDate = $objRequest->getParam ( 'txt_creationDate', null);
		if ($creationDate == null) {
			$now = new DateTime();
			$creationDate = $now->format('Y-m-d H:i:s');
		}
		$ava = $objRequest->getParam ( 'checkAvailable', null );
		$check = 0;
		if ($ava != null) {
			$check = 1;
		}
		$objNews = new News ();
		$arrData = array (
				'title' => $title,
				'summary' => $summary,
				'content' => $content,
				'creationDate' => $creationDate,
				'visible' => $check
		);
		$objNews->insertNews ( $arrData );
		$this->_redirect ( HOST_ADMIN . '/news' );
	}
	
	function editAction() {
		$objRequest = $this->_request;
		$intNewsId = $objRequest->getParam ( 'id', 0 );
		$objNews = new News ();
		$arrDetail = $objNews->getNewsAdmin ( $intNewsId );
		$this->view->arrDetail = $arrDetail;
	}
	
	function dosaveeditAction() {
		$objRequest = $this->_request;
		$id = $objRequest->getParam ( 'txtId', 1 );
		$title = $objRequest->getParam ( 'txt_title', "" );
		$summary = $objRequest->getParam ( 'txt_summary', "" );
		$content = $objRequest->getParam ( 'txt_content', "" );
		$ava = $objRequest->getParam ( 'checkAvailable', null );
		$check = 0;
		if ($ava != null) {
			$check = 1;
		}
		$now = new DateTime();
		$creationDate = $now->format('Y-m-d H:i:s');
		$objNews = new News();
		$arrData = array (
				'title' => $title,
				'summary' => $summary,
				'content' => $content,
				'creationDate' => $creationDate,
				'visible' => $check
		);
		$strWhere = 'id=' . $id;
		$objNews->updateNews ( $arrData, $strWhere );
		$this->_redirect ( HOST_ADMIN . '/news' );
	}
}
?>