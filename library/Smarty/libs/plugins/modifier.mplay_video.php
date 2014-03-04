<?php
function smarty_modifier_mplay_video($strPath,$intType)
{   
	$strPathMedia	=	HOST_IMAGES.'/media';
	if($intType==1)
	{
		$intWidth = 250;
		$intHeigth = 220;
		$strExtFile	 = substr($strPath,strlen($strPath)-3);
		if($strExtFile=='flv' || $strExtFile == 'FLV')
		{
			$strReturn = "<embed width='".$intWidth."' height='".$intHeigth."' type='application/x-shockwave-flash' src='".$strPathMedia."/mediaplayer.swf' style='' name='playlist' quality='high' allowfullscreen='true' flashvars='file=".$strPath."' id='playlist'/ >";
		}
		else
		{
			$strReturn = "
			<object id='MediaPlayer1' width='".$intWidth."' height='".$intHeigth."' classid='CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95' codebase='http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701' standby='Loading Microsoft® Windows® Media Player components...' type='application/x-oleobject' align='middle'>
				<param name='FileName' value='".$strPath."'>
				<param name='ShowStatusBar' value='True'>
				<param name='DefaultFrame' value='mainFrame'>
				<param name='autostart' value='false'>
				<embed type='application/x-mplayer2' pluginspage='http://www.microsoft.com/Windows/MediaPlayer/' src='".$strPath."' autostart='false' align='middle' width='".$intWidth."' height='".$intHeigth."' defaultframe='rightFrame'showstatusbar='true'></embed>
			</object>";
		}
	}
	else 
	{
		$strReturn = NMV_FCommon::enCode($strPath);
	}
	return $strReturn;
}
?>