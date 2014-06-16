<?php
class News extends AbstractModel
{
		
	
	public $tableName = "ktv_news" ;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
    public function getAllNews(){
        $strQuery = 'SELECT n.id, n.title, n.summary, n.content, n.visible, n.creationDate, n.status FROM '.$this->tableName.' AS n';
        return parent::getAll($strQuery);
    }
    
    public function getNewsById($newsId) {
    	$query = 'select * from ktv_news where id='.$newsId;
    	$newInfo = $this->db->fetchRow($query);
    	return $newInfo;
    }

    public function getListNewsAdmin($intOffset, $intLimit){
        $SQL = 'SELECT SQL_CALC_FOUND_ROWS * FROM '.$this->tableName.' AS n WHERE n.status=1';
        $SQL .= NhutFunction::getOrderBY('DATE(`creationDate`)', 'DESC', $intOffset, $intLimit);
        return parent::getListAdmin($intOffset, $intLimit, $SQL);
    }
    
    public function updateNewsViewCount($newsId, $numberOfViews) {
    	if ($numberOfViews == 0) {
    		$updatedData = array ('view_count'=>  new Zend_Db_Expr('`view_count` + 1'));
    	} else {
    		$updatedData = array ('view_count'=>  $numberOfViews);
    	}
    	$condition = 'id=' . $newsId;
    	$this->db->update($this->tableName, $updatedData, $condition);
    }
    
    //Should take 5 hot news and 5 geomacy entries
    public function getHotNewsAndGeomacyEntries() {
    	$query = 'select id, (if(length(title)>30, concat(substring(title,1,30), "..."), title)) as title, image, (if(length(summary)>95, concat(substring(summary,1,95), "..."), summary)) as summary from `ktv_news` where `status`=1 and `visible`=1 order by `view_count` desc limit 0, 5';
    	$hotNewsAndGeomacy = $this->db->fetchAll($query);
    	return $hotNewsAndGeomacy;
    }
	
	
}
?>