<?php
function smarty_modifier_numberFormat($p_intValue)
{
    return number_format(intval($p_intValue));
}

/* vim: set expandtab: */

?>
