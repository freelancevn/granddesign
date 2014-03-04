{include file='common/header.tpl'}
<link href="{$smarty.const.CSS}uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<script type="text/javascript" src="{$smarty.const.JS}swfupload.js"></script>
<script type="text/javascript" src="{$smarty.const.JS}swfupload.queue.js"></script>
<script type="text/javascript" src="{$smarty.const.JS}fileprogress.js"></script>
<script type="text/javascript" src="{$smarty.const.JS}handlers.js"></script>
<form name="frmNews" method="post" action="{$smarty.const.HOST_ADMIN}/product/images?id={$arrDetail.id}">
<input type="hidden" name="txtLuu" value="1">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list" colspan="2">Hình ảnh công trình <strong>{$arrDetail.product_name}</strong></td>		
    </tr>
	<tr>
		<td colspan="2">&nbsp;</td>
    </tr>	
	<tr>
		<td colspan="2">&nbsp;</td>
    </tr>
	<tr>		
		<td colspan="2" align="center">
			<div class="contenttext" id="custom-demo">
				<div class="fieldset flash" id="fsUploadProgress">
					<span class="legend">Đăng hình cho công trình {$arrDetail.name}</span>
					<span id="spanButtonPlaceholder"></span>
				</div>
			  	
				<img src="{$smarty.const.IMAGES}but_huypho.png" id="btnCancel" value="Cancel Uploads" onclick="cancelQueue(upload);" disabled="disabled" />
			</div>
		</td>
    </tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr>
		<td colspan="2">
			<table width="100%"  cellpadding="0" cellspacing="5" align="center">
				{foreach key=i item=row from=$arrImages}
				<tr {if $i%2==0}style="background-color:#E6E7E4;"{else} style="background-color:#D5EAFF;"{/if}>
					<td width="20px"><input type="checkbox" name="txtCheckBoxId[]" value="{$row.id}" id="idCheck"/></td>
					<td width="200px"><img src="{$smarty.const.HOST}/upload_thumb/product/{$row.file_name}" width="200" /></td>
					<td>
						<table width="100%"  cellpadding="0" cellspacing="5" align="center">
							<tr>
								<td>Thông tin:</td>
								<td><input type="text" id="txtContent_{$row.id}" name="txtContent_{$row.id}" class="input" value="{$row.description}" /></td>
							</tr>
							<tr>
								<td>Vị trí:</td>
								<td><input type="text" id="txtSort_{$row.id}" name="txtSort_{$row.id}" class="input" value="{$row.sort}" /></td>
							</tr>
						</table>
					</td>
				</tr>
				{/foreach}
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="0" cellpadding="1" cellspacing="1">
        		<tr>
          			<td align="center" width="40%" valign="top">						
		  	  			<input type="submit" value="Lưu" class="content_button" name="btnLuu">
		 				&nbsp;&nbsp;&nbsp;
		   				<input type="button" name="btDelete" class="content_button" value="Xóa" onClick="javascript:confirmDelete(this.form,'Vui lòng chọn một record','Bạn có chắc là muốn xóa?')"/>	  
		  			</td>
        		</tr>
      		</table>
		</td>
    </tr>	
</table>
</form>
{include file='common/footer.tpl'}
{literal}
<style type="text/css">
.swfupload{
	float:left;
	margin-left:10px;
	margin-top:-3px;
	z-index:999;
}
.contenttext{
	float:left;
	width:100%;	
}
fieldset{
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-weight: inherit;
	font-style: inherit;
	font-size: 100%;
	font-family: inherit;
	vertical-align: baseline;
}

div.fieldset {
	border:  1px solid #afe14c;
	margin: 10px 0;
	padding: 20px 10px;
}

div.fieldset span.legend {
	position: relative;
	background-color: #FFF;
	padding: 3px;
	top: -30px;
	font: 700 14px Arial, Helvetica, sans-serif;
	color: #73b304;
}

div.flash {
	width: 375px;
	margin: 10px 5px;
	border-color: #D9E4FF;
	-moz-border-radius-topleft : 5px;
	-webkit-border-top-left-radius : 5px;
    -moz-border-radius-topright : 5px;
    -webkit-border-top-right-radius : 5px;
    -moz-border-radius-bottomleft : 5px;
    -webkit-border-bottom-left-radius : 5px;
    -moz-border-radius-bottomright : 5px;
    -webkit-border-bottom-right-radius : 5px;

}

#custom-demo .uploadifyQueueItem {
	background-color: #FFFFFF;
	border: none;
	border-bottom: 1px solid #E5E5E5;
	font: 11px Verdana, Geneva, sans-serif;
	height: 50px;
	margin-top: 0;
	padding: 10px;
	width: 350px;
}
#custom-demo .uploadifyError {
	background-color: #FDE5DD !important;
	border: none !important;
	border-bottom: 1px solid #FBCBBC !important;
}
#custom-demo .uploadifyQueueItem{
	font: 11px Verdana, Geneva, sans-serif;
	background-color: #F5F5F5;
	border: 3px solid #E5E5E5;
	margin-top: 5px;
	padding: 10px;
	width: 300px;
}
#custom-demo .uploadifyQueueItem .cancel {
	float: right;
}
#custom-demo .uploadifyQueue .completed {
	color: #C5C5C5;
}
#custom-demo .uploadifyProgress {
	background-color: #FFFFFF;
	border-top: 1px solid #808080;
	border-left: 1px solid #808080;
	border-right: 1px solid #C5C5C5;
	border-bottom: 1px solid #C5C5C5;
	margin-top: 10px;
	width: 100%;
}
#custom-demo .uploadifyProgressBar {
	background-color: #0099FF;
}
</style>
<script language="javascript">
var upload;
window.onload = function() {
	upload = new SWFUpload({
	// Backend Settings
	upload_url: "../ajax/uploadfile/",
	post_params: {"folder" :"uploads@@{/literal}{$arrDetail.id}{literal}"},
	// File Upload Settings
	file_size_limit : "10240",	// 10MB
	file_types : "*.jpg;*.gif;*.png",
	file_types_description : "Images Files",
	file_upload_limit : "10",
	file_queue_limit : "0",	
	// Event Handler Settings (all my handlers are in the Handler.js file)
	file_dialog_start_handler : fileDialogStart,
	file_queued_handler : fileQueued,
	file_queue_error_handler : fileQueueError,
	file_dialog_complete_handler : fileDialogComplete,
	upload_start_handler : uploadStart,
	upload_progress_handler : uploadProgress,
	upload_error_handler : uploadError,
	upload_success_handler : uploadSuccess,
	upload_complete_handler : uploadComplete,	
	// Button Settings
	button_image_url : "http://granddesign.com.vn/XPButtonUploadText.png",
	button_placeholder_id : "spanButtonPlaceholder",
	button_width: 145,
	button_height: 22,	
	// Flash Settings
	flash_url : "../../swfupload/swfupload.swf",	
	custom_settings : {
		progressTarget : "fsUploadProgress",
		cancelButtonId : "btnCancel"
	},	
	// Debug Settings
	debug: false
	});
}
</script>
{/literal}