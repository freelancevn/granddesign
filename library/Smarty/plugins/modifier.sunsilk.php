<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty lower modifier plugin
 *
 * Type:     modifier<br>
 * Name:     lower<br>
 * Purpose:  convert string to lowercase
 * @link http://smarty.php.net/manual/en/language.modifier.lower.php
 *          lower (Smarty online manual)
 * @author   Monte Ohrt <monte at ohrt dot com>
 * @param string
 * @return string
 */
function smarty_modifier_sunsilk($string)
{
	$string	= str_replace("Sunsilk","<a href='http://www.unilever.com.vn/ourbrands/personalcare/sunsilk.asp' target='_blank'>Sunsilk</a>",$string);
	$string	= str_replace("Sống là không chờ đợi","<a href='http://www.unilever.com.vn/ourbrands/personalcare/sunsilk.asp' target='_blank'>Sống là không chờ đợi</a>",$string);
	return $string;
}

?>
