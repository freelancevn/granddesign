<?php
class News {
	private $db = null;
	
	function __construct() {
		$this->db = Zend_Registry::get ( 'db' );
	}

	public function getAllNews() {
		$strQuery = 'SELECT n.id, n.title, n.summary, n.content, n.visible, n.creationDate, n.status FROM ktv_news AS n';
		$rs = $this->db->fetchAll ( $strQuery );
		return $rs;
	}

	public function getListNewsAdmin($intOffset, $intLimit) {
		$SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM ktv_news AS n WHERE n.status=1';
		$SQL .= NhutFunction::getOrderBY ( 'DATE(`creationDate`)', 'DESC', $intOffset, $intLimit );
		$rs = $this->db->fetchAll ( $SQL );
		$total = $this->db->fetchOne ( 'SELECT FOUND_ROWS()' );
		return array (
				'total' => $total,
				'result' => $rs
		);
	}
	
	function insertNews($arrData) {
		$db = Zend_Registry::get ( 'db' );
		$db->insert ( 'ktv_news', $arrData );
	}
	
	function getNewsAdmin($intNewsId) {
		$SQL = 'SELECT * FROM ktv_news WHERE `id`=' . $intNewsId;
		$arrResult = $this->db->fetchRow ( $SQL );
		return $arrResult;
	}
	
	function updateNews($arrData, $sWhere) {
		$db = Zend_Registry::get ( 'db' );
		$db->update ( 'ktv_news', $arrData, $sWhere );
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
		$db->update ( 'ktv_news', $arrDataUpdate, $sWhere );
		return 0;
	}
}

?>