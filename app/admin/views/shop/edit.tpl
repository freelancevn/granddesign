{include file='common/header.tpl'}
<form name="frmCategory" id="frmCategory" action="{$smarty.const.HOST_ADMIN}/shop/dosaveedit" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<input type="hidden" value="{$arrDetail.id}" name="txtId" />
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">&nbsp;&nbsp;Chỉnh sửa Shop nội thất</td>
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
		<td width="20%">Tên sản phẩm :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="{$arrDetail.name}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Chất liệu :</td>
		<td width="870%"><input type="text" id="txtInvestors" name="txtInvestors" class="input" maxlength="255" value="{$arrDetail.feed}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Kích thước :</td>
		<td width="870%"><input type="text" id="txtAddress" name="txtAddress" class="input" maxlength="255" value="{$arrDetail.size}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Giá bán :</td>
		<td width="870%"><input type="text" id="txtUnbuilt_Area" name="txtUnbuilt_Area" class="input" maxlength="255" value="{$arrDetail.price}" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hiển thị công trình :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="checkbox" name="chk_ishowhot" value="1"  {if $arrDetail.showproduct==1} checked="checked"{/if} />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Mô tả :</td>
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
		<td width="20%">Hình ảnh 1 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_1">{if $arrDetail.img_1}
							<img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetail.img_1}" width="75" />
						{/if}
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh 2 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_2">{if $arrDetail.img_2}
							<img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetail.img_2}" width="75" />
						{/if}
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh 3 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_3">{if $arrDetail.img_3}
							<img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetail.img_3}" width="75" />
						{/if}
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
				required 			: 'Bạn vui lòng nhập tên công trình vào'
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