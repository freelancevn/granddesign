{include file='introduce-group/introduceGroupsHeader.tpl'}
<form name="frmProduct" id="frmProduct" action="{$smarty.const.HOST_ADMIN}/footer" method="post">
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="3" cellspacing="1">
	 <tr>
		<td align="center" class="lable_list">Thông tin văn phòng Hồ Chí Minh</td>
		<td align="right"></td>
    </tr>
	{if $smarty.get.errid > 0 || $smarty.session.newsid > 0}
	<tr class="login">
		<td class="alert" colspan="2"><b>{$lang.error_news[$smarty.get.errid]}</b></td>				
	</tr>
	{/if}		
	<tr class="login">		
		<td width="100%" colspan="2">
		<textarea id="txt_description" name="txt_description" style="width:95%;">{$arrDetail.key_value}</textarea>
		{literal}
		<script type="text/javascript">			
			CKEDITOR.replace( 'txt_description' ,
			{				
				extraPlugins : 'devtools'				
			});
		</script>
		{/literal}
		</td>
	</tr>	
	<tr class="login">
		<td align="center" colspan="2"> 							
			<input type="submit" value="Lưu" class="content_button">
			&nbsp;&nbsp;
			<input type="reset" value="Reset" class="content_button"/>
		</td>			
	</tr>
</table>	

<table width="100%" border="0" cellpadding="3" cellspacing="1">
	 <tr>
		<td align="center" class="lable_list">Thông tin văn phòng Hà Nội</td>
		<td align="right"></td>
    </tr>
	{if $smarty.get.errid > 0 || $smarty.session.newsid > 0}
	<tr class="login">
		<td class="alert" colspan="2"><b>{$lang.error_news[$smarty.get.errid]}</b></td>				
	</tr>
	{/if}		
	<tr class="login">		
		<td width="100%" colspan="2">
		<textarea id="txt_description2" name="txt_description2" style="width:95%;">{$arrDetail2.key_value}</textarea>
		{literal}
		<script type="text/javascript">			
			CKEDITOR.replace( 'txt_description2' ,
			{				
				extraPlugins : 'devtools'				
			});
		</script>
		{/literal}
		</td>
	</tr>	
	<tr class="login">
		<td align="center" colspan="2"> 							
			<input type="submit" value="Lưu" class="content_button">
			&nbsp;&nbsp;
			<input type="reset" value="Reset" class="content_button"/>
		</td>			
	</tr>
</table>	
</form>
{literal}
<script language="javascript">
$(document).ready(function() {
	$("#frmProduct").validate({		
		errorClass	: 'errorMessage',
		errorElement: 'span',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txt_description:{
				required 				: true
			}	
		},
		messages: {
			txt_description:{
				required 			: 'Bạn vui lòng nhập thông tin giới thiệu vào.'
			}
		},
		errorPlacement: function(label, element) {
			var id = element.attr('id');
			if (id == 'txt_description') {
				label.insertAfter($('#cke_txt_description'));
			} else {
				label.insertAfter($('#' + id));
			}			
		}
	});
});
</script>
{/literal}
{include file='introduce-group/introduceGroupsFooter.tpl'}