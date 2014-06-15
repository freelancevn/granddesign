<?php
class Config extends AbstractModel {

    public $tableName = 'ktv_config';
    
    // COLUMNS
    const KEYCONFIG = 'key_config';

    const KEYVALUE = 'key_value';
    
    // KEYCONFIGS
    const ABOUT = 'ABOUT';

    const FACTORY = 'FACTORY';

    const FOOTERHCM = 'FOOTERHCM';

    const FOOTERHANOI = 'FOOTERHANOI';

    const CONTACTHCM = 'CONTACTHCM';

    const CONTACTHANOI = 'CONTACTHANOI';

    const CONTACTHCMLINK = 'CONTACTHCMLINK';

    const CONTACTHANOILINK = 'CONTACTHANOILINK';

    const TITLE = 'TITLE';

    const KEYWORDS = 'KEYWORDS';

    const DESCRIPTION = 'DESCRIPTION';

    const PRICETABLE = 'PRICETABLE';
    
    const SLOGAN = 'SLOGAN';
    
    const MISSIONANDVISION = 'MISSIONANDVISION';

    const REGULATION = 'REGULATION';
    
    const PROCESSFLOW = 'PROCESSFLOW';

    function getAllConfig(){
        $strQuery = 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c';
        $db = Zend_Registry::get('db');
        return $db->fetchRow($strQuery);
    }

    function getConfig($strKey){
        $strQuery = 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c WHERE c.key_config = "' . $strKey . '"';
        $db = Zend_Registry::get('db');
        return $db->fetchRow($strQuery);
    }

    function updateConfig($arrData, $sWhere){
        $db = Zend_Registry::get('db');
        $db->update('ktv_config', $arrData, $sWhere);
    }

}