<?php
class Product
{
	private $db=null;

	function __construct(){
		$this->db=Zend_Registry::get('db');
	}
	
	function getProductsAtIndex() {
		$SQL = "select p.id, p.product_name, p.status from ktv_product as p";
	}
	
	function getRandomSizeTypeZero() {
		$num = rand(1, 4);
		if ($num%2 == 0) {
			return 11;
		} else {
			return 21;
		}
	}
	
	function getTopProductAtIndexByType($type, $isAll) {
		$sort = $type;
		if ($isAll) {
			$sort = 0;
			$type = $this->getRandomSizeTypeZero();
		}
		if ($isAll) {
			$query = 'SELECT p.id, p.product_name AS productName, p.status AS status, 
					  i.file_name AS image, i.type AS imgType FROM ktv_product AS p, ktv_product_image AS i 
					  WHERE p.sort=0 AND i.type IN (21,11) AND p.id=i.fk_product ORDER BY productName';
			$products = $this->db->fetchAll($query);
			$totalRowSize=0;//max is 4
			$randomProducts = array();
			for ($i=0; $i<count($products);) {
				$imageSize = $this->getRandomSizeTypeZero();
				if ($imageSize == 11) {
					$rowSize=1;
				} else if ($imageSize == 21) {
					$rowSize=2;
				}
				$totalRowSize = $totalRowSize + $rowSize;
				if ($totalRowSize > 4) {
					$imageSize = 11;
					$totalRowSize = 0;
				}
				if ($products[$i]["imgType"] == $imageSize) {
					$selectedProduct = $products[$i];
				} else {
					$selectedProduct = $products[$i+1];
				}
				$i = $i+2;
				if ($totalRowSize == 4) {
					$totalRowSize = 0;
				}
				array_push($randomProducts, $selectedProduct);
			}
			return $randomProducts;
		} else {
			$query = 'SELECT p.id, p.product_name, p.status,
					(SELECT i.file_name FROM ktv_product_image AS i WHERE i.fk_product=p.id AND i.type=' . $type . ') AS image,
					 '.$type.' as holderSize
				  	FROM ktv_product as p WHERE p.sort=' . $sort;
			$products = $this->db->fetchRow($query);
		}
		return $products;
	}
	
	function getProductInfoByIndex($productId)
	{
		$SQL = 'SELECT * FROM `ktv_product` AS p where p.id=' . $productId;
		$rs = $this->db->fetchRow($SQL);
		return $rs;
	}
	
	function getProductDetailImages($productId)
	{
		$SQL = 'SELECT `file_name`, `description` from `ktv_product_image` WHERE `fk_product`=' . $productId . ' AND `type`=0';
		$rs 		= $this->db->fetchAll($SQL);
		return $rs;
	}
	
	public function getProductImagesAdmin($iID){
		$SQL		= 'SELECT * FROM ktv_product_image WHERE `fk_product`=' . $iID . '';
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