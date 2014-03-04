{include file='common/header.tpl'}
<form name="frmCategory" id="frmCategory" action="{$smarty.const.HOST_ADMIN}/service/dosaveedit" method="post">
<input type="hidden" name="btSave" value="save"/>
<input type="hidden" value="{$arrDetail.id}" name="txtId" />
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">Thêm mới dịch vụ</td>
	</tr>
	<tr class="login">
		<td width="20%">Tên dịch vụ :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="{$arrDetail.name}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Mô tả ngắn gọn :<span class="alert">*</span></td>
		<td width="870%"><textarea name="txt_short_desc">{$arrDetail.sortcontent}</textarea>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Nội dung :<span class="alert">*</span></td>
		<td width="870%"><textarea id="txt_description" name="txt_description" style="width:95%;">{$arrDetail.description}</textarea>
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
		<td width="20%">Vị trí :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="text" name="txt_sort" id="txt_sort" class="input" maxlength="255" value="{$arrDetail.sort}"> 
			
		</td>
	</tr>
	<tr class="login">
		<td colspan="2" align="center"> 							
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
	$("#frmCategory").validate({		
		errorClass	: 'errorMessage',
		errorElement: 'span',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txtName:{
				required 				: true
			},			
			txt_sort:{
				required				: true
			},		
		},
		messages: {
			txtName:{
				required 			: 'Bạn vui lòng nhập tên danh mục vào vào'
			},
			txt_sort:{
				required			: 'Bạn vui lòng nhập vị trí sắp xếp vào'
			}
		},
		errorPlacement: function(label, element) {
			var id = element.attr('id');
			label.insertAfter($('#' + id));
		}
	});
});
</script>
{/literal}
{include file='common/footer.tpl'}