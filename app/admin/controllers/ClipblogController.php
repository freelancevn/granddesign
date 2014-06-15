<?php

class ClipblogController extends AbstractController {
    function indexAction(){
        $this->_redirect(HOST_ADMIN . '/blogs');
    }
}

?>