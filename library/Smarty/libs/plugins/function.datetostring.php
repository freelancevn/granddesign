<?php
function smarty_function_datetostring($params, &$smarty)
{
	$strDate 					= isset($params['datetime']) ? $params['datetime'] : '';	
	$intHous					= 0;
	$intMinutes					= 0;
	$intDate					= 0;
	if($strDate!=NULL){						
		$intNow					= mktime();
		$intDateView			= $strDate;
		$intView				= $intNow - $intDateView;
		$intDate				= round($intView/86400,0);
		$intHous				= (int)round(($intView - ($intDate*86400))/3600);
		if($intHous<0) {
			$intHous			= 24 + $intHous;
			$intDate--;
		}
		$intMinutes				= (int)round(($intView - ($intDate*86400) - ($intHous*3600))/60);
		if($intMinutes<0){
			$intMinutes			= 60 + $intMinutes;
		}
		$strReturn				= "";
		if($intDate>7)
		{
			$strReturn			= $intDate . " ngày";
		} else {
			if($intDate>0)
			{ 
				$strReturn			= $intDate . " ngày " . $intHous . " giờ " . $intMinutes . " phút";
			} else {
				$strReturn			= $intHous . " giờ " . $intMinutes . " phút";
			}
		}
		return $strReturn;
	}
	return "";	
}
?>