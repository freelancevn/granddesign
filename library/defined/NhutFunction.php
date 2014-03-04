<?php
class NhutFunction {
	
	public function __construct(){
		
	}
	
	static public function getYear($iYearYoung=16, $iYearOld=60)
	{
		$iYear		= date('Y');
		$iYearFrom 	= $iYear - $iYearYoung;
		$iYearTo 	= $iYear - $iYearOld;
		$arrYear	= array();		
		for($i=$iYearFrom;$i>$iYearTo;$i--)
		{
			$arrYear[]	= $i;
		}
		return $arrYear;
	}
	
	static function urlPaging($isMultiParam = 0)
	{
		$strUrl = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
		if ($isMultiParam == 0) {
			$intChr	= '?';
			$intPos	= strpos($strUrl, '?page=');
		} else {
			$intChr	= '&';
			$intPos	= strpos($strUrl, '&amp;page=');
			if ($intPos === false) {
				$intPos	= strpos($strUrl, '&page=');
			}
		}
		if ($intPos != false) {
			$strUrl = substr($strUrl, 0, $intPos);
		}
		return $strUrl . $intChr;
	}
	
	static public function createPassword($iLen) {
		$sChars = "1234567890abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		$i = 0;
		$sPass = "";
		while ($i <= $iLen) {
			$sPass .= $sChars{mt_rand(0,strlen($sChars)-1)};
			$i++;
		}
		return $sPass;
	}
	
	public function postDispatch()
    {	
		//Profile DB
    		$iS		= isset($_SESSION['iShowQuery'])?$_SESSION['iShowQuery']:0;
		if($iS	== 0){
			//Profile DB
			$db = Zend_Registry::get('db');
			$profiler = $db->getProfiler();
			if($profiler->getEnabled() == false) return;
			$totalTime    = $profiler->getTotalElapsedSecs();
			$queryCount   = $profiler->getTotalNumQueries();
			$longestTime  = 0;
			$longestQuery = null;		
			$queries = "";		
			$queryString = '<div align="left">';
			$queryString.= 'Executed ' . $queryCount . ' queries in ' . $totalTime . ' seconds' . "<BR>";
			if ($queryCount){
				foreach ($profiler->getQueryProfiles() as $key => $query) {
					if ($query->getElapsedSecs() > $longestTime) {
						$longestTime  = $query->getElapsedSecs();
						$longestQuery = $query->getQuery();		        
					}
					$queries.= " - $key : " . $query->getQuery() . "<BR>";
				}
				$queryString.= 'Average query length: ' . $totalTime / $queryCount .   ' seconds' . "<BR>";
				$queryString.= 'Queries per second: ' . $queryCount / $totalTime . "<BR>";
				$queryString.= 'Longest query length: ' . $longestTime . "<BR>";
				$queryString.= "Longest query: \n" . $longestQuery . "<BR>";
				$queryString.= "____________________________________________________________________________<BR>";
				$queryString.= $queries;	
			}		
			$queryString.= '</div>';
			echo $queryString;
			//$this->view->queryString = $queryString;
		}
		$_SESSION['iShowQuery']	= 0;
    }  
	
	private function getSplitURL($arg2, $arrSplitStr, &$arrAlias){
		$key=$nextKey='';
		
   		if(!is_null($arrSplitStr[0])){
	    	$hashPattern=explode($arrSplitStr[0],$arg2);
	   		$arrAlias[]=$hashPattern[0];
	   		$key=$arrSplitStr[0]; 
   			$nextKey=isset($hashPattern[1])?$hashPattern[1]:'';
   			
   		}else {
   			$arrAlias[]=$arg2;
   		}
   		
   		if(self::checkNullIndex($hashPattern,1)!='' AND self::checkNullIndex($arrSplitStr,1)!=''){
	    	$hashPattern=explode($arrSplitStr[1],$hashPattern[1]);
	   		$arrAlias[]=$hashPattern[0];
	   		$key=$arrSplitStr[1];
   			$nextKey=isset($hashPattern[1])?$hashPattern[1]:'';
   				
   		}else if($nextKey!=''){
   			$arrAlias[]=$nextKey;
   			$nextKey ='';
   		}
   		if(self::checkNullIndex($hashPattern,2)!='' AND self::checkNullIndex($arrSplitStr,2)!=''){
	    	$hashPattern=explode($arrSplitStr[2],$hashPattern[2]);
	   		$arrAlias[]=$hashPattern[0];
	   		$key=$arrSplitStr[2];
	   		
   		}else if($nextKey!=''){
   			$arrAlias[]=$nextKey;
   			
   		}
   		
   		$arrAlias[]=str_replace('-','',$key);
   		   		
   		return $arrAlias;
	}
	
