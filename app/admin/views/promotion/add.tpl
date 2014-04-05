{include file='common/header.tpl'}
<form name="frmCategory" id="frmCategory" action="{$smarty.const.HOST_ADMIN}/promotion/dosave" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">Thêm mới khuyến mãi</td>
	</tr>
	<tr class="login">
		<td width="20%">Tên khuyến mãi :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="" />
		</td>
	</tr>
    	<tr class="login">
		<td width="20%">Nội dung khuyến mãi :<span class="alert">*</span></td>
		<td width="870%"><textarea name="txtContext" id="txtContent" cols="50" rows="4"/>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Ngày bắt đầu :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtStartDate" name="txtStartDate" class="input" maxlength="255" value="" />
		</td>
	</tr>
    	<tr class="login">
		<td width="20%">Ngày kết thúc :<span class="alert">*</span></td>
		<td width="870%"><input type="date" name="bday"/>
		</td>
	</tr>
	
	<tr class="login">
		<td width="20%">Vị trí :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="text" name="txt_sort" id="txt_sort" class="input" maxlength="255" value=""> 
			
		</td>
	</tr>
    <tr class="login">
		<td width="20%">Cho phép hiển thị :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="checkbox" name="checkAvailable" id="checkAvailable"> 
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