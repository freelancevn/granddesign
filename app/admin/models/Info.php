<?php
class Info
{
	
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	public function getListAdmin($intOffset,$intLimit)
	{	
		$SQL		= 'SELECT SQL_CALC_FOUND_ROWS * FROM ktv_info';
		$SQL 		.= NhutFunction::getOrderBY('`type` ASC, sort', 'DESC', $intOffset, $intLimit); 
		$rs 		= $this->db->fetchAll($SQL);
		$total	= $this->db->fetchOne('SELECT FOUND_ROWS()');            
		return array('total'=>$total, 'result'=>$rs);		
	}
	
	function insertInfo($arrData)
	{
		$db	= Zend_Registry::get('db');
		$db->insert('ktv_info', $arrData);
	}
	
	function deleteData($arrData)
	{
		$j	  	= count($arrData);
		$s1		= '';
		for ($i=0; $i<$j; $i++)
		{
			$s1 .= ($s1 != '') ? ',' . $arrData[$i] : $arrData[$i];
		}
		$rs = $this->db->delete('ktv_info','`id` IN ('. $s1 .')');
		return 0;
	}
	
}