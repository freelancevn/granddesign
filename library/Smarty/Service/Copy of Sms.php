<?php
/**
 * Class for sms service.
 *
* @author		: Thai Lai
* @dated on	: 15/04/2009
* @description	: Service for sms
 * @category 	: Vnc
 * @package    	: Vnc_Service_Sms
 */
class Vnc_Service_Sms
{
	var $cache 	 	= null;
	var $clear 	 	= null;
	var $dbmaster 	= null;
	var $dbslave 	= null;	
	
	private function connect($option = 'vnc')
	{
		$objConf  = new Zend_Config_Ini(ROOT_LIB . '/Vnc/Conf/config.ini', $option);
		$arrConf  = $objConf->db->toArray();
		$this->dbmaster = Zend_Db::factory($arrConf['adapter'], $arrConf['master']);
		$this->dbslave  = Zend_Db::factory($arrConf['adapter'], $arrConf['slave']);
	}

	private function activeAccount($intUserId, $intStatus = 1)
	{
		$this->connect('henantrua');
		$stmt = $this->dbmaster->prepare('call users_update_status_master(?,?);');
		$stmt->bindParam(1, $intUserId, PDO::PARAM_INT, 10);
		$stmt->bindParam(2, $intStatus, PDO::PARAM_INT, 10);
		$intResult = $this->execute();
		$this->dbmaster->closeConnection();
		return $intResult;
	}

	private function activeMobile($strUsername, $strMobile)
	{
		$this->connect('henantrua');
		$stmt = $this->dbmaster->prepare('call users_activate_master(?,?);');
		$stmt->bindParam(1, $strUsername, PDO::PARAM_STR, 64);
		$stmt->bindParam(2, $strMobile	, PDO::PARAM_STR, 20);
		$intResult = $this->execute();
		if( $intResult )
		{
			$arrResult = $stmt->fetchAll();
			if( $arrResult[0]['errCode'] == 0 && isset($arrResult[0]['userid']) )
				$intResult = $arrResult[0]['userid'];
			else
				$intResult = 0;
		}
		$this->dbmaster->closeConnection();
		return 0;
	}
	
	/**
	* @Active Account + Mobile by SMS
	* @param string $strUsername
	* @return string
	**/
	public function smsActiveRegister($strUsername)
	{
		return $strUsername;
	}
	
}