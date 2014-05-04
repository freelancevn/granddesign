<?php
class FengshuiController extends AbstractController{

    function indexAction(){
        $objRequest = $this->_request;
        $intPage = $objRequest->getParam('page', 1);
        $objFengshui = new Fengshui();
        if (count($objRequest->getParam('txtCheckBoxId', array ())) > 0) {
            $objFengshui->delete($objRequest->getParam('txtCheckBoxId', array ()));
        }
        $intLimit = 10;
        $intTotal = 0;
        $intOffset = ($intPage - 1) * $intLimit;
        $arrList = $objFengshui->getListFengshuiAdmin($intOffset, $intLimit);
        $this->view->arrList = $arrList ['result'];
        $this->view->intTotal = $arrList ['total'];
        $this->view->intLimit = $intLimit;
        $this->view->intOffset = $intOffset;
    }

    function dosaveAction(){
        $objRequest = $this->_request;
        $title = $objRequest->getParam('txt_title', "");
        $summary = $objRequest->getParam('txt_summary', "");
        $content = $objRequest->getParam('txt_content', "");
        $creationDate = $objRequest->getParam('txt_creationDate', null);
        if ($creationDate == null) {
            $now = new DateTime();
            $creationDate = $now->format('Y-m-d H:i:s');
        }
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objFengshui = new Fengshui();
        $arrData = array (
                        'title' => $title,
                        'summary' => $summary,
                        'content' => $content,
                        'creationDate' => $creationDate,
                        'visible' => $check 
        );
        $objFengshui->insert($arrData);
        $this->_redirect(HOST_ADMIN . '/fengshui');
    }

    function editAction(){
        $objRequest = $this->_request;
        $intNewsId = $objRequest->getParam('id', 0);
        $objFengshui = new Fengshui();
        $arrDetail = $objFengshui->getById($intNewsId);
        $this->view->arrDetail = $arrDetail;
    }

    function dosaveeditAction(){
        $objRequest = $this->_request;
        $id = $objRequest->getParam('txtId', 1);
        $title = $objRequest->getParam('txt_title', "");
        $summary = $objRequest->getParam('txt_summary', "");
        $content = $objRequest->getParam('txt_content', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $now = new DateTime();
        $creationDate = $now->format('Y-m-d H:i:s');
        $objFengshui = new Fengshui();
        $arrData = array (
                        'title' => $title,
                        'summary' => $summary,
                        'content' => $content,
                        'creationDate' => $creationDate,
                        'visible' => $check 
        );
        $strWhere = 'id=' . $id;
        $objFengshui->update($arrData, $strWhere);
        $this->_redirect(HOST_ADMIN . '/fengshui');
    }

}

?>