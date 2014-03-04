<?php
class Category
{
		
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	public function getAllCategory($iType)
	{
		$strQuery	= 'SELECT c.id, c.category_name, c.type, c.date_create, c.`status`, c.sort FROM ktv_category AS c WHERE c.type=' . $iType;
		$rs 		= $this->db->fetchAll($strQuery);
		return $rs;
	}
	
	public function getListCategoryAdmin($intOffset,$intLimit)
	{	
		$SQL		= 'SELECT SQL_CALC_FOUND_ROWS * FROM ktv_category WHERE `status`=1';
		$SQL 		.= NhutFunction::getOrderBY('sort', 'DESC', $intOffset, $intLimit); 
		$rs 		= $this->db->fetchAll($SQL);
		$total	= $this->db->fetchOne('SELECT FOUND_ROWS()');            
		return array('total'=>$total, 'result'=>$rs);		
	}
	
	function insertCategory($arrData)
	{
		$db	= Zend_Registry::get('db');
		$db->insert('ktv_category', $arrData);
	}
	
	function updateCategory($arrData, $sWhere)
	{
		$db	= Zend_Registry::get('db');
		$db->update('ktv_category', $arrData, $sWhere);
	}
	
	function deleteData($arrData)
	{
		$j	  = count($arrData);
		$s1	  = '';
		for ($i=0; $i<$j; $i++)
		{
			$s1 .= ($s1 != '') ? ',' . $arrData[$i] : $arrData[$i];
		}
		$arrDataUpdate	= array('status'=>0);
		$sWhere			= '`id` IN ('. $s1 .')';
		$db	= Zend_Registry::get('db');
		$db->update('ktv_category', $arrDataUpdate, $sWhere);
		return 0;
	}
	
	public function getCategoryAdmin($intID)
	{		
		$SQL		= 'SELECT * FROM ktv_category WHERE `id`=' . $intID;
		$arrResult = $this->db->fetchRow($SQL);
		return $arrResult;
	}
	
}
?>