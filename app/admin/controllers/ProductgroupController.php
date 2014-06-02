<?php
class ProductgroupController extends Zend_Controller_Action {

    public function init(){
        $objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
        $AppUI = $objStorage->read();
        if (! ($AppUI->id > 0)) {
            $this->_redirect(HOST_ADMIN . '/user/login');
        }
        $this->view->AppUI = $AppUI;
    }

    function indexAction(){
        $this->_redirect(HOST_ADMIN . '/product');
    }

}

?>