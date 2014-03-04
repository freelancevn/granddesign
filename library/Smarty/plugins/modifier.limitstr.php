<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

function smarty_modifier_limitstr($strContent, $intLength=0, $wordLen=20)
{
	mb_internal_encoding('UTF-8');
	if ($intLength==0 || $strContent=='')
		return ;
	$strContent = mb_substr($strContent, 0, $intLength, 'UTF-8');
	$arrContent = array();
	$strContent	= removeHtml($strContent);
	$strExplode = explode(' ', $strContent);
	foreach ($strExplode as $token)
	{
		if (mb_strlen($token)>$wordLen)
		{	
			$token = str_split($token,$wordLen);
			$token = implode($token, ' ');
		}	
		$result .= ' '.$token;
	}
	return mb_substr($result, 0, $intLength, 'UTF-8');
}

/**
 * Description					: Xử lý các chuỗi html trước khi đưa vào database
 * @param string $strDocument	: Chuỗi cần xử lý
 * @return string
 */	
function removeHtml($strDocument)
{		
	$strSearch = array('@<script[^>]*?>.*?</script>@si',  // Strip out javascript		
	  				   '@<![\s\S]*?--[ \t\n\r]*>@'        // Strip multi-line comments including CDATA
				      );
	$strText = preg_replace($strSearch, '', $strDocument);
	//20070402 TinTrang : change all (self)link to popup link
	$strText = str_replace('href="', 'target=_blank href="', $strText);
	$strText = str_replace('\n', '<br>', $strText);
	$strText = str_replace('../', '', $strText);
	$strText = str_replace('\'', '`', $strText);
	return $strText;
}
?>
