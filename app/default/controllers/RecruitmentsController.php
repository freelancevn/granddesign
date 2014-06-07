<?php
class RecruitmentsController extends Zend_Controller_Action {
    public function indexAction()
    {
    	include_once('common/header.php');
        $recruitment = new Recruitment();
        $this->view->recruitmentlist = $recruitment->getAllVisibleRecruitment();
    }

}

?>