<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty {get_lang} function plugin
 *
 * Type:     function<br>
 * Name:     Get Lang<br>
 * Date:     March 2, 2006<br>
 * Purpose:  Take languave specific texts from database to display
 * @link     To be attached with osdate package and topied to Smarty/plugins directory
 * @author   Vijay Nair <vijay@nairvijay.com>
 * @version  1.0
 * @param    Text_to_check Text for Language Check
 * @return   string 
 */
 
function smarty_function_lang($params, &$smarty )
{  global $lang;
   $mainkey = $params['mkey'];
   $subkey = $params['skey'];
   $escape = $params['escape'];
   $optlang= $smarty->session->opt_lang;
   if ($subkey != '') {
	   $y = $lang[$mainkey][$subkey];
   } else {
	   $y = $lang[$mainkey];
   }
  
   if ($escape == 'url') {
      return urlencode(html_entity_decode($y));
   } else {
	   return html_entity_decode($y);
   }
}

/* vim: set expandtab: */

?>
