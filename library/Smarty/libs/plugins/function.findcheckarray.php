<?php 
function smarty_function_findcheckarray($arrPos, $strfind, $cases = false)
{
	var_dump($arrPos);die();
   if(count($arrPos)>0)
   {
		$iSearch	= 0;				
		foreach($arrPos as $rRow)
		{
			if($rRow['category_id']==$strfind){
				echo 'checked="checked"';
				break;
			}
		}				
   }
} 
?>