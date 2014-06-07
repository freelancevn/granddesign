<?php
class Recruitment extends AbstractModel {

    public $tableName = 'ktv_recruitment';
    
    // COLUMN NAMES
    const TITLE = 'title';

    const SUMMARY = 'summary';

    const CONTENT = 'content';

    const POSTDATE = 'postdate';

    const DEADLINE = 'deadline';

    const VISIBLE = 'visible';

    public function getAllRecruitment(){
        $strQuery = 'SELECT * FROM ' . $this->tableName;
        return parent::getAll($strQuery);
    }

    public function getListRecruitmentAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM ' . $this->tableName . ' AS r';
        $SQL .= NhutFunction::getOrderBY('DATE(`postdate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>