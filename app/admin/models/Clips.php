<?php
class Clips extends AbstractModel {

    public $tableName = "ktv_clips";

    public function getAllClips(){
        $strQuery = 'SELECT c.id, c.description, c.embed, c.visible FROM ' . $this->tableName . ' AS c';
        return parent::getAll($strQuery);
    }

    public function getListClipsAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM ' . $this->tableName . ' AS c';
        $SQL .= NhutFunction::getOrderBY('id', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>