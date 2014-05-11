<?php
class Product {
	private $db = null;
	function __construct() {
		$this->db = Zend_Registry::get ( 'db' );
	}
	function getListProductAdmin($intOffset, $intLimit) {
		$SQL = 'SELECT SQL_CALC_FOUND_ROWS p.id, p.product_name, p.fk_category, p.investors,p.unbuilt_area, p.address, p.time_finish, p.content, 
		p.date_create, p.`status`, p.sort, c.category_name, (SELECT count(m.id) FROM ktv_product_image as m WHERE p.id=m.fk_product) as countImages  FROM ktv_product AS p INNER JOIN ktv_category AS c ON p.fk_category = c.id 
		WHERE p.`status`=1 AND c.`status`=1';
		$SQL .= NhutFunction::getOrderBY ( 'p.sort', 'DESC', $intOffset, $intLimit );
		$rs = $this->db->fetchAll ( $SQL );
		$total = $this->db->fetchOne ( 'SELECT FOUND_ROWS()' );
		return array (
				'total' => $total,
				'result' => $rs 
		);
	}
	function getProductAdmin($iProductID) {
		$SQL = 'SELECT p.id, p.product_name, p.fk_category, p.investors,p.unbuilt_area, p.address, p.time_finish, p.content, p.date_create, p.`status`, p.sort, c.category_name, (SELECT count(m.id) FROM ktv_product_image as m WHERE p.id=m.fk_product) as countImages FROM ktv_product AS p INNER JOIN ktv_category AS c ON p.fk_category = c.id 
		WHERE p.`status`=1 AND c.`status`=1 AND p.id=' . $iProductID;
		$rs = $this->db->fetchRow ( $SQL );
		return $rs;
	}
	function insertProductImages($arrData) {
		$db = Zend_Registry::get ( 'db' );
		$db->insert ( 'ktv_product_image', $arrData );
	}
	function insertProduct($arrData) {
		$db = Zend_Registry::get ( 'db' );
		$db->insert ( 'ktv_product', $arrData );
	}
	function updateProduct($arrData, $sWhere) {
		$db = Zend_Registry::get ( 'db' );
		$db->update ( 'ktv_product', $arrData, $sWhere );
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
		$db->update ( 'ktv_product', $arrDataUpdate, $sWhere );
		return 0;
	}
	public function getProductImagesAdmin($iID) {
		$SQL = 'SELECT * FROM ktv_product_image WHERE `fk_product`=' . $iID;
		$rs = $this->db->fetchAll ( $SQL );
		return $rs;
	}
	public function deleteDataProductImages($arrData) {
		$j = count ( $arrData );
		$s1 = '';
		for($i = 0; $i < $j; $i ++) {
			$s1 .= ($s1 != '') ? ',' . $arrData [$i] : $arrData [$i];
		}
		$rs = $this->db->delete ( 'ktv_product_image', '`id` IN (' . $s1 . ')' );
		return 0;
	}
	public function updateProductImages($arrData, $intID) {
		$rs = $this->db->update ( 'ktv_product_image', $arrData, '`id`=' . $intID );
	}
}
?>