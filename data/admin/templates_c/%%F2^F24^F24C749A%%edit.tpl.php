<?php /* Smarty version 2.6.20, created on 2013-09-10 17:49:16
         compiled from shop/edit.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmCategory" id="frmCategory" action="<?php echo @HOST_ADMIN; ?>
/shop/dosaveedit" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<input type="hidden" value="<?php echo $this->_tpl_vars['arrDetail']['id']; ?>
" name="txtId" />
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">&nbsp;&nbsp;Chỉnh sửa Shop nội thất</td>
	</tr>
	<tr class="login">
		<td width="20%">Danh mục :<span class="alert">*</span></td>
		<td width="870%">
			<select name="cbo_Category" id="cbo_Category">
				<?php $_from = $this->_tpl_vars['arrCategory']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRow']):
?>
				<option value="<?php echo $this->_tpl_vars['rRow']['id']; ?>
"<?php if ($this->_tpl_vars['arrDetail']['fk_category'] == $this->_tpl_vars['rRow']['id']): ?> selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['rRow']['category_name']; ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
			</select>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Tên sản phẩm :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['name']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Chất liệu :</td>
		<td width="870%"><input type="text" id="txtInvestors" name="txtInvestors" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['feed']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Kích thước :</td>
		<td width="870%"><input type="text" id="txtAddress" name="txtAddress" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['size']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Giá bán :</td>
		<td width="870%"><input type="text" id="txtUnbuilt_Area" name="txtUnbuilt_Area" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['price']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hiển thị công trình :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="checkbox" name="chk_ishowhot" value="1"  <?php if ($this->_tpl_vars['arrDetail']['showproduct'] == 1): ?> checked="checked"<?php endif; ?> />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Mô tả :</td>
		<td width="870%"><textarea id="txt_description" name="txt_description" style="width:95%;"><?php echo $this->_tpl_vars['arrDetail']['description']; ?>
</textarea>
		<?php echo '
		<script type="text/javascript">			
			CKEDITOR.replace( \'txt_description\' ,
			{				
				extraPlugins : \'devtools\'				
			});
		</script>
		'; ?>

		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh 1 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_1"><?php if ($this->_tpl_vars['arrDetail']['img_1']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetail']['img_1']; ?>
" width="75" />
						<?php endif; ?>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh 2 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_2"><?php if ($this->_tpl_vars['arrDetail']['img_2']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetail']['img_2']; ?>
" width="75" />
						<?php endif; ?>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh 3 :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file_3"><?php if ($this->_tpl_vars['arrDetail']['img_3']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetail']['img_3']; ?>
" width="75" />
						<?php endif; ?>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Vị trí :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="text" name="txt_sort" id="txt_sort" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['sort']; ?>
">
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
<?php echo '
<script language="javascript">
$(document).ready(function() {
	$("#frmCategory").validate({		
		errorClass	: \'errorMessage\',
		errorElement: \'span\',
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
				required 			: \'Bạn vui lòng nhập tên công trình vào\'
			},
			txt_sort:{
				required			: \'Bạn vui lòng nhập vị trí sắp xếp vào\'
			}
		},
		errorPlacement: function(label, element) {
			var id = element.attr(\'id\');
			label.insertAfter($(\'#\' + id));
		}
	});
});
</script>
'; ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>