<?php
class Category
{
		
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	public function getAllCategory($iType)
	{
		$strQuery	= 'SELECT c.id, c.category_name, c.type, c.date_create, c.`status`, c.cate_shop, c.sort FROM ktv_category AS c WHERE `status`=1 AND c.type=' . $iType;
		$rs 		= $this->db->fetchAll($strQuery);
		return $rs;
	}
	
	public function getImages()
	{
		$SQL		= 'SELECT * FROM `ktv_img_header`';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
}
?>