<?php
class Category
{
		
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	public function getAllCategory($iType)
	{
		$strQuery	= 'SELECT * FROM `ktv_category` WHERE `status`=1 AND `type`=' . $iType . ' ORDER BY `sort`';
		$rs 		= $this->db->fetchAll($strQuery);
		return $rs;
	}
}
?>