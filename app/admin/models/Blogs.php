<?php
class Blogs extends AbstractModel {

    public $tableName = "ktv_blogs";

    public function getAllBlogs(){
        $strQuery = 'SELECT b.id, b.description, b.link, b.visible, b.status FROM ' . $this->tableName . ' AS b';
        return parent::getAll($strQuery);
    }

    public function getListBlogsAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM ' . $this->tableName . ' AS b WHERE b.status=1';
        $SQL .= NhutFunction::getOrderBY('id', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }

}

?>