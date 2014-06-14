<?php
class PublicController extends Zend_Controller_Action
{

    public function indexAction()
    {
		include_once('common/header.php');
		$objProduct	= new Product();
		$indexPicture = new Picture();
		$this->view->sliderPics = $indexPicture->getListSliderPictures();
		$this->view->topOne = $objProduct->getTopProductByDisplaySizeAndCategory(22, false);
		$this->view->topTwo = $objProduct->getTopProductByDisplaySizeAndCategory(21, false);
		$this->view->topThree = $objProduct->getTopProductByDisplaySizeAndCategory(11, false);
		$this->view->otherProducts = $objProduct->getTopProductByDisplaySizeAndCategory(0, true);
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
	
	public function newsAction() {
		
		include_once ('common/header.php');		
		$objNews = new News();		
		$arrList = $objNews->getListNewsAdmin(0, 10);
		$this->view->arrList = $arrList ['result'];
		$this->view->intTotal = $arrList ['total'];		
	}
	
	/*
	 * Should:
	 * + Return the project which has greatest number of view_count and its represent 2x2 image
	 * + Return projects which have number of view_count at 2nd and 3rd position and their 2x1 image
	 * + Return all projects which orders by date_create (do not count 3 top view_count project)
	 */
	public function projectsAction()
	{
		include_once('common/header.php');
		$catId = $this->_request->getParam('catId');
		$productsArray = array();
		if ($catId > 0) {
			$objProduct	= new Product();
			$projectsByCat = $objProduct->getProductsByCat($catId);
			$this->view->topOne = $projectsByCat[0];
			$this->view->topTwo = $projectsByCat[1];
			$this->view->topThree = $projectsByCat[2];
			$this->view->otherProjects = $projectsByCat[3];
		} else {
			$this->redirect(HOST);
		}
	}
	
	public function projectdesignAction()
	{
		include_once('common/header.php');
		$objRequest = $this->_request;
		$projectId	= $objRequest->getParam('pid', 0);
		if($projectId > 0)
		{
			$objProduct	= new Product();
			$objProduct->updateProductViewCount($projectId, 0);
			$this->view->productDetails = $objProduct->getProductInfoByIndex($projectId);
			$this->view->productImages = $objProduct->getProductDetailImages($projectId);
		} else {
			$this->_redirect(HOST);
		}
	}
	
	public function newsdetailAction() {
	
	}

}

