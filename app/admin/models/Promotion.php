<?php
class Promotion extends AbstractModel{

    public $tableName = 'ktv_promotion';

    public function getAllPromotion(){
        $strQuery = 'SELECT p.id, p.name, p.content, p.order, p.available FROM '.$this->tableName.' AS p WHERE p.status=1';
        return parent::getAll($strQuery);
    }

    public function getListPromotionAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM '.$this->tableName.' AS p WHERE p.status=1';
        $SQL .= NhutFunction::getOrderBY('`order`', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>