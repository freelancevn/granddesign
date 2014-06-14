<?php
class RecruitmentsController extends Zend_Controller_Action {

    public function indexAction(){
        include_once ('common/header.php');
        $recruitment = new Recruitment();
        $this->view->recruitmentlist = $recruitment->getAllVisibleRecruitment();
    }

    function detailAction(){
    	include_once ('common/header.php');
        $objRequest = $this->_request;
        $intRecruitmentId = $objRequest->getParam(Recruitment::ID, 0);
        $objRecruitment = new Recruitment();
        $arrDetail = $objRecruitment->getById($intRecruitmentId);
        $this->view->arrDetail = $arrDetail;
    }

}

?>