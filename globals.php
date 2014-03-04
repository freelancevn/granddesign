<?php
class Globals
{
	public static $db=null;
	public static $lang=null;
	static function connect()
	{
		try {
			$zend_config=new Zend_Config_Ini(ROOT_DIR.'/conf/config.ini','production');	
			if($zend_config){
				self::$db=Zend_Db::factory($zend_config->database);
				self::$db->getProfiler()->setEnabled(true);
				Zend_Db_Table_Abstract::setDefaultAdapter(self::$db);
	            try
	            {
	                self::$db->query( 'SET NAMES utf8' );
	                self::$db->query( 'SET CHARACTER SET utf8' );					
	            } catch( Exception $e){
						var_dump('DB Die');die();
				}
			}
		}catch (Exception  $e){
			var_dump($e);
			echo "Khong the tim thay file config he thong";
			die();
		}
		if(!self::$db){
			# write error	
			echo 'write error db 2';
			die();
		}
	}

	public function getDBMgr(&$objDbMaster)
	{	
		Globals::connect($objDbMaster,'not');
	}

	public function loadConf()
	{
		$objConf = new Zend_Config_Ini(ROOT_DIR . '/conf/config.ini', 'email');
		$arrConf = $objConf->email->toArray();
		foreach ($arrConf as $key=>$value) {
			define($key, $value);
		}
	}

	public function loadDefine()
	{
		$objConf = new Zend_Config_Ini(ROOT_DIR . '/conf/config.ini', 'define');		
		//Domain
		$arrDefineDomain = $objConf->DOMAIN->toArray();
		foreach ($arrDefineDomain as $key=>$value) {
			if ($key == 'DOMAIN') {
				define($key, $value);
			} else {
				define($key, $value . DOMAIN);
				define('HOST_' . $key, $value . DOMAIN . '/');
			}
		}
	}
}
?>