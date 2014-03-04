<?php
class User
{
		
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	/**
	* @author					: Minh Nhut
	* @dated on					: 13/04/2010
	* @description				: Lay thong tin chi tiet 1 quan tri vien
	* @param int $strUserName	: username cua quan tri vien
	* @return array
	*/
	public function getInfoUser($strUserName)
	{
		$SQL    = 'SELECT * FROM ktv_user WHERE username="'. $strUserName .'"'; 
		$arrResult = $this->db->fetchRow($SQL);
		return $this->toObjUser($arrResult);
	}
	
	public function toObjUser($arrResult)
	{
		$objUser = null;
		if (isset($arrResult['id'])) {
			$objUser->id 				= isset($arrResult['id'])				? $arrResult['id']			: 0;
			$objUser->username 			= isset($arrResult['username'])		? $arrResult['username']	: '';
			$objUser->password 			= isset($arrResult['password'])		? $arrResult['password']	: '';
			$objUser->fullname 			= isset($arrResult['fullname'])		? $arrResult['fullname']	: '';
			$objUser->right 			= isset($arrResult['rightadmin'])	? $arrResult['rightadmin']	: 0;
		}
		return $objUser;
	}
	
	function updateUser($arrData, $sWhere)
	{
		$db	= Zend_Registry::get('db');
		$db->update('ktv_user', $arrData, $sWhere);
	}
	
}
?>