	private function detectPage($argURL){
		$arrURL_key=Zend_Registry::get('arrURL_key');
		$arrListKey=$arrURL_key['list_key'];
		foreach ($arrListKey as $val) {
	     	if(strpos($argURL,$val)!==false){
	     		
	     		return $val;
	     	}
		}
		return $arrListKey[0];
	}
	/**
	 * Get param from rewrited url
	 *
	 * @return array
	 */
	public function getParamRewrite(){ 
    	$arg1=Zend_Controller_Action::getRequest()->arg1;
    	$arg2=Zend_Controller_Action::getRequest()->arg2;
		$arrURL_key=Zend_Registry::get('arrURL_key');
    	
		$url_type=array();
     	$arg1_alias=$arg2_alias='';
     	
     	if(strpos($arg1,$arrURL_key['by_city'])!==false){
     		$url_type['key']='by_city';
     	}
		elseif(strpos($arg1,$arrURL_key['by_register'])!==false){
     		$url_type['key'] = 'by_register';
     		
     	}
     	$key_1 = $arrURL_key[$url_type['key']];
     	
     	$arrAlias=array();
     	$arrAlias[]=$url_type['key'];
     	
    	if(strpos($arg1, $key_1)!==false){
	    	$hashPattern=explode($key_1,$arg1);
	    	if(count($hashPattern)>0){
	    		$arrAlias[]=$hashPattern[1];
	    	}    	
    	}
     	if(!is_null($arg2)){
     		$k=self::detectPage($arg2);
			$arrSplitStr=$arrURL_key[$url_type['key'].'_'.$k];
     		$arrAlias=self::getSplitURL($arg2,$arrSplitStr,$arrAlias);
     		
     	}
		if(strpos($url_type['key'],'by_star')!==false){
			$arrAlias [1] = intval($arrAlias[1]);
		}
     	
		return $arrAlias;
	}
	
	
	/**
	 * Get value of array, at index location
	 *
	 * @param array $arr
	 * @param index $ind
	 * @param string $key
	 * @return string
	 */
	public function getArrayVal($arr, $ind, $key=''){ 
		if(isset($arr[$ind])) {
			return $arr[$ind][$key];
		}
		return '';
	}
	/**
	 * Prevent access to unexist index
	 *
	 * @param array $arr
	 * @param integer $ind
	 * @return string
	 */
	public function checkNullIndex($arr, $ind){
		if(isset($arr[$ind])) {
			return $arr[$ind];
		}
		return '';
	}
	
	
	public function removeNull($text, $key='Not Completed'){
		$arrLang=Zend_Registry::get('translator');
		
		if(empty($text) OR is_null($text) OR trim($text)==''){
			return $arrLang->_($key);
		}
		return $text;
	}
	
	public function callImage($path, $no_image='no_img.png'){
		if(empty($path) OR is_null($path) OR trim($path)==''){
			return $no_image;
		}
		return $path;
	}
	
	static function subString($text, $maxLength = 15, $dot = "..."){
		$words = preg_split('/\s/', $text); 
		$count=count($words);
		if($count<=$maxLength) {
			$result=$text;
		}else{
			$result='';
			for ($i=0; $i<$maxLength; $i++){
				$result.=$words[$i].' ';
			}
		}
		return $result.$dot;
	}
	
