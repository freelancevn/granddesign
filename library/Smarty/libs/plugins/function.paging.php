<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * Type:     modifier
 * Name:     mbtruncate
 * Purpose:  Truncate a string to a certain length if necessary,
 *           optionally splitting in the middle of a word, and 
 *           appending the $etc string.
 * -------------------------------------------------------------
 */
function smarty_function_paging($params, &$smarty)
{
	$isMultiParam  	= isset($params['params']) 	? $params['params']		: 0;
	$intOffset	  	= isset($params['offset']) 	? $params['offset']		: 0;
	$intTotal 	  	= isset($params['total']) 	? $params['total'] 		: 0;
	$intLimit 	  	= isset($params['limit']) 	? $params['limit'] 		: 0;	
	$strUrl 	  	= isset($params['url']) 	? $params['url']		: NhutFunction::urlPaging($isMultiParam);	
	//var_dump($params['url']);die();
	$intDisplay	  	= isset($params['display']) ? $params['display']	: 10;
	$strDiv	  		= isset($params['div']) 	? $params['div']		: '';
	$objPaging 		= new Paging($intTotal, $intLimit, $intOffset, $strUrl, $strUrl);	
	if ($strDiv!='') {		
		$strPaging 	= $objPaging->getAjax($intDisplay, $strDiv);
	} else { 
		$strPaging 	= $objPaging->get($intDisplay);
	}	
	return $strPaging;
}
?>