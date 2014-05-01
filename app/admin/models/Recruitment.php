<?php
class Recruitment extends AbstractModel{

    public $tableName = "ktv_recruitment" ;
    
    public function getAllRecruitment(){
        $strQuery = 'SELECT n.id, n.title, n.summary, n.content, n.visible, n.creationDate, n.status FROM '.$this->tableName.' AS r';
        return parent::getAll($strQuery);
    }

    public function getListRecruitmentAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM '.$this->tableName.' AS r WHERE r.status=1';
        $SQL .= NhutFunction::getOrderBY('DATE(`creationDate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>