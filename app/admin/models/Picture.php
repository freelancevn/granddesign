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
		
	public function insertPicture($strPicture)
	{
		$arrData		= array('imgname'=>$strPicture);
		$rs				= $this->db->insert('ktv_img_header',$arrData);
		return 1;
	}
	
	public function deleteData($arrData){
		$j	  = count($arrData);
		for ($i=0; $i<$j; $i++)
		{
			$s1 .= ($s1 != '') ? ',' . $arrData[$i] : $arrData[$i];
		}
		$rs = $this->db->delete('ktv_img_header','`id` IN ('. $s1 .')');
		return 0;
	}
	
}
?>