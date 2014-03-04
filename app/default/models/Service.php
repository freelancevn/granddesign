<?php
class Service
{
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	function getListServiceAdmin($intOffset,$intLimit, $iServiceID=0)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.image, s.sortcontent, s.description, s.sort, s.date_create FROM ktv_service AS s
		WHERE s.status=1';
		if($iServiceID>0)
			$SQL		.= ' AND s.id!=' . $iServiceID;
		$SQL 		.= NhutFunction::getOrderBY('s.sort', 'DESC', $intOffset, $intLimit); 
		$rs 		= $this->db->fetchAll($SQL);
		        
		return $rs;
	}
	
	function getServiceAdmin($iServiceID)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.image, s.sortcontent, s.description, s.sort, s.date_create FROM ktv_service AS s 
		WHERE s.status=1 AND s.id=' . $iServiceID;
		$rs 		= $this->db->fetchRow($SQL);
		return $rs;
	}
}