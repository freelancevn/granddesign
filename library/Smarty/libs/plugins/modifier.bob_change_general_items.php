<?php
function smarty_modifier_bob_change_general_items($p_intUserId, $p_intGroupId, $p_intItemsID, $p_intItype)
{
    if($p_intGroupId==GROUP_Logistic_Admin || $p_intGroupId==GROUP_Logistic_Supervisor || $p_intGroupId==GROUP_Logistic_SourcingSupervisor || $p_intGroupId==GROUP_Logistic_Warehouse)
		return true;
	$objProperty	= new CProperty();
	$arrProperty	= $objProperty->getDetailOfOwner($p_intItemsID, $p_intItype);
	$int_Staff_id	= isset($arrProperty['staff_id'])?$arrProperty['staff_id']:'';
	if($int_Staff_id==$p_intUserId) return true;
	return false;
}
?>