	public function check_email($email) {
		return eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $email);
	}
	public function check_username($username) {
		return preg_match('/^[a-z0-9_]+$/',$username);
		
	}
	/**
	 * Get List of array by $key
	 *
	 * @param array $array	
	 * @param string $key
	 * @return string $strLic
	 */
	public  function getListFromArray($array,$key,$is_array=0) {
		$count_array = count($array);
		$strLic=$comma3='';
		for ($i = 0; $i < $count_array; $i++) {
			$strLic .=$comma3.$array[$i][$key];			
			$comma3=',';
		}
		if($is_array!=0)
		$strLic=split(",",$strLic);
		return $strLic;
	}
	/**
	 * Change key of array 
	 *
	 * @param array $array	
	 * @param string $key1
	 * @param string $key1
	 * @return array $strLic
	 */
	public  function changeKeyArray($array, $key1, $key2='', $key3='') {
		$count_array = count($array);
		$newArr=Array();
		for ($i = 0; $i < $count_array; $i++) {
			$newKey=$array[$i][$key1];
			# combine two 2 key 
			if($key2!='') $newKey.='.'.$array[$i][$key2];
			if($key3!='') $newKey.='.'.$array[$i][$key3];
			$newArr[$newKey] = $array[$i];			
		}
		unset($count_array);
		unset($array); unset($key1); unset($key2);
		
		return $newArr;
	}

	public  function changeArray($array, $key,$bList=false) {
		$count_array = count($array);
		$newArr=Array();
		for ($i = 0; $i < $count_array; $i++) {
			$newArr[] = $array[$i][$key];			
		}
		if($bList){
			if(count($newArr)>0){
				$newArr=array_unique($newArr);
				$strLic=implode(',', $newArr);
			} else {
				$strLic='-1';
			}
			return $strLic;
		} else {
			return $newArr;
		}
		unset($count_array);
		unset($array); unset($key);
	}
	/**
	 * get order by 
	 *	 
	 * @return String $strLic
	 */
	public  function getOrderBY($order='',$sort='', $offset=0, $size='all') {
		$SQL='';
		if(trim($order)!='') {
			$SQL.=" ORDER BY ".$order;
		}
		if(trim($sort)!='') {
			$SQL.=" ".$sort;
		}
		if($size!='all') {
			$SQL.=" LIMIT $offset, $size";
		}
		return $SQL;
	}
	
	/**
	 * get param type int 
	 * @param $request,$nameparam=''
	 * @return int 
	 */
	public  function getInt($request,$nameparam='') {		
		return intval(Zend_Controller_Action::getRequest()->$nameparam);
	}
	
	/**
	 * get param type String 
	 * @param $request,$nameparam=''
	 * @return String 
	 */
	public  function getString($request,$nameparam='',$tab='') {
			
		return  htmlspecialchars(strip_tags(Zend_Controller_Action::getRequest()->$nameparam,$tab));
	}
	
	/**
	 * get paging 
	 * @param $request,$data='',$limit=20,$nameparam='page'
	 * @return $paginator 
	 */
	public  function getPaging_bk($request,$data='',$limit=20,$nameparam='page') {		
		Zend_View_Helper_PaginationControl::setDefaultViewPartial('main/paging.phtml');
		$paginator = Zend_Paginator::factory($data);
		$paginator->setItemCountPerPage($limit);
		$paginator->setCurrentPageNumber($request->getParam($nameparam,1));
		return $paginator;
	}
	
	public function getRandomByArray($arr=''){
		$arrOut=Array();
		if($arr!=''){
			$iCount=count($arr);
			for($i=0;$i<$iCount;$i++){
				for($j=0;$j<=$i;$j++){
					$arrOut[]=$arr[$i];
				}
			}
			$ran=rand(0,(count($arrOut)-1));
			//var_dump($arrOut);
			return $arrOut[$ran];
		}
	}
	
	function convertnovn($string, $length = 100, $strSymbol='-', $isToLower = 1)
	 {
	  $arrCharFrom= array(
	       "ạ","á","à","ả","ã","Ạ","Á","À","Ả","Ã",
	       "â","ậ","ấ","ầ","ẩ","ẫ","Â","Ậ","Ấ","Ầ","Ẩ","Ẫ",
	       "ă","ặ","ắ","ằ","ẳ","ẫ","Ă","Ắ","Ằ","Ẳ","Ẵ","Ặ",
	       "ê","ẹ","é","è","ẻ","ẽ","Ê","Ẹ","É","È","Ẻ","Ẽ",
	       "ế","ề","ể","ễ","ệ","Ế","Ề","Ể","Ễ","Ệ",
	       "ọ","ộ","ổ","ỗ","ố","ồ","Ọ","Ộ","Ổ","Ỗ","Ố","Ồ","Ô","ô",
	       "ó","ò","ỏ","õ","Ó","Ò","Ỏ","Õ",
	       "ơ","ợ","ớ","ờ","ở","ỡ",
	       "Ơ","Ợ","Ớ","Ờ","Ở","Ỡ",
	       "ụ","ư","ứ","ừ","ử","ữ","ự","Ụ","Ư","Ứ","Ừ","Ử","Ữ","Ự",
	       "ú","ù","ủ","ũ","Ú","Ù","Ủ","Ũ",
	       "ị","í","ì","ỉ","ĩ","Ị","Í","Ì","Ỉ","Ĩ",
	       "ỵ","ý","ỳ","ỷ","ỹ","Ỵ","Ý","Ỳ","Ỷ","Ỹ",
	       "đ","Đ"
	       );
	    $arrCharEndNoVn= array(
	    "a","a","a","a","a","A","A","A","A","A",
	    "a","a","a","a","a","a","A","A","A","A","A","A",
	    "a","a","a","a","a","a","A","A","A","A","A","A",
	    "e","e","e","e","e","e","E","E","E","E","E","E",
	    "e","e","e","e","e","E","E","E","E","E",
	    "o","o","o","o","o","o","O","O","O","O","O","O","O","o",
	    "o","o","o","o","O","O","O","O",
	    "o","o","o","o","o","o",
	    "O","O","O","O","O","O",
	    "u","u","u","u","u","u","u","U","U","U","U","U","U","U",
	    "u","u","u","u","U","U","U","U",
	    "i","i","i","i","i","I","I","I","I","I",
	    "y","y","y","y","y","Y","Y","Y","Y","Y",
	    "d","D"
	    );
	  $arrCharFilter = str_replace($arrCharFrom,$arrCharEndNoVn,trim($string));
	  if (mb_strlen($arrCharFilter,"UTF-8") > $length) {
	   $arrCharFilter = mb_substr($arrCharFilter, 0, $length,"UTF-8");
	  }
	  $arrCharFilter = preg_replace('/[\W|_]+/',$strSymbol,$arrCharFilter);
	  return $isToLower ? strtolower($arrCharFilter) : $arrCharFilter;
	 }
	 
	 function truncate($string, $length = 80, $etc = '...', $break_words = false, $middle = false)
	{
	    if ($length == 0)
	        return '';
	
	    if (is_callable('mb_strlen')) {
	        if (mb_detect_encoding($string, 'UTF-8, ISO-8859-1') === 'UTF-8') {
	            // $string has utf-8 encoding
	            if (mb_strlen($string) > $length) {
	                $length -= min($length, mb_strlen($etc));
	                if (!$break_words && !$middle) {
	                    $string = preg_replace('/\s+?(\S+)?$/u', '', mb_substr($string, 0, $length + 1));
	                }
	                if (!$middle) {
	                    return mb_substr($string, 0, $length) . $etc;
	                } else {
	                    return mb_substr($string, 0, $length / 2) . $etc . mb_substr($string, - $length / 2);
	                }
	            } else {
	                return $string;
	            }
	        }
	    }
	    // $string has no utf-8 encoding
	    if (strlen($string) > $length) {
	        $length -= min($length, strlen($etc));
	        if (!$break_words && !$middle) {
	            $string = preg_replace('/\s+?(\S+)?$/', '', substr($string, 0, $length + 1));
	        }
	        if (!$middle) {
	            return substr($string, 0, $length) . $etc;
	        } else {
	            return substr($string, 0, $length / 2) . $etc . substr($string, - $length / 2);
	        }
	    } else {
	        return $string;
	    }
	}
	
	function convert($str,$lang1, $lang2){
		$en = array(
                'search',
                'ranking-by'
	            );
		$fr = array(
                'rechercher',
                'classement'
	            ); 
		$vi = array (
                 'tim-kiem',
                'xep-hang-resort'
			);
		if ($lang1===$lang2 && !$this->NEW_URL) return $str;
        $uri = explode('/', $str);    
		$return = '/'.str_replace($$lang1, $$lang2, $uri[1]);
        if (self::checkNullIndex($uri, 2)){        
            $array1 = array_slice( $$lang1, 7, 17);
            $array2 = array_slice( $$lang2, 7, 17);
            $return .= '/'.str_replace($array1, $array2, $uri[2]);
        }
		return $return;
	}
	
	function sqlSearch($keyword, $sField) {
	   if ($keyword=='') return '';
	   $keyword=addslashes($keyword);
       $keyword = preg_replace('/\s\s+/', '%', $keyword);
       $keyword = str_replace(' ', '%', $keyword);
       $like_cond = " and $sField like '%$keyword%'";
       
	   return $like_cond;
	}
	
	
	static function mkDirectory($path)
	{
		#$dirs 	= explode('/' , $path);
		#$count 	= count($dirs);
		#$path	= '';				
		try {
			if (!is_dir($path) && !mkdir($path,0777)) {
					return false; 
			} else {
				chmod($path,0777);
			}
		    /*for ($i = 0; $i < $count; ++$i) {		
				if ($dirs[$i] != '') {
					if($i>0)
				        $path .= '/' . $dirs[$i];
					else $path	= $dirs[$i];
					//if($i>=6){						
	       				if (!is_dir($path) && !mkdir($path,0777)) {
	       				     	return false; 
	        			//} else {
							//chmod($path,0777);
						}
					//}

				}
	    	}*/
		} catch (Exception $e){}
	    return true;
	}
	
	static public function userUploadImageError($oFile)
	{
		$iError		= 0;
		$arrType = array('image/pjpeg', 'image/jpg', 'image/jpeg', 'image/gif', 'image/png');
		if (! isset( $oFile ) || is_null ( $oFile['tmp_name'] ) || $oFile['name'] == '')
			return 2;		
		switch ($oFile ["error"]) {
			case UPLOAD_ERR_OK :
				break;
			case UPLOAD_ERR_INI_SIZE :
				$iError	= 1;
				break;
			case UPLOAD_ERR_FORM_SIZE :
				$iError	= 1;
				break;
			case UPLOAD_ERR_PARTIAL :
				$iError	= 1;
				break;
			case UPLOAD_ERR_NO_FILE :
				$iError	= 1;
				break;
			case UPLOAD_ERR_NO_TMP_DIR :
				$iError	= 1;
				break;
			case UPLOAD_ERR_CANT_WRITE :
				$iError	= 1;
				break;
			default :
				$iError	= 1;
				break;
		}
		if($iError==0)
		{
			if (!in_array($oFile['type'], $arrType)) {
				$iError	= 3;
			}
			$intMaxSize		= 5*1024*1024;
			if ($oFile['size'] <= 0 || $oFile['size'] > $intMaxSize) {
				$iError	= 1;
			}
		}
		return $iError;
	}
	
	static public function usersUploadImage($oFile)
	{	
		$sTime 			= mktime() + microtime();
		$value 			= hash('crc32',$sTime);
		$firstDir 		= substr($value,6,2);
		$secondDir 		= substr($value,4,2);
		$strPathLarge	= ROOT_DIR .  '/upload/' . $firstDir . '/' . $secondDir . '/';
		$strPathThumb	= ROOT_DIR .  '/upload_thumb/' . $firstDir . '/' . $secondDir . '/';
		NhutFunction::mkDirectory(ROOT_DIR .  '/upload/' . $firstDir);	
		NhutFunction::mkDirectory(ROOT_DIR .  '/upload/' . $firstDir . '/' . $secondDir);	
		NhutFunction::mkDirectory(ROOT_DIR .  '/upload_thumb/' . $firstDir);	
		NhutFunction::mkDirectory(ROOT_DIR .  '/upload_thumb/' . $firstDir . '/' . $secondDir);	
		$arrF 		= explode(".",$oFile['name']);
		$sFileFull		= $strPathLarge . 	$value . '.' . $arrF[count($arrF)-1];
		$sFile300		= $strPathThumb . 	$value . '_300.' . $arrF[count($arrF)-1];
		$sFile80		= $strPathThumb . 	$value . '_100.' . $arrF[count($arrF)-1];	
		if (move_uploaded_file($oFile['tmp_name'], $sFileFull)) {
			/*Kiem tra va crop file truoc khi create thumb*/	
			$targetPath = ROOT_DIR . '/data/user/';
			$arrImageSize 	= getimagesize($sFileFull);
			$isrcWidth 		= $arrImageSize[0];       
       		$isrcHeight		= $arrImageSize[1];
			$strType		= $arrImageSize['mime'];
			$sMax 			= ($isrcWidth > $isrcHeight) ? "w" : "h";
			//$inewRatio 		= $isrcWidth / $isrcHeight;				
			$inewRatio		= 1;
			if($sMax == "w"){				
				$icropWidth = $isrcHeight * $inewRatio;
				if ($icropWidth > $isrcWidth) {
					$icropWidth = $isrcWidth;
					$icropHeight = $isrcWidth / $inewRatio;
				}
				else {
					$icropHeight = $isrcHeight;
				}				
			} else {
				$icropHeight = $isrcWidth * $inewRatio;
				if ($icropHeight > $isrcHeight) {
					$icropWidth  = $isrcHeight / $inewRatio;
					$icropHeight = $isrcHeight;
				}
				else {
					$icropWidth = $isrcWidth;
				}
				//if(($icropWidth/$icropHeight)<1.35) $icropHeight = $icropHeight+20;
				//else $icropHeight = $icropHeight+40;
			}
			$sSavePath		= str_replace('//','/',$targetPath) . $sTime . '_Crop.' . $arrF[count($arrF)-1];
			if(file_exists($sSavePath)){
				unlink($sSavePath);
			}
			$pathInfo = pathinfo($sFileFull);				
			switch (  $pathInfo['extension']  ) {
				case 'jpg': case 'jpeg': case 'JPG': case 'JPEG':
					$img_r = imagecreatefromjpeg($sFileFull);
					$dst_r = ImageCreateTrueColor($icropWidth, $icropHeight);
					imagecopyresampled($dst_r,$img_r,0,0,0,0, $icropWidth,$icropHeight,$icropWidth,$icropHeight);		
					imagejpeg($dst_r, $sSavePath,100);
					break;
				case 'png':	case 'PNG':					
					$img_r = imagecreatefrompng($sFileFull);
					$dst_r = ImageCreateTrueColor($icropWidth, $icropHeight);
					imagecopyresampled($dst_r,$img_r,0,0,0,0, $icropWidth,$icropHeight,$icropWidth,$icropHeight);		
					imagepng($dst_r, $sSavePath,9);
					break;
				case 'gif': case 'GIF':
					$img_r = imagecreatefromgif($sFileFull);
					$dst_r = ImageCreateTrueColor($icropWidth, $icropHeight);
					imagecopyresampled($dst_r,$img_r,0,0,0,0, $icropWidth,$icropHeight,$icropWidth,$icropHeight);		
					imagegif($dst_r, $sSavePath);
					break;				
			}
			/*Kiem tra va crop file truoc khi create thumb*/
			NhutFunction::createThumb($sSavePath,$sFile300,300,300,100);
			NhutFunction::createThumb($sSavePath,$sFile80,100,100,100);
			@unlink($sSavePath);
			NhutFunction::createThumb($sFileFull,$sFileFull,550,550,100);			
			return array ('error'=>'','filename'=>$value . '.' . $arrF[count($arrF)-1],'fullpath'=>$firstDir . '/' . $secondDir . '/' . $value . '.' . $arrF[count($arrF)-1],'width'=>'','height'=>'');	
		}
	}
	
	
	static public function createThumb( $srcFileName, $dstFileName, $iMaxWidth, $iMaxHeight, $sQualanty=75)
	{	
		// Get information about the image        
        $imageSize 	= getimagesize( $srcFileName );        
        $srcWidth 	= $imageSize[0];       
        $srcHeight	= $imageSize[1];
        $strType	= $imageSize['mime'];	
        // Load the image based on filetype        
        switch( $strType ) {
	        case 'image/jpeg': 
	        	//header("Content-type: image/jpeg"); 
	        	$srcImage = imagecreatefromjpeg( $srcFileName );
	            break;	         
	        case 'image/png':
	        	//header("Content-type: image/png"); 
	            $srcImage = imagecreatefrompng( $srcFileName );
	            break;
	        case 'image/gif':
	        	//header("Content-type: image/gif"); 
	        	$srcImage = imagecreatefromgif( $srcFileName );
	            break;
	        default:
	        	return false;
        }       
        // Did the image fail to load?
        if ( !$srcImage ) {
       		return false;
        }
       
        if( $srcWidth < $iMaxWidth && $srcHeight < $iMaxHeight)	 {
        	$iThumbWeight = $srcWidth;
	        $iThumbHeight = $srcHeight;
        }
        else {
	        // Calculate the output size based on the original's aspect ratio
	        if ( $srcWidth / $srcHeight > $iMaxWidth / $iMaxHeight ) {
	            $iThumbWeight = $iMaxWidth;
	            $iThumbHeight = $srcHeight * $iMaxWidth / $srcWidth;
	        }
	        else {        	
	            $iThumbWeight = $srcWidth * $iMaxHeight / $srcHeight;
	            $iThumbHeight = $iMaxHeight;
	        }
        }       
        // Create the output image and copy to source to it
        $dstImage = ImageCreateTrueColor( $iThumbWeight, $iThumbHeight );
        imagecopyresampled( $dstImage, $srcImage, 0, 0, 0, 0, $iThumbWeight, $iThumbHeight, $srcWidth, $srcHeight );
  		// Get information about the output image
        $pathInfo = pathinfo($dstFileName);          
        // Setup default return info
        $return = true;
        // Load the image based on filetype
        switch (  $pathInfo['extension']  ) {
        	case 'jpg': case 'jpeg': case 'JPG': case 'JPEG':
            	imagejpeg( $dstImage, $dstFileName,100);
            	break;
        	case 'png':	case 'PNG':
        		imagepng( $dstImage, $dstFileName,9);
       			break;
        	case 'gif': case 'GIF':
        		imagegif( $dstImage, $dstFileName );
            	break;
        	default:
        		$return = false;
        }        
 		$imageSize 	= getimagesize( $dstFileName );
 		$srcWidthDstFileName 	= $imageSize[0]; 	
        return $return;
	}
	
	public function process($oFile, $strUploadDir = '', $intMaxSize = 0, $strLanguage = 'vi', $arrType = null, $strName = '') 
	{		
		$_msg_ok = '';
		$_msg_invalid_type = 'File không đúng định dạng cho phép';
		$_msg_invalid_size = 'Vui lòng upload file có kích thước từ 1 byte đến ' . $intMaxSize/(1024*1024) . ' MB';
		if (! isset( $oFile ) || is_null ( $oFile['tmp_name'] ) || $oFile['name'] == '')
			return array ('error' => '0', 'filename' => '', 'fullpath' => '' );
		if (is_null($arrType)) {
			$arrType = array('image/pjpeg', 'image/jpg', 'image/jpeg', 'image/gif', 'image/png');
		}
		switch ($oFile ["error"]) {
			case UPLOAD_ERR_OK :
				break;
			case UPLOAD_ERR_INI_SIZE :
				return array ('error' => '1', 'filename' => '', 'fullpath' => '' );
				break;
			case UPLOAD_ERR_FORM_SIZE :
				return array ('error' => '2', 'filename' => '', 'fullpath' => '' );
				break;
			case UPLOAD_ERR_PARTIAL :
				return array ('error' => '3', 'filename' => '', 'fullpath' => '' );
				break;
			case UPLOAD_ERR_NO_FILE :
				return array ('error' => '4', 'filename' => '', 'fullpath' => '' );
				break;
			case UPLOAD_ERR_NO_TMP_DIR :
				return array ('error' => '5', 'filename' => '', 'fullpath' => '' );
				break;
			case UPLOAD_ERR_CANT_WRITE :
				return array ('error' => '6', 'filename' => '', 'fullpath' => '' );
				break;
			default :
				return array ('error' => '7', 'filename' => '', 'fullpath' => '' );
				break;
		}
		if (!in_array($oFile['type'], $arrType)) {
			return array ('error' => $_msg_invalid_type, 'filename' => '', 'fullpath' => '' );
		}
		if ($oFile['size'] <= 0 || $oFile['size'] > $intMaxSize) {
			return array ('error' => $_msg_invalid_size, 'filename' => '', 'fullpath' => '');
		}
		if(substr($strUploadDir, -1, 1) != '/' ) $strUploadDir .= '/';
		NhutFunction::mkDirectory($strUploadDir);
		if ($strName != '')
			$strFilename = $strName . strtolower(strrchr($oFile['name'], '.'));
		else
			$strFilename = rand(100, 999) . time() . strtolower(strrchr($oFile['name'], '.'));
		$strFullPath = $strUploadDir . $strFilename;
		if (move_uploaded_file($oFile['tmp_name'], $strFullPath)) {
			$arrSize = @getimagesize($strFullPath);
			if (!in_array($arrSize['mime'], $arrType)) {
				@unlink($strFullPath);
				return array ('error' => $_msg_invalid_type, 'filename' => '', 'fullpath' => '' );
			} else {
				return array (
					'error' 	=> '',
					'filename' 	=> $strFilename,
					'fullpath' 	=> $strFullPath,
					'width'  	=> $arrSize[0],
					'height' 	=> $arrSize[1]
				);
			}
		}
	}
}
?>