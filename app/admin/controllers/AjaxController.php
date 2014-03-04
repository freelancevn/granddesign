<?php
class AjaxController extends Zend_Controller_Action
{
	function uploadfileAction()
	{
		$arrData 		= explode("@@",$_POST['folder']);
		$iUserID		= $arrData[1];		
		if (!empty($_FILES) && $iUserID>0) {
			$tempFile 	= $_FILES['Filedata']['tmp_name'];			
			$targetPath = $_SERVER['DOCUMENT_ROOT'] . '/data/upload/';
			$arrF 		= explode(".",$_FILES['Filedata']['name']);
			$sTime 		= mktime() + microtime();
			$sFileName	= $sTime . '.' . $arrF[count($arrF)-1];
			$targetFile = str_replace('//','/',$targetPath) . $sFileName;			
			move_uploaded_file($tempFile,$targetFile);
			$value 			= hash('crc32',$sTime);
			$firstDir 		= substr($value,6,2);
			$secondDir 		= substr($value,4,2);
			$strPathLarge	= $_SERVER['DOCUMENT_ROOT'] .  '/upload/product/' . $firstDir . '/' . $secondDir . '/';			
			$strPathThumb	= $_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/product/' . $firstDir . '/' . $secondDir . '/';
			NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload/product/' . $firstDir . '/' );
			NhutFunction::mkDirectory($_SERVER['DOCUMENT_ROOT'] .  '/upload_thumb/product/' . $firstDir . '/');
			NhutFunction::mkDirectory($strPathLarge);
			NhutFunction::mkDirectory($strPathThumb);
			$sFileName		= $value . '.' . strtolower($arrF[count($arrF)-1]);
			$sFileFull		= $strPathLarge . $sFileName;
			$sFileThumb		= $strPathThumb . $sFileName;
			copy($targetFile,$sFileFull);
			NhutFunction::createThumb($targetFile,$sFileThumb,200,200,100);	
			$strImages		= $firstDir . '/' . $secondDir . '/' . $sFileName;
			$objProduct		= new Product();
			$arrData		= array('file_name'=>$strImages, 'fk_product'=>$iUserID);
			$objProduct->insertProductImages($arrData);
			@unlink($targetFile);
		}
		exit();
	}
	
}
?>