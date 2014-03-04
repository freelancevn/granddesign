<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

/**
 * Smarty vnd_format modifier plugin
 *
 * Type:     modifier<br>
 * Name:     vnd_format<br>
 * Purpose:  Formats a number as a currency string
 * @link http://www.php.net/money_format
 * @param float
 * @param string format (default %n)
 * @return string
 */
function smarty_modifier_vnd_format($number, $decimals="0", $decpoint=",", $thousandsep=".")
{
	return number_format($number, $decimals, $decpoint, $thousandsep);
}


/* vim: set expandtab: */
?>