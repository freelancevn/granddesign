<?php
function smarty_modifier_sendtonumber($p_intValue)
{
	$iYear		= date('Y');
	$iBirthday	= explode('-',$p_intValue);
    return intval($iYear - $iBirthday[0]);
}
/* vim: set expandtab: */
?>
