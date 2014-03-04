<?php 
function smarty_modifier_contains($string, $find, $cases = false)
{
   if(!empty($string) )
   {
		$pos = strpos($string, $find);
		if($pos=== false)
			return 1;
		else 
			return 0;
   }   
   return 0;
} 
?>