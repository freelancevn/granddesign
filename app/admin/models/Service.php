<?php
class Service
{

	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}

	function getListServiceAdmin($intOffset,$intLimit)
	{
		$SQL		= 'SELECT SQL_CALC_FOUND_ROWS s.id, s.`name`, s.image, s.sortcontent, s.description, s.sort, s.date_create FROM ktv_service AS s
		WHERE s.status=1';
		$SQL 		.= NhutFunction::getOrderBY('s.sort', 'DESC', $intOffset, $intLimit); 
		$rs 		= $this->db->fetchAll($SQL);
		$total	= $this->db->fetchOne('SELECT FOUND_ROWS()');            
		return array('total'=>$total, 'result'=>$rs);
	}
	
	function getServiceAdmin($iServiceID)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.image, s.sortcontent, s.description, s.sort, s.date_create FROM ktv_service AS s 
		WHERE s.status=1 AND s.id=' . $iServiceID;
		$rs 		= $this->db->fetchRow($SQL);
		return $rs;
	}
		
	function insertService($arrData)
	{
		$db	= Zend_Registry::get('db');
		$db->insert('ktv_service', $arrData);
	}
	
	function updateService($arrData, $sWhere)
	{
		$db	= Zend_Registry::get('db');
		$db->update('ktv_service', $arrData, $sWhere);
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
		$db->update('ktv_service', $arrDataUpdate, $sWhere);
		return 0;
	}
	
	public function getServiceImagesAdmin($iID){
		$SQL		= 'SELECT * FROM ktv_Service_image WHERE `fk_Service`=' . $iID;
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
}
?>