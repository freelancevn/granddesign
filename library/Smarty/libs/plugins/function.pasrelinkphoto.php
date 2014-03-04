<?php
function smarty_function_pasrelinkphoto($params, &$smarty)
{
	$sEmail  		= isset($params['email'])?$params['email']:'';
	$iUserID	  	= isset($params['id'])?$params['id']:0;
	if($sEmail!='' && $iUserID>0)
		return HOST_PHOTO_VIEW . '?u=' . base64_encode($sEmail. '|timyeu|' . $iUserID);
}
?>