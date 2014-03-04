<?php
class Config
{
	
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	function getAllConfig()
	{
		$strQuery	= 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c';
		$db	= Zend_Registry::get('db');
		return $db->fetchRow($strQuery);
	}
	
	function getConfig($strKey)
	{
		$strQuery	= 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c WHERE c.key_config = "' . $strKey . '"';
		$db	= Zend_Registry::get('db');
		return $db->fetchRow($strQuery);
	}
	
	function updateConfig($arrData, $sWhere)
	{
		$db	= Zend_Registry::get('db');
		$db->update('ktv_config', $arrData, $sWhere);
	}
	
}