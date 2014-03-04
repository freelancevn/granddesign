<?php
/**
 * A Smarty-based view render for Zend framework
 * 
 * @author Minh Nhut
 * @version $version
 * @copyright Not Inc.
 */
class Smarty_View extends Zend_View_Abstract
{
	/**
	 * Smarty template engine instance
	 * @var 
	 */
	protected $_engine;

	/**
	 * Constructor
	 */
	public function __construct($strSubDomain = 'default')
	{		
		require_once 'libs/Smarty.class.php';
		$this->_engine = new Smarty();
		$this->_engine->caching 		= false;
		$this->_engine->cache_dir		= ROOT_DIR . '/data/' . $strSubDomain . '/cache/';		
		$this->_engine->compile_dir  	= ROOT_DIR . '/data/' . $strSubDomain . '/templates_c/';
		$this->_engine->template_dir 	= ROOT_DIR . '/app/' . $strSubDomain . '/views/';
		$this->_engine->plugins_dir  	= array('plugins', ROOT_LIB . '/Plugins/');
	}
	
	public function getEngine()
	{
		return $this->_engine;
	}

	public function __set($key, $val)
	{
		$this->_engine->assign($key, $val);
	}

	public function __get($key)
	{
		return $this->_engine->get_template_vars($key);
	}

	public function __isset($key)
	{
		return $this->_engine->get_template_vars($key) !== null;
	}

	public function __unset($key)
	{
		$this->_engine->clear_assign($key);
	}
	
	public function getTemplateDir()
	{
		return $this->_engine->template_dir;
	}
	
	public function assign($spec, $value = null)
	{
		if (is_array($spec)) {
			$this->_engine->assign($spec);
			return;
		}
		$this->_engine->assign($spec, $value);
	}	
	
	public function fetch($p_strPath)
	{
		return $this->_engine->fetch($p_strPath);
	}

	public function clearVars()
	{
		$this->_engine->clear_all_assign();
	}

	public function render($name)
	{
		$this->_engine->assign_by_ref('this', $this);
		return $this->_engine->fetch(strtolower($name));
	}

	public function _run()
	{
	}
	
	# custom functions
	public function register_object($str, $obj)
	{
		$this->_engine->register_object($str, $obj);
	}

	public function assign_by_ref($str, $obj)
	{
		$this->_engine->assign_by_ref($str, $obj);
	}
	
	public function setCaching($option)
	{
		$this->_engine->caching = $option;
	}
	
	public function clearCache($tpl_file, $cache_id = null)
	{
		$this->_engine->clear_cache($tpl_file, $cache_id);
	}
}
?>
