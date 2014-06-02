<?php
class Picture
{
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}	
	
	public function getListPictureAdmin()
	{
		$SQL		= 'SELECT * FROM `ktv_img_header`';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
		
	public function insertPicture($arrData)
	{
		$this->db->insert('ktv_img_header',$arrData);
	}
	
	public function deleteData($arrData){
		$j = count($arrData);
		$s1 = "";
		for ($i=0; $i<$j; $i++)
		{
			$s1 .= ($s1 != '') ? ',' . $arrData[$i] : $arrData[$i];
		}
		$rs = $this->db->delete('ktv_img_header','`id` IN ('. $s1 .')');
		return 0;
	}
	
	public function updatePicture($arrData, $whereClause) {
		$this->db->update('ktv_img_header',$arrData, $whereClause);
	}
	
}
?>