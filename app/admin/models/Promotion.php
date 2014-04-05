<?php

class Promotion {
	private $db = null;
	function __construct() {
		$this->db = Zend_Registry::get ( 'db' );
	}
	
	public function getAllPromotion() {
		$strQuery = 'SELECT p.id, p.name, p.startDate, p.endDate, p.content, p.order, p.available FROM ktv_promotion AS p';
		$rs = $this->db->fetchAll ( $strQuery );
		return $rs;
	}
	
	public function getListPromotionAdmin($intOffset,$intLimit)
	{
		$SQL		= 'SELECT SQL_CALC_FOUND_ROWS * FROM ktv_promotion';
		$SQL 		.= NhutFunction::getOrderBY('`order`', 'DESC', $intOffset, $intLimit);
		$rs 		= $this->db->fetchAll($SQL);
		$total	= $this->db->fetchOne('SELECT FOUND_ROWS()');
		return array('total'=>$total, 'result'=>$rs);
	}
	
	function insertPromotion($arrData) {
		$db = Zend_Registry::get ( 'db' );
		$db->insert ( 'ktv_promotion', $arrData );
	}
	
	function updatePromotion($arrData, $sWhere) {
		$db = Zend_Registry::get ( 'db' );
		$db->update ( 'ktv_promotion', $arrData, $sWhere );
	}
	
	function deleteData($arrData) {
		$j = count ( $arrData );
		$s1 = '';
		for($i = 0; $i < $j; $i ++) {
			$s1 .= ($s1 != '') ? ',' . $arrData [$i] : $arrData [$i];
		}
		$arrDataUpdate = array (
				'status' => 0 
		);
		$sWhere = '`id` IN (' . $s1 . ')';
		$db = Zend_Registry::get ( 'db' );
		$db->update ( 'ktv_promotion', $arrDataUpdate, $sWhere );
		return 0;
	}
}

?>