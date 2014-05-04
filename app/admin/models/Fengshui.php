<?php
class Fengshui extends AbstractModel{

    public $tableName = "ktv_fengshui";

    public function getAllFengshui(){
        $strQuery = 'SELECT n.id, n.title, n.summary, n.content, n.visible, n.creationDate, n.status FROM ' . $this->tableName . ' AS n';
        return parent::getAll($strQuery);
    }

    public function getListFengshuiAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM ' . $this->tableName . ' AS n WHERE n.status=1';
        $SQL .= NhutFunction::getOrderBY('DATE(`creationDate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>