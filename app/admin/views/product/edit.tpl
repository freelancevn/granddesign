{include file='common/header.tpl'}
<form name="frmCategory" id="frmCategory" action="{$smarty.const.HOST_ADMIN}/product/dosaveedit" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<input type="hidden" value="{$arrDetail.id}" name="txtId" />
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">&nbsp;&nbsp;Chỉnh sửa công trình</td>
	</tr>
	<tr class="login">
		<td width="20%">Danh mục :<span class="alert">*</span></td>
		<td width="870%">
			<select name="cbo_Category" id="cbo_Category">
				{foreach key=i item=rRow from=$arrCategory}
				<option value="{$rRow.id}"{if $arrDetail.fk_category==$rRow.id} selected="selected"{/if}>{$rRow.category_name}</option>
				{/foreach}
			</select>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Tên công trình :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="{$arrDetail.product_name}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Khách hàng :</td>
		<td width="870%"><input type="text" id="txtInvestors" name="txtInvestors" class="input" maxlength="255" value="{$arrDetail.investors}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Địa chỉ :</td>
		<td width="870%"><input type="text" id="txtAddress" name="txtAddress" class="input" maxlength="255" value="{$arrDetail.address}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Diện tích :</td>
		<td width="870%"><input type="text" id="txtUnbuilt_Area" name="txtUnbuilt_Area" class="input" maxlength="255" value="{$arrDetail.unbuilt_area}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Thời gian hoàn thành :</td>
		<td width="870%"><input type="text" id="txtTime_Finish" name="txtTime_Finish" class="input" maxlength="255" value="{$arrDetail.time_finish}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hiển thị index :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="checkbox" name="chk_ishowhot" value="1" {if $arrDetail.ishowhot==1} checked="checked"{/if} />
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
				required 			: 'Bạn vui lòng nhập tên côn trình vào'
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