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

    function getAllVisibleRecruitment(){
        $query = 'SELECT *
                      FROM ktv_recruitment
					  WHERE visible = 1 
                      ORDER BY postdate';
        $recruitmentlist = $this->db->fetchAll($query);
        return $recruitmentlist;
    }
}

?>