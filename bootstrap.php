<?php
class Bootstrap
{	
	var $_subDomain = '';
	public function __construct()
	{		
		$this->_subDomain = SITE_NAME;		
		set_include_path(
			ROOT_DIR .
			PATH_SEPARATOR . ROOT_DIR . '/library/' .
			PATH_SEPARATOR . ROOT_DIR . '/library/defined/' .
			PATH_SEPARATOR . ROOT_DIR . '/app/'. SITE_NAME .'/controllers/' .
			PATH_SEPARATOR . ROOT_DIR . '/app/'. SITE_NAME .'/models/' .
			PATH_SEPARATOR . get_include_path()
		);	
		require_once 'Zend/Loader/Autoloader.php';
		$loader = Zend_Loader_Autoloader::getInstance();
		$loader->registerNamespace('App_');
		$loader->setFallbackAutoloader(true);
		$loader->suppressNotFoundWarnings(false);
		Zend_Session::start();
		//Load Conf
		include ROOT_DIR . '/conf/config.php';		
		/** Smarty View **/		
		$objView = new Smarty_View(SITE_NAME);
		$vrender = new Zend_Controller_Action_Helper_ViewRenderer();
		$vrender->setView($objView);
		$vrender->setViewSuffix('tpl');
		Zend_Controller_Action_HelperBroker::addHelper($vrender);
		Zend_Registry::set('objView', $objView);			
		/** Db **/
		Globals::connect();
		Zend_Registry::set('db', Globals::$db);
		/**Cache**/
		include ROOT_DIR . '/conf/cache.conf.php';
		$frontendOptions = array
		(
			'lifetime' 					=> null,
			'automatic_serialization' 	=> true
		);
		
		$strRootDir 	= ROOT_DIR.'/data/cache' ;
		$backendOptions = array
		(
			'cache_dir'	=> $strRootDir
		);
		$cache = Zend_Cache::factory('Core', 'File', $frontendOptions, $backendOptions);
		Zend_Registry::set('cache', $cache);
		/**Cache**/
	}

	public function runApp()
	{
		// setup controller		
		$frontController = Zend_Controller_Front::getInstance();
		$frontController->throwExceptions(true);
		$frontController->addModuleDirectory(ROOT_DIR . '/app');
		
		$frontController->setDefaultModule(SITE_NAME);
		$frontController->setDefaultControllerName('public');
		//--route
		$routers = $frontController->getRouter();
		$configRouter = new Zend_Config_Ini(ROOT_DIR . '/conf/configUrl.ini', SITE_NAME );
		
		$routers->addConfig($configRouter, 'routes');
		try {
			$frontController->dispatch();									
		} catch (Exception $exception) {
			var_dump($exception);die();
			//header( 'Location: '. HOST_PHOTO .'page-not-found.html' ) ;
			/*$logDir = ROOT_DIR . '/data/log/' . date('Y/m/d');
			//Not_Function::mkDirectory($logDir);
			$strExptionClass = get_class($exception);
			$strMessage	= $exception->getMessage();
			$intErrorCode = $exception->getCode();
			if ($strExptionClass == 'Zend_Db_Statement_Exception') {
				$logFile = $logDir . '/' . SITE_NAME . '.txt';
				$log = new Zend_Log(new Zend_Log_Writer_Stream($logFile));
				$log->debug($strMessage . '-' . $exception->getTraceAsString() . "::::");
			}
			exit;*/
		}
		if($_SERVER['REMOTE_ADDR']=='127.0.0.1')
		{			
			//Common::postDispatch();
		}
	}
}
?>