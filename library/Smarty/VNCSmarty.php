<?php

require_once('Smarty.class.php');

define('LIFE_TIME', 10);

class Smarty_VNCSmarty extends Smarty
{
	
	public function __construct() 
	{
	
		$config 	= Zend_Registry::get('config');
		$smarty_cfg = $config->smarty;
		
		//default smarty template setting
		$this->compile_dir 	= $config->path->root.$smarty_cfg->compile_dir;
		$this->config_dir 	= $config->path->root.$smarty_cfg->config_dir;
		$this->cache_dir 	= $config->path->root.$smarty_cfg->cache_dir;
		
		//set the default handler and other values for caching and faster loading
		$this->caching 		= false;
		//$this-> cache_lifetime 	= LIFE_TIME;
		$this-> use_sub_dirs 	= true;
	
	}

	function assign($tpl_var, $value = null)
	{
		if (is_array($tpl_var)){
			foreach ($tpl_var as $key => $val) {
				if ($key != '') {

					if ( !is_array( $value ) ) {
						$this->_tpl_vars[$key] = stripslashes( $val );
					}
					else {
						foreach( $val as $index => $v ) {
							if ( !is_array( $v ) )
								$val[ $index ] = stripslashes( $v );
							else
								$val[ $index ] = $v;
						}

						$this->_tpl_vars[$key] = $val;
					}
				}
			}
		} else {
			if ($tpl_var != '') {

				if ( !is_array( $value ) ) {
					$this->_tpl_vars[$tpl_var] = stripslashes( $value );
				}
				else {
					foreach( $value as $index => $v ) {
						if ( !is_array( $v ) )
							$value[ $index ] = stripslashes( $v );
						else
							$value[ $index ] = $v;
					}

					$this->_tpl_vars[$tpl_var] = $value;
				}
			}
		}
	}
	
	function fetch_template($template_dir,$resource_name, $cache_id = null, $compile_id = null, $display = false)
	{
		$t  = $this->template_dir;
		$this->template_dir = $template_dir;
		$rs =$this->fetch($resource_name, $cache_id, $compile_id, $display);
		$this->template_dir = $t;
		return $rs;
	}

}