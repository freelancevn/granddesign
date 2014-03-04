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
define('SMS_HOST'	 , 'http://smsdev/');
define('SMS_LOGIN'	 , 'phungtk');
define('SMS_PASSWORD', '123456');

class Vnc_Service_Sms
{
	var $dbmaster	= null;
	var $dbslave  	= null;
	var $cache 	  	= null;
	var $clear 	  	= null;

	public function __construct($objCache = null, $objClear = null)
	{
		$this->cache = $objCache;
		$this->clear = $objClear;
	}

	private function connect($option = 'vnc')
	{
		$objConf  = new Zend_Config_Ini(ROOT_LIB . '/Vnc/Conf/config.ini', $option);
		$arrConf  = $objConf->db->toArray();
		$this->dbmaster = Zend_Db::factory($arrConf['adapter'], $arrConf['master']);
		$this->dbslave = Zend_Db::factory($arrConf['adapter'], $arrConf['slave']);
	}

	private function checkSyntax($strMessage, &$strPrefix = '', &$strCode = '', &$strText = '', &$strUsername, &$strEmail)
	{
		$objVncUser = new Vnc_User($this->cache);
		$arrSyntax 	= explode(' ', $strMessage);
		$strPrefix 	= (isset($arrSyntax[0]) ? trim($arrSyntax[0]) : '');
		$strCode   	= (isset($arrSyntax[1]) ? trim($arrSyntax[1]) : '');
		$strText   	= (isset($arrSyntax[2]) ? trim($arrSyntax[2]) : '');
		if( $strPrefix == 'VNC' )
		{
			if( count($arrSyntax) == 2 )
			{
				switch( $strCode )
				{
					case 'CUOCHEN': //check info cuoc hen trong ngay
					case 'DUYET': 	//duyet ds user tham gia cuoc hen moi nhat minh tao
					case 'DONGY': 	//dong y tham gia cuoc hen duoc moi
					case 'TUCHOI': 	//tu choi tham gia cuoc hen duoc moi
					case 'DT': 		//xin mobile cua cac thanh vien tham gia cuoc hen (chi khi user duoc duyet)
					case 'HUY':		//Huc cac cuoc hen dang tham gia
					case 'ON':		//Dong y nhan tin tu HAT
					case 'OFF':		//Tu choi nhan tin tu HAT
					case 'SUA':		//Sua Email, Mobile, YahooId
						return 1;
				}
			}
			else
			{
				switch( $strCode )
				{
					case 'DK':		//Dang ky qua tin nhan
						$strEmail = $strCode;
						return 1;
					case 'KH':		//Kich hoat tai khoan
						$strUsername = $strText;
						return 1;
					case 'CAM':		//Tu choi nhan tin nhan tu user HAT
						$strUsername = $strText;
						return 1;
					default:
						if( $strCode != 'HEN' ) //Tao cuoc hen
						{
							$strUsername = $strCode;
							$strCode	 = 'CHAT';
						}
						if( count($arrSyntax) > 3 )
						{
							for($i = 3; $i < count($arrSyntax); $i++ )
							{
								$strText .= $arrSyntax[$i];
							}
						}
						return 1;
				}
			}
		}
		return 0;
	}

	private function activeAccount($intUserId, $intStatus = 1)
	{
		$this->connect('henantrua');
		$stmt = $this->dbmaster->prepare('call users_update_status_master(?,?);');
		$stmt->bindParam(1, $intUserId, PDO::PARAM_INT, 10);
		$stmt->bindParam(2, $intStatus, PDO::PARAM_INT, 10);
		$intResult = $stmt->execute();
		$this->dbmaster->closeConnection();
		return $intResult;
	}

	private function activeMobile($strUsername, $strMobile)
	{
		$intResult = 0;
		$this->connect('henantrua');
		$stmt = $this->dbmaster->prepare('call users_activate_mobile_master(?,?);');
		$stmt->bindParam(1, $strUsername, PDO::PARAM_STR, 64);
		$stmt->bindParam(2, $strMobile	, PDO::PARAM_STR, 20);
		if( $stmt->execute() )
		{
			$arrResult = $stmt->fetchAll();
			if( $arrResult[0]['errCode'] == 0 && isset($arrResult[0]['userid']) )
				$intResult = $arrResult[0]['userid'];
			else
				$intResult = 0;
		}
		$this->dbmaster->closeConnection();
		return $intResult;
	}

	private function commitContact($objUser)
	{
		$intResult = 0;
		if( $objUser )
		{
			$this->connect('henantrua');
			$stmt = $this->dbmaster->prepare('call users_commit_contact_master(?);');
			$stmt->bindParam(1, $objUser->id, PDO::PARAM_INT, 10);
			if( $stmt->execute() )
			{
				$intResult = $this->activeMobile($objUser->username, $objUser->mobile);
			}
			$this->dbmaster->closeConnection();
		}
		return $intResult;
	}

	/**
	* @Active Account + Mobile by SMS
	* @param string $strUsername
	* @return int
	**/
	public function activeRegister($strUsername)
	{
		$objVncUser = new Vnc_User($this->cache);
		$objUser	= $objVncUser->getInfoUserByUsername($strUsername);
		if( $objUser )
		{
			$intUserId = $this->activeMobile($strUsername, $objUser->mobile);
			if( $intUserId > 0 )
			{
				return $this->activeAccount($intUserId, 1);
			}
		}
		return 0;
	}

	/**
	* @receiverMOLocal
	* @param string $strMobile
	* @param int $intServiceId
	* @param string $strCommandCode
	* @param string $strMessage
	* @param int $intRequestId
	* @return string
	**/
	public function receiverMOLocal($strMobile, $intServiceId, $strCommandCode, $strMessage, $intRequestId)
	{
		$arrReturnMsg = array
		(
			'KH'  => array(	'OK'	=>'Kich hoat tai khoan thanh cong.',
							'ERROR'	=>'Kich hoat tai khoan that bai. Ban vui long kiem tra lai thong tin da nhap.'),
			'SUA' => array(	'OK'	=>'Chuc mung ban da cap nhat thong tin thanh cong. Vui long dang nhap vao website henantrua.vn de kiem tra thong tin.',
							'ERROR'	=>'Cap nhat thong tin that bai. Ban vui long kiem tra lai thong tin da cung cap tai website henantrua.vn')
		);
		if( $this->checkSyntax($strMessage, $strPrefix, $strCode, $strText, $strUsername, $strEmail) == 1 )
		{
			$intResult	= 0;
			$objVncUser = new Vnc_User($this->cache);
			switch( $strCode )
			{
				case 'KH':
					$intResult 	= $this->activeRegister($strUsername);
					break;
				case 'SUA':
					$objUser 	= $objVncUser->getInfoUserByMobile($strMobile, 2);
					$intResult 	= $this->commitContact($objUser);
					break;
			}
			$strReturnMsg = $arrReturnMsg[$strCode][($intResult > 0  ? 'OK' : 'ERROR')];
			$objClient = new Zend_Soap_Client(SMS_HOST . 'wsdl/sendmt.wsdl');
			if( $objClient->checkAuthentication(SMS_LOGIN, SMS_PASSWORD) == 0 )
			{
				return $objClient->sendMT($strMobile, $strMessage, $strReturnMsg, $intServiceId, $strCommandCode, 1, $intRequestId, 0, $strCode);
			}
		}
		return 1;
	}
}