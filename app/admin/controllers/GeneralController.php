<?php

class GeneralController extends AbstractController {
     public function indexAction() {
         
     }
     
     public function aboutAction() {
         $objRequest 		= $this->_request;
         $objConfig			= new Config();
         $arrDes				= $objRequest->getParam('txt_description', '');
         if(trim($arrDes)!='')
         {
             $objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="ABOUT"');
         }
         $arrDetail			= $objConfig->getConfig('ABOUT');
         $this->view->arrDetail		= $arrDetail;
     }
     
     public function footerAction() {
        $objRequest 		= $this->_request;
		$objConfig			= new Config();
		$arrDes				= $objRequest->getParam('txt_description', '');
		$arrDes2			= $objRequest->getParam('txt_description2', '');
		if(trim($arrDes)!='')
		{
			$objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="FOOTERHCM"');
			$objConfig->updateConfig(array('key_value'=>$arrDes2), 'key_config="FOOTERHANOI"');
		}
		$arrDetail			= $objConfig->getConfig('FOOTERHCM');
		$arrDetail2			= $objConfig->getConfig('FOOTERHANOI');
		$this->view->arrDetail		= $arrDetail;
		$this->view->arrDetail2		= $arrDetail2;
     }
     
     function siteinfoAction()
     {
         $objRequest 		= $this->_request;
         $objConfig			= new Config();
         $sTitle				= $objRequest->getParam('txtTitle', '');
         $sSlogan			= $objRequest->getParam('txtSlogan', '');
         $sKeywords			= $objRequest->getParam('txtKeywords', '');
         $sDes				= $objRequest->getParam('txtDes', '');
         if(trim($sTitle)!='')
         {
             $objConfig->updateConfig(array('key_value'=>$sTitle), "key_config='".Config::TITLE."'");
             $objConfig->updateConfig(array('key_value'=>$sKeywords), "key_config='".Config::KEYWORDS."'");
             $objConfig->updateConfig(array('key_value'=>$sDes), "key_config='".Config::DESCRIPTION."'");
             $objConfig->updateConfig(array('key_value'=>$sSlogan), "key_config='".Config::SLOGAN."'");
         }
         $arrTitle			= $objConfig->getConfig(Config::TITLE);
         $arrKeywords		= $objConfig->getConfig(Config::KEYWORDS);
         $arrDes				= $objConfig->getConfig(Config::DESCRIPTION);
         $arrSlogan          = $objConfig->getConfig(Config::SLOGAN);
         $this->view->arrTitle		= $arrTitle;
         $this->view->arrKeywords	= $arrKeywords;
         $this->view->arrDes			= $arrDes;
         $this->view->arrSlogan		= $arrSlogan;
     }

    public function regulationAction(){
        $objRequest = $this->_request;
        $objConfig = new Config();
        $arrRegulation = $objRequest->getParam('txtRegulation', '');
        if (trim($arrRegulation) != '') {
            $objConfig->updateConfig(array('key_value' => $arrRegulation), "key_config='" . Config::REGULATION . "'");
        }
        $arrRegulation = $objConfig->getConfig(Config::REGULATION);
        $this->view->arrDetail = $arrRegulation;
    }
    
    public function missionandvisionAction(){
        $objRequest = $this->_request;
        $objConfig = new Config();
        $arrRegulation = $objRequest->getParam('txtMissionAndVision', '');
        if (trim($arrRegulation) != '') {
            $objConfig->updateConfig(array('key_value' => $arrRegulation), "key_config='" . Config::MISSIONANDVISION . "'");
        }
        $arrRegulation = $objConfig->getConfig(Config::MISSIONANDVISION);
        $this->view->arrDetail = $arrRegulation;
    }
    
    public function processflowAction(){
        $objRequest = $this->_request;
        $objConfig = new Config();
        $arrRegulation = $objRequest->getParam('txtProcessFlow', '');
        if (trim($arrRegulation) != '') {
            $objConfig->updateConfig(array('key_value' => $arrRegulation), "key_config='" . Config::PROCESSFLOW . "'");
        }
        $arrRegulation = $objConfig->getConfig(Config::PROCESSFLOW);
        $this->view->arrDetail = $arrRegulation;
    }
    
    function contactAction()
    {
        $objRequest 		= $this->_request;
        $objConfig			= new Config();
        $arrDes				= $objRequest->getParam('txt_description', '');
        $arrDes2			= $objRequest->getParam('txt_description2', '');
        $sLink				= $objRequest->getParam('txt_linkgoogle', '');
        $sLink2				= $objRequest->getParam('txt_linkgoogle2', '');
        if(trim($arrDes)!='')
        {
            $objConfig->updateConfig(array('key_value'=>$arrDes), 'key_config="CONTACTHCM"');
            $objConfig->updateConfig(array('key_value'=>$arrDes2), 'key_config="CONTACTHANOI"');
            $objConfig->updateConfig(array('key_value'=>$sLink), 'key_config="CONTACTHCMLINK"');
            $objConfig->updateConfig(array('key_value'=>$sLink2), 'key_config="CONTACTHANOILINK"');
        }
        $arrDetail			= $objConfig->getConfig('CONTACTHCM');
        $arrDetail2			= $objConfig->getConfig('CONTACTHANOI');
        $arrLink			= $objConfig->getConfig('CONTACTHCMLINK');
        $arrLink2			= $objConfig->getConfig('CONTACTHANOILINK');
        $this->view->arrDetail		= $arrDetail;
        $this->view->arrDetail2		= $arrDetail2;
        $this->view->arrLink		= $arrLink;
        $this->view->arrLink2		= $arrLink2;
    }
}

?>