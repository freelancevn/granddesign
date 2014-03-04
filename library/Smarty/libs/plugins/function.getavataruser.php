<?php
function smarty_function_getavataruser($params, &$smarty)
{
	$sAvatar  	= isset($params['avatar'])?$params['avatar']:'';
	$iSize	  	= isset($params['size'])?$params['size']:100;
	if($sAvatar!='')
	{
		if($iSize==100)
		{
			$sAvatar	= str_replace('.', '_100.', $sAvatar);
			return HOST . '/upload_thumb/' . $sAvatar;
		}
		if($iSize==300)
		{
			$sAvatar	= str_replace('.', '_300.', $sAvatar);
			return HOST . '/upload_thumb/' . $sAvatar;
		}
		return HOST . '/upload/' . $sAvatar;
	}
}
?>