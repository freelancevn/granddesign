<?php
class Paging
{
	var $page 	= 0;
	var $limit 	= 0;
	var $total 	= 0;
	var $url 	= '';

	public function __construct($intTotal, $intLimit, $intOffset, $strUrl = '')
	{
		$this->total 	= ($intTotal);
		$this->page  	= ($intOffset / $intLimit) + 1;
		$this->limit	= ($intLimit);
		$this->offset 	= ($intOffset);
		$this->url	 	= ($strUrl);
	}

	public function get($intDisplayPage = 10)
	{
		$strNav = '';
		$intPageTotal 	= ceil($this->total / $this->limit);
		$intDelta		= ceil($intDisplayPage / 2);
		if ($intPageTotal > $intDisplayPage) {
			if ($this->page <= $intDelta) {
				$intStartLoop 	= 1;
				$intEndLoop		= $intDisplayPage;
			} elseif ($this->page >= $intPageTotal - $intDelta) {
				$intStartLoop 	= $intPageTotal - $intDisplayPage + 1;
				$intEndLoop		= $intPageTotal;
			} else {
				$intStartLoop 	= $this->page - $intDelta + 1;
				$intEndLoop		= $this->page + $intDelta;
			}
		} else {
			$intStartLoop = 1;
			$intEndLoop = $intPageTotal;
		}
		$html = '';
		if ($intEndLoop > 1) {
			for ($i = $intStartLoop; $i <= $intEndLoop; $i++) {
				if ($i == $this->page) {
					$strNav .= "<li><a href='#' class='current'>$i</a></li>";
				} else {
					$strNav .= " <li><a href='" . $this->url . "page=$i'>$i</a></li> ";
				}
			}
			if ($this->page > 1) {
				$strFirst = " <li><a href='" . $this->url . "page=1'>&laquo;</a></li>";
				$strPrev  = " <li><a href='" . $this->url . "page=" . ($this->page - 1) . "'>&lsaquo;</a></li> ";
			} else {
				$strFirst = '';
				$strPrev  = '';
			}
			if ($this->page < $intPageTotal) {				
				$strLast = " <li><a href='" . $this->url . "page=" . $intPageTotal . "'>&raquo;</a></li> ";
				$strNext = " <li><a href='" . $this->url . "page=" . ($this->page + 1) . "'>&rsaquo;</a></li> ";
			} else {
				$strLast = '';
				$strNext = '';
			}
			$html = " <ul class='paging pull-right'>$strPrev $strNav $strNext</ul>";
		}
		return $html;
	}

	public function getAjax($intDisplayPage = 10, $strContainer = '')
	{
		$strNav = '';
		$intPageTotal 	= ceil($this->total / $this->limit);
		$intDelta		= ceil($intDisplayPage / 2);
		if ($intPageTotal > $intDisplayPage) {
			if ($this->page <= $intDelta) {
				$intStartLoop 	= 1;
				$intEndLoop		= $intDisplayPage;
			} elseif ($this->page >= $intPageTotal - $intDelta) {
				$intStartLoop 	= $intPageTotal - $intDisplayPage + 1;
				$intEndLoop		= $intPageTotal;
			} else {
				$intStartLoop 	= $this->page - $intDelta + 1;
				$intEndLoop		= $this->page + $intDelta;
			}
		} else {
			$intStartLoop = 1;
			$intEndLoop = $intPageTotal;
		}
		$html = '';
		if ($intEndLoop > 1) {		
			for ($i = $intStartLoop; $i <= $intEndLoop; $i++) {
				if ($i == $this->page) {
					$strNav .= "<span>$i</span>";
				} else {
					$strNav .= " <a href='javascript:void(0);' onclick=\"javascript:paging('" . $this->url . "page=$i','$strContainer')\">$i</a> ";
				}
			}
			if ($this->page > 1) {
				$strFirst = " <a href='javascript:void(0);' onclick=\"javascript:paging('" . $this->url . "page=1','$strContainer')\">&laquo;</a> ";
				$strPrev  = " <a href='javascript:void(0);' onclick=\"javascript:paging('" . $this->url . "page=" . ($this->page - 1) . "','$strContainer')\">Previous</a> ";
			} else {
				$strFirst = '';
				$strPrev  = '';
			}
			if ($this->page < $intPageTotal) {
				$strLast = " <a href='javascript:void(0);' onclick=\"javascript:paging('" . $this->url . "page=" . $intPageTotal . "','$strContainer')\">&raquo;</a> ";
				$strNext = " <a href='javascript:void(0);' onclick=\"javascript:paging('" . $this->url . "page=" . ($this->page + 1) . "','$strContainer')\">Next</a> ";
			} else {
				$strLast = '';
				$strNext = '';
			}
			//$html = "<div class='Paging'>$strFirst $strPrev $strNav $strNext $strLast</div>";
			$html = "<div class='Paging'>$strPrev $strNav $strNext</div>";
		}
		return $html;
	}
}
?>