<?php
function smarty_function_pasrelinkuser($params, &$smarty)
{
	$sEmail  		= isset($params['email'])?$params['email']:'';
	$iUserID	  	= isset($params['id'])?$params['id']:0;
	if($sEmail!='' && $iUserID>0)
		return HOST_PROFILE . '?u=' . base64_encode($sEmail. '|timyeu|' . $iUserID);
}
?>