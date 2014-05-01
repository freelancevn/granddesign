<?php
class PromotionController extends AbstractController{

    function indexAction(){
        $objRequest = $this->_request;
        $intPage = $objRequest->getParam('page', 1);
        $objPromotion = new Promotion();
        if (count($objRequest->getParam('txtCheckBoxId', array ())) > 0) {
            $objPromotion->delete($objRequest->getParam('txtCheckBoxId', array ()));
        }
        $intLimit = 10;
        $intTotal = 0;
        $intOffset = ($intPage - 1) * $intLimit;
        $arrList = $objPromotion->getListPromotionAdmin($intOffset, $intLimit);
        $this->view->arrList = $arrList ['result'];
        $this->view->intTotal = $arrList ['total'];
        $this->view->intLimit = $intLimit;
        $this->view->intOffset = $intOffset;
    }

    function dosaveAction(){
        $objRequest = $this->_request;
        $name = $objRequest->getParam('txt_name', "");
        $content = $objRequest->getParam('txt_content', "");
        $order = $objRequest->getParam('txt_sort', 1);
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objPromotion = new Promotion();
        $arrData = array (
                        'name' => $name,
                        'content' => $content,
                        'order' => $order,
                        'available' => $check 
        );
        $objPromotion->insert($arrData);
        $this->_redirect(HOST_ADMIN . '/promotion');
    }

    function editAction(){
        $objRequest = $this->_request;
        $intPromotionId = $objRequest->getParam('id', 0);
        $objPromotion = new Promotion();
        $arrDetail = $objPromotion->getById($intPromotionId);
        $this->view->arrDetail = $arrDetail;
    }

    function dosaveeditAction(){
        $objRequest = $this->_request;
        $id = $objRequest->getParam('txtId', 1);
        $name = $objRequest->getParam('txt_name', "");
        $content = $objRequest->getParam('txt_content', "");
        $order = $objRequest->getParam('txt_order', 1);
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objPromotion = new Promotion();
        $arrData = array (
                        'name' => $name,
                        'content' => $content,
                        'order' => $order,
                        'available' => $check 
        );
        $strWhere = 'id=' . $id;
        $objPromotion->update($arrData, $strWhere);
        $this->_redirect(HOST_ADMIN . '/promotion');
    }

}

?>