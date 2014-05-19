<?php
class News extends AbstractModel
{
		
	
	public $tableName = "ktv_news" ;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	public function getAllCategory($iType)
	{
		$strQuery	= 'SELECT c.id, c.category_name, c.type, c.date_create, c.`status`, c.cate_shop, c.sort FROM ktv_category AS c WHERE `status`=1 AND c.type=' . $iType;
		$rs 		= $this->db->fetchAll($strQuery);
		return $rs;
	}
	
	
    
    public function getAllNews(){
        $strQuery = 'SELECT n.id, n.title, n.summary, n.content, n.visible, n.creationDate, n.status FROM '.$this->tableName.' AS n';
        return parent::getAll($strQuery);
    }

    public function getListNewsAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM '.$this->tableName.' AS n WHERE n.status=1';
        $SQL .= NhutFunction::getOrderBY('DATE(`creationDate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }
	
	
}
?>