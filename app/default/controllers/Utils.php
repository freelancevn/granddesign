<?php 
	class Utils {
		public function convertToUnsignStringWithDash($str){
			$str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
			$str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
			$str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
			$str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
			$str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
			$str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
			$str = preg_replace("/(đ)/", 'd', $str);
			$str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
			$str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
			$str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
			$str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
			$str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
			$str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
			$str = preg_replace("/(Đ)/", 'D', $str);
			$str = str_replace(",", '', $str);
			$str = str_replace(" ", "-", str_replace("&*#39;","",$str));
			$str = strtolower($str);
			return $str;
		}
		
		public function buildProjectDesignSEOLink($host, $projectName, $projectId) {
			return $host ."thiet-ke-du-an/chi-tiet-thiet-ke-noi-ngoai-that-" . $this->convertToUnsignStringWithDash($projectName) . "-" . $projectId . ".html";
		}
		
		public static function decodeProjectDesignSEOLink($requestURI) {
			$groupParam = array();
			preg_match('/\/thiet-ke-du-an\/chi-tiet-thiet-ke-noi-ngoai-that-(.+)-([0-9]+)\.html$/', $requestURI, $groupParam);
			return $groupParam;
		}
		
		public function buildProjectCategorySEOLink($host, $categoryName, $categoryId) {
			return $host. "du-an/cac-thiet-ke-noi-that-cho-" . $this->convertToUnsignStringWithDash($categoryName) . "-" . $categoryId . ".html";
		}
		
		public static function decodeProjectCategorySEOLink($requestURI) {
			$groupParam = array();
			preg_match('/\/du-an\/cac-thiet-ke-noi-that-cho-([a-z-]+)([0-9]+)\.html$/', $requestURI, $groupParam);
			return $groupParam;
		}
		
		public function buildNewsSEOLink($host, $newsTitle, $newsId) {
			return $host. "tin-tuc/" . $this->convertToUnsignStringWithDash($newsTitle) . "-" . $newsId . ".html";
		}
		
		public static function decodeNewsSEOLink($requestURI) {
			$groupParam = array();
			preg_match('/\/tin-tuc\/(.+)-([0-9]+)\.html$/', $requestURI, $groupParam);
			return $groupParam;
		}
	}
?>
