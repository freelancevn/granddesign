<?php 
function smarty_modifier_findcheck($string, $find, $cases = false)
{
	if(!empty($string) )
	{
		$iSearch	= 0;
		$arrPos		= explode(";",$string);
		foreach($arrPos as $rRow)
		{
			if($rRow==$find){
				$iSearch=1;
				break;
			}
		}
		return $iSearch;		
	}   
	return 0;
} 
?>