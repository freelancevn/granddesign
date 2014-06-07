<?php
class RecruitmentsController extends Zend_Controller_Action {
    public function indexAction()
    {
        $recruitment = new Recruitment();
        $this->view->recruitmentlist = $recruitment->getAllVisibleRecruitment();
    }

    public function recruitmentsAction()
    {
        $recruitment = new Recruitment();
        $this->view->recruitmentlist = $recruitment->getAllVisibleRecruitment();
    }
}

?>