<?php
class PriceTableController extends AbstractController{

    public function indexAction(){
        $objRequest = $this->_request;
        $objConfig = new Config();
        $arrPrice = $objRequest->getParam('txt_pricetable', '');
        if (trim($arrPrice) != '') {
            $objConfig->updateConfig(array (
                            'key_value' => $arrPrice 
            ), 'key_config="PRICETABLE"');
        }
        $arrDetail = $objConfig->getConfig('PRICETABLE');
        $this->view->arrDetail = $arrDetail;
    }

}

?>