<?php
class PublicController extends Zend_Controller_Action
{

    public function indexAction()
    {
		include_once('common/header.php');
		$objProduct	= new Product();
		$objRequest = $this->_request;
		$iCategory	= $objRequest->getParam('category', 0);
		$arrProduct	= $objProduct->getProductIndex($iCategory);
		$this->view->arrProduct	= $arrProduct;
		$arrImage		= $objCategory->getImages();
		$this->view->arrImage	= $arrImage;
    }
	
	public function viewproductAction()
	{
		include_once('common/header.php');
		$objRequest = $this->_request;
		$iCategory	= $objRequest->getParam('category', 0);
		$iProduct	= $objRequest->getParam('id', 0);
		if($iProduct>0)
		{
			$objProduct	= new Product();
			$arrProduct	= $objProduct->getProductIndex($iCategory);
			$this->view->arrProduct	= $arrProduct;
			$arrDetail	= $objProduct->getProductDetail($iProduct);
			$arrImage	= $objProduct->getProductImagesAdmin($iProduct);
			$this->view->arrDetail	= $arrDetail;
			$this->view->arrImage	= $arrImage;
			$this->view->viewProdut	= 1;
			$arrShop	 = $objProduct->getShopbyCate(0,0,1);
			$this->view->arrShop	= $arrShop;
		} else {
			$this->_redirect(HOST);
		}
	}
	
	public function shopnoithatAction()
	{
		include_once('common/header.php');
		$objRequest = $this->_request;
		$iShop			= $objRequest->getParam('id', 0);
		$iProID			= $objRequest->getParam('proid', 0);
		$objCategory	= new Category();
		$objProduct		= new Product();
		$arrCate		= array(1=>array('name'=>'Phòng Khách'), 2=>array('name'=>'Bếp & Phòng Ăn'), 3=>array('name'=>'Phòng Ngủ'), 4=>array('name'=>'Phòng Vệ Sinh'), 5=>array('name'=>'Đèn Nội Thất'));
		$arrShop		= $objCategory->getAllCategory(1);
		$strName		= '';
		foreach($arrShop as $rRows)
		{
			if($rRows['cate_shop']==1) $arrCate[1]['list'][]	= $rRows;
			if($rRows['cate_shop']==2) $arrCate[2]['list'][]	= $rRows;
			if($rRows['cate_shop']==3) $arrCate[3]['list'][]	= $rRows;
			if($rRows['cate_shop']==4) $arrCate[4]['list'][]	= $rRows;
			if($rRows['cate_shop']==5) $arrCate[5]['list'][]	= $rRows;
			if($iShop==$rRows['id'])
			{
				$strName=$rRows['category_name'];
			}
		}
		$this->view->arrShop	= $arrCate;
		$arrList		= $objProduct->getShopbyCate($iShop,$iProID);
		if($iProID>0)
		{
			$arrDetailShop		= $objProduct->getDetailShop($iProID);
			$this->view->iProID	= $iProID;
			$this->view->arrDetailShop	= $arrDetailShop;
		}
		$this->view->arrList	= $arrList;
		$this->view->strName	= $strName;
		$this->view->iShop		= $iShop;
	}
	
	public function xuongsanxuatAction()
	{
		include_once('common/header.php');
		$objConfig	= new Config();
		$arrConfig	= $objConfig->getConfig('FACTORY');
		$this->view->arrConfig		= $arrConfig;
	}
	
	public function aboutAction()
	{
		include_once('common/header.php');
		$objConfig	= new Config();
		$arrConfig	= $objConfig->getConfig('ABOUT');
		$this->view->arrConfig		= $arrConfig;
		$arrImage		= $objCategory->getImages();
		$this->view->arrImage	= $arrImage;
		$arrTemp		= $objConfig->getAllInfo();
		$arrInfoHCM		= array();
		$arrInfoHN		= array();
		foreach($arrTemp as $rRows)
		{
			if($rRows['type']==0)
				$arrInfoHCM[]	= $rRows;
			else
				$arrInfoHN[]	= $rRows;
		}
		$this->view->arrInfoHCM	= $arrInfoHCM;
		$this->view->arrInfoHN	= $arrInfoHN;
	}
	
	public function contactAction()
	{
		include_once('common/header.php');
		$arrImage		= $objCategory->getImages();
		$this->view->arrImage	= $arrImage;
	}
	
	public function serviceAction()
	{
		include_once('common/header.php');
		$arrImage		= $objCategory->getImages();
		$this->view->arrImage	= $arrImage;
		$objService		= new Service();
		$arrService		= $objService->getListServiceAdmin(0,20);
		$this->view->arrService	= $arrService;
	}
	
	public function servicedetailAction()
	{
		include_once('common/header.php');
		$objRequest = $this->_request;
		$iShop			= $objRequest->getParam('id', 0);
		$iDetailID		= $objRequest->getParam('proid', 0);
		$arrImage		= $objCategory->getImages();
		$this->view->arrImage	= $arrImage;
		$objService		= new Service();
		$arrService		= $objService->getListServiceAdmin(0,20, $iShop);
		$this->view->arrService	= $arrService;
		$arrDetail		= $objService->getServiceAdmin($iDetailID);
		$this->view->arrDetail	= $arrDetail;
	}
	
	public function projectsAction()
	{
	}

}

