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
	
	function getRandomProductByDisplaySize($products) {
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
		
	}
	
	function getTopProductByDisplaySizeAndCategory($displaySize, $isAll) {
		$sort = $displaySize;
		if ($isAll) {
			$sort = 0;
			$displaySize = $this->getRandomSizeTypeZero();
		}
		if ($isAll) {
			$query = 'SELECT p.id, p.product_name AS productName, p.status AS status, 
					  i.file_name AS image, i.type AS imgType FROM ktv_product AS p, ktv_product_image AS i 
					  WHERE p.sort=0 AND i.type IN (21,11) AND p.id=i.fk_product ORDER BY `date_create`, `productName`';
			$products = $this->db->fetchAll($query);
			return $this->getRandomProductByDisplaySize($products);
		} else {
			$query = 'SELECT p.id, p.product_name, p.status,
					(SELECT i.file_name FROM ktv_product_image AS i WHERE i.fk_product=p.id AND i.type=' . $displaySize . ') AS image,
					 '.$displaySize.' as holderSize
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
	
	public function updateProductViewCount($productId, $numberOfViews) {
		if ($numberOfViews == 0) {
			$arrayData = array('view_count' => new Zend_Db_Expr('`view_count` + 1'));
		} else {
			$arrayData = array('view_count' => $numberOfViews);
		}
		$whereClause = '`id`=' . $productId;
		$this->db->update('ktv_product', $arrayData, $whereClause);
	}
	
	public function getProductsByCat($catId) {
		$topId = '(';
		$productsByCategory = array();
		$query = 'select p.id, p.product_name as productName, i.file_name as image, i.type as imgType from `ktv_product` as p, `ktv_product_image` as i where p.fk_category=' . $catId . ' and i.fk_product=p.id and i.type=22 order by p.`view_count` desc limit 1';
		$topOne = $this->db->fetchRow( $query );
		
		if (isset($topOne['id'])) {
			$topId = $topId . $topOne ['id'];
			array_push ( $productsByCategory, $topOne);
		}
		
		$query = 'select p.id as id, p.product_name as productName, i.file_name as image, i.type as imgType from `ktv_product` as p, `ktv_product_image` as i where p.fk_category=' . $catId . ' and i.fk_product=p.id and i.type=21 order by p.`view_count` desc limit 1, 2';
		$topTwoThree = $this->db->fetchAll ( $query );
		if (isset($topTwoThree[0]['id'])) {
			if ($topId != '(') {
				$topId = $topId . ',';
			}
			array_push ( $productsByCategory, $topTwoThree [0]);
			$topId = $topId . $topTwoThree[0]['id'];
		}
		if (isset($topTwoThree[1]['id'])) {
			if ($topId != '(') {
				$topId = $topId . ',';
			}
			array_push ( $productsByCategory, $topTwoThree [1]);
			$topId = $topId . $topTwoThree[1]['id'];
		}
		$topId = $topId . ')';
		if($topId != '()') {
			$query = 'select p.id as id, p.product_name as productName, i.file_name as image, i.type as imgType from `ktv_product` as p, `ktv_product_image` as i where p.fk_category=' . $catId . ' and p.id not in' . $topId . ' and i.fk_product=p.id and i.type in (21,11) order by p.`date_create`';
		} else {
			$query = 'select p.id as id, p.product_name as productName, i.file_name as image, i.type as imgType from `ktv_product` as p, `ktv_product_image` as i where p.fk_category=' . $catId . ' and i.fk_product=p.id and i.type in (21,11) order by p.`date_create`';
		}
		$otherProducts = $this->db->fetchAll ( $query );
		$randomProducts = $this->getRandomProductByDisplaySize($otherProducts);
		array_push ( $productsByCategory, $randomProducts);
		return $productsByCategory;
	}
	
	public function getBestProjects() {
		$query = 'select p.id, (if(length(p.product_name)>50, concat(substring(p.product_name,1,50), "..."), p.product_name)) as product_name, (if(length(p.introduce)>95, concat(substring(p.introduce,1,95), "..."), p.introduce)) as introduce, p.view_count, i.file_name from ktv_product as p, ktv_product_image as i where i.fk_product=p.id and i.type=22 order by p.view_count desc limit 0,9';
		$bestProjects = $this->db->query($query);
		return $bestProjects;
	}
	
}
?>