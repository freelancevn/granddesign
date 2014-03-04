<?php
function smarty_modifier_moneyToWord($p_intValue)
{
	$p_intValue	= intval($p_intValue);
	$strResult	= CCommon::translateToWords($p_intValue);
	$strResult	= CCommon::upperCaseFirsr($strResult);
    return $strResult;
}
?>
