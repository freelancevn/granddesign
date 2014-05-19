<?php
abstract class AbstractModel{

    public $db = null;
    
    public $tableName = null;

    function __construct(){
        $this->db = Zend_Registry::get('db');
    }

    public function getAll($strQuery){
        $rs = $this->db->fetchAll($strQuery);
        return $rs;
    }

    public function getListAdmin($intOffset, $intLimit, $SQL){
        $rs = $this->db->fetchAll($SQL);
        $total = $this->db->fetchOne('SELECT FOUND_ROWS()');
        return array (
                        'total' => $total,
                        'result' => $rs 
        );
    }

    function insert($arrData){
        $db = Zend_Registry::get('db');
        $db->insert($this->tableName, $arrData);
    }

    function getById($intId){
        $SQL = 'SELECT * FROM ' . $this->tableName . ' WHERE `id`=' . $intId;
        $arrResult = $this->db->fetchRow($SQL);
        return $arrResult;
    }

    function update($arrData, $sWhere){
        $db = Zend_Registry::get('db');
        $db->update($this->tableName, $arrData, $sWhere);
    }

    function delete($arrData){
        $j = count($arrData);
        $s1 = '';
        for($i = 0; $i < $j; $i ++) {
            $s1 .= ($s1 != '') ? ',' . $arrData [$i] : $arrData [$i];
        }
        $arrDataUpdate = array (
                        'status' => 0 
        );
        $sWhere = '`id` IN (' . $s1 . ')';
        $db = Zend_Registry::get('db');
        $db->update($this->tableName, $arrDataUpdate, $sWhere);
        return 0;
    }

}

?>