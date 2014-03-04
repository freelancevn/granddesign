<?php
class Config
{
	
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	function getConfig($strKey)
	{
		$strQuery	= 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c WHERE c.key_config = "' . $strKey . '"';
		$db	= Zend_Registry::get('db');
		return $db->fetchRow($strQuery);
	}
	
	function getAllConfig()
	{
		$strQuery	= 'SELECT c.id, c.key_config, c.key_value FROM ktv_config AS c';
		$db	= Zend_Registry::get('db');
		return $db->fetchAll($strQuery);
	}
	
	public function getAllInfo()
	{	
		$SQL		= 'SELECT * FROM ktv_info ORDER BY `type` ASC, sort DESC';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
}