<?php
class Product
{
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}

	
	function getProductIndex($iCategory=0)
	{
		$SQL		= 'SELECT p.id, p.product_name, p.fk_category, p.investors, p.unbuilt_area, p.address, p.time_finish, p.fk_imges, p.date_create, 
		p.`status`, p.sort, p.ishowhot, c.category_name, 
		(SELECT i.file_name FROM ktv_product_image AS i WHERE i.fk_product=p.id ORDER BY i.sort DESC LIMIT 0,1 ) as file_name 
		FROM ktv_product AS p INNER JOIN ktv_category AS c ON p.fk_category = c.id 
		WHERE p.`status`=1 AND c.`status`=1';
		if($iCategory==0)
			$SQL		.= '  AND p.ishowhot=1';
		else 
			$SQL		.= '  AND p.fk_category=' . $iCategory;
		$SQL			.= '  ORDER BY p.sort DESC';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
	function getProductDetail($iProductID)
	{
		$SQL		= 'SELECT p.id, p.product_name, p.fk_category, p.investors,p.unbuilt_area, p.address, p.time_finish, p.fk_imges, 
		p.date_create, p.`status`, p.sort, c.category_name, (SELECT count(m.id) FROM ktv_product_image as m WHERE p.id=m.fk_product) as countImages FROM ktv_product AS p INNER JOIN ktv_category AS c ON p.fk_category = c.id 
		WHERE p.`status`=1 AND c.`status`=1 AND p.id=' . $iProductID;
		$rs 		= $this->db->fetchRow($SQL);
		return $rs;
	}
	
	public function getProductImagesAdmin($iID){
		$SQL		= 'SELECT * FROM ktv_product_image WHERE `fk_product`=' . $iID . ' ORDER BY sort DESC';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
	public function getShopbyCate($iCategory, $iProduct=0, $iShow = 0)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.fk_category, s.feed, s.size, s.price, s.description, s.img_1, s.img_2, 
		s.img_3, s.`status`, s.sort, c.category_name FROM ktv_shop AS s INNER JOIN ktv_category AS c ON s.fk_category = c.id  
		WHERE s.`status`=1 AND c.`status`=1';
		if($iCategory>0)
		$SQL		.= ' AND  s.fk_category=' . $iCategory;
		if($iProduct>0)
		$SQL		.= ' AND  s.id!=' . $iProduct;
		if($iShow==1)
		$SQL		.= ' AND  s.showproduct=1';	
		$SQL		.= ' ORDER BY s.sort  DESC';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
	public function getDetailShop($iProduct)
	{
		$SQL		= 'SELECT s.id, s.`name`, s.fk_category, s.feed, s.size, s.price, s.description, s.img_1, s.img_2, 
		s.img_3, s.`status`, s.sort, c.category_name FROM ktv_shop AS s INNER JOIN ktv_category AS c ON s.fk_category = c.id  
		WHERE s.`status`=1 AND c.`status`=1 AND  s.id=' . $iProduct .  '  ORDER BY s.sort  DESC';		
		$rs 		= $this->db->fetchRow($SQL);
		return $rs;
	}
}
?>