<?php
class ClipsController extends AbstractController {

    function indexAction(){
        $objRequest = $this->_request;
        $intPage = $objRequest->getParam('page', 1);
        $objClips = new Clips();
        if (count($objRequest->getParam('txtCheckBoxId', array ())) > 0) {
            $objClips->delete($objRequest->getParam('txtCheckBoxId', array ()));
        }
        $intLimit = 10;
        $intTotal = 0;
        $intOffset = ($intPage - 1) * $intLimit;
        $arrList = $objClips->getListClipsAdmin($intOffset, $intLimit);
        $this->view->arrList = $arrList ['result'];
        $this->view->intTotal = $arrList ['total'];
        $this->view->intLimit = $intLimit;
        $this->view->intOffset = $intOffset;
    }
    
    function dosaveAction(){
        $objRequest = $this->_request;
        $description = $objRequest->getParam('txt_description', "");
        $embed = $objRequest->getParam('txt_embed', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objClips = new Clips();
        $arrData = array (
                        'description' => $description,
                        'embed' => $embed,
                        'visible' => $check
        );
        $objClips->insert($arrData);
        $this->_redirect(HOST_ADMIN . '/clips');
    }
    
    function editAction(){
        $objRequest = $this->_request;
        $intClipsId = $objRequest->getParam('id', 0);
        $objClips = new Clips();
        $arrDetail = $objClips->getById($intClipsId);
        $this->view->arrDetail = $arrDetail;
    }
    
    function dosaveeditAction(){
        $objRequest = $this->_request;
        $id = $objRequest->getParam('txtId', 1);
        $description = $objRequest->getParam('txt_description', "");
        $embed = $objRequest->getParam('txt_embed', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objClips = new Clips();
        $arrData = array (
                        'description' => $description,
                        'embed' => $embed,
                        'visible' => $check
        );
        $strWhere = 'id=' . $id;
        $objClips->update($arrData, $strWhere);
        $this->_redirect(HOST_ADMIN . '/clips');
    }
}

?>