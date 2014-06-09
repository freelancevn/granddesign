<?php
class Picture
{
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}	
	
	public function getListSliderPictures() {
		$query = 'select * from `ktv_img_header` where `visible`=1 and `type`=2';
		return $this->db->fetchAll($query);
	}
	
	public function getHeaderPicture() {
		$query = 'select `imgname`, `link` from `ktv_img_header` where `visible`=1 and `type`=1 LIMIT 1';
		return $this->db->fetchRow($query);
	}
	
}
?>