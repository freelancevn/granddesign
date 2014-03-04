<?php
function smarty_modifier_bob_is_group($p_intUserId, $p_intGroupId, $p_intGroupConf)
{
    $obj	= new CRole();
	return $obj->isGroup($p_intUserId, $p_intGroupId, $p_intGroupConf);
}
?>
