<?php
class ProductgroupController extends AbstractController {
    function indexAction(){
        $this->_redirect(HOST_ADMIN . '/product');
    }
}

?>