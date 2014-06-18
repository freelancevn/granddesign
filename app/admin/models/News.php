<?php
class News extends AbstractModel {

    public $tableName = "ktv_news" ;
    
    public function getAllNews(){
        $strQuery = 'SELECT n.id, n.title, n.summary, n.image,n.content, n.visible, n.creationDate, creationDate, newstype FROM '.$this->tableName.' AS n';
        return parent::getAll($strQuery);
    }

    public function getListNewsAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM '.$this->tableName.' AS n';
        $SQL .= NhutFunction::getOrderBY('DATE(`creationDate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>