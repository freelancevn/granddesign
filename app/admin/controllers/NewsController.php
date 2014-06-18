<?php
class NewsController extends AbstractController {

    function indexAction(){
        $objRequest = $this->_request;
        $intPage = $objRequest->getParam('page', 1);
        $objNews = new News();
        if (count($objRequest->getParam('txtCheckBoxId', array ())) > 0) {
            $objNews->delete($objRequest->getParam('txtCheckBoxId', array ()));
        }
        $intLimit = 10;
        $intTotal = 0;
        $intOffset = ($intPage - 1) * $intLimit;
        $arrList = $objNews->getListNewsAdmin($intOffset, $intLimit);
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
        $img = $objRequest->getParam('txt_image',"");
        $view_count = $objRequest->getParam('txt_view_count', "");
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
        $type=$objRequest->getParam('type', 1);
        $objNews = new News();
        $arrData = array (
                        'title' => $title,
                        'newstype' => $type,
                        'summary' => $summary,
                        'content' => $content,
                        'creationDate' => $creationDate,
                        'visible' => $check,
        				'image' =>$img,
        				'view_count' => $view_count
        );
        $objNews->insert($arrData);
        $this->_redirect(HOST_ADMIN . '/news');
    }

    function editAction(){
        $objRequest = $this->_request;
        $intNewsId = $objRequest->getParam('id', 0);
        $objNews = new News();
        $arrDetail = $objNews->getById($intNewsId);
        $this->view->arrDetail = $arrDetail;
    }

    function dosaveeditAction(){
        $objRequest = $this->_request;
        $id = $objRequest->getParam('txtId', 1);
        $title = $objRequest->getParam('txt_title', "");
        $type = $objRequest->getParam('type', 1);
        $summary = $objRequest->getParam('txt_summary', "");
        $image = $objRequest->getParam('txt_image', "");
        $content = $objRequest->getParam('txt_content', "");
        $view_count = $objRequest->getParam('txt_view_count', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $now = new DateTime();
        $creationDate = $now->format('Y-m-d H:i:s');
        $objNews = new News();
        $arrData = array (
                        'title' => $title,
                        'newstype' => $type,
                        'summary' => $summary,
                        'content' => $content,
                        'creationDate' => $creationDate,
        				'image' => $image,
                        'visible' => $check,
        				'view_count' => $view_count
        );
        $strWhere = 'id=' . $id;
        $objNews->update($arrData, $strWhere);
        $this->_redirect(HOST_ADMIN . '/news');
    }

}
?>