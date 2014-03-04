<?php
class Shop
{
	
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	function getListProductAdmin($intOffset,$intLimit)
	{
		$SQL		= 'SELECT SQL_CALC_FOUND_ROWS s.id, s.`name`, s.fk_category, s.feed, s.size, s.price, s.description, s.img_1, s.img_2, 
		s.img_3, s.`status`, s.sort, s.showproduct, c.category_name FROM ktv_shop AS s INNER JOIN ktv_category AS c ON s.fk_category = c.id  
		WHERE s.`status`=1 AND c.`status`=1';
		$SQL 		.= NhutFunction::getOrderBY('s.sort', 'DESC', $intOffset, $intLimit); 
		$rs 		= $this->db->fetchAll($SQL);
		$total	= $this->db->fetchOne('SELECT FOUND_ROWS()');            
		return array('total'=>$total, 'result'=>$rs);
	}
	
	function getShopAdmin($iProductID)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.fk_category, s.feed, s.size, s.price, s.description, s.img_1, s.img_2, 
		s.img_3, s.`status`, s.sort, s.showproduct, c.category_name FROM ktv_shop AS s INNER JOIN ktv_category AS c ON s.fk_category = c.id 
		WHERE s.`status`=1 AND c.`status`=1 AND s.id=' . $iProductID;
		$rs 		= $this->db->fetchRow($SQL);
		return $rs;
	}
	
	function insertShop($arrData)
	{
		$db	= Zend_Registry::get('db');
		$db->insert('ktv_shop', $arrData);
	}
	
	function updateShop($arrData, $sWhere)
	{
		$db	= Zend_Registry::get('db');
		$db->update('ktv_shop', $arrData, $sWhere);
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
		$db->update('ktv_shop', $arrDataUpdate, $sWhere);
		return 0;
	}
}
?>