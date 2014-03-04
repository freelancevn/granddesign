<?php
function smarty_modifier_bob_is_user_root($p_intUserId)
{
    $obj	= new CRole();
	return $obj->isRoot($p_intUserId);
}
?>
