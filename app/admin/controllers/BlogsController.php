<?php
class BlogsController extends AbstractController {

    function indexAction(){
        $objRequest = $this->_request;
        $intPage = $objRequest->getParam('page', 1);
        $objBlogs = new Blogs();
        if (count($objRequest->getParam('txtCheckBoxId', array ())) > 0) {
            $objBlogs->delete($objRequest->getParam('txtCheckBoxId', array ()));
        }
        $intLimit = 10;
        $intTotal = 0;
        $intOffset = ($intPage - 1) * $intLimit;
        $arrList = $objBlogs->getListBlogsAdmin($intOffset, $intLimit);
        $this->view->arrList = $arrList ['result'];
        $this->view->intTotal = $arrList ['total'];
        $this->view->intLimit = $intLimit;
        $this->view->intOffset = $intOffset;
    }

    function dosaveAction(){
        $objRequest = $this->_request;
        $description = $objRequest->getParam('txt_description', "");
        $link = $objRequest->getParam('txt_link', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objBlogs = new Blogs();
        $arrData = array (
                        'description' => $description,
                        'link' => $link,
                        'visible' => $check 
        );
        $objBlogs->insert($arrData);
        $this->_redirect(HOST_ADMIN . '/blogs');
    }

    function editAction(){
        $objRequest = $this->_request;
        $intNewsId = $objRequest->getParam('id', 0);
        $objBlogs = new Blogs();
        $arrDetail = $objBlogs->getById($intNewsId);
        $this->view->arrDetail = $arrDetail;
    }

    function dosaveeditAction(){
        $objRequest = $this->_request;
        $id = $objRequest->getParam('txtId', 1);
        $description = $objRequest->getParam('txt_description', "");
        $link = $objRequest->getParam('txt_link', "");
        $ava = $objRequest->getParam('checkAvailable', null);
        $check = 0;
        if ($ava != null) {
            $check = 1;
        }
        $objBlogs = new Blogs();
        $arrData = array (
                        'description' => $description,
                        'link' => $link,
                        'visible' => $check 
        );
        $strWhere = 'id=' . $id;
        $objBlogs->update($arrData, $strWhere);
        $this->_redirect(HOST_ADMIN . '/blogs');
    }

}

?>