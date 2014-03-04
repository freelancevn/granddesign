<?php
function smarty_function_bob_is_user_cs($params, &$smarty)
{
	$iUserID	= isset($params['userid'])?$params['userid']:0; 
	$iGroupID	= isset($params['groupid'])?$params['groupid']:0; 
    $obj	= new CRole();
	return $obj->isGroup($iUserID,$iGroupID,GROUP_CS);
}
?>
