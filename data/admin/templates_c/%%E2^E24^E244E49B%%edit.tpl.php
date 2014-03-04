<?php /* Smarty version 2.6.20, created on 2013-09-25 16:26:23
         compiled from product/edit.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmCategory" id="frmCategory" action="<?php echo @HOST_ADMIN; ?>
/product/dosaveedit" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<input type="hidden" value="<?php echo $this->_tpl_vars['arrDetail']['id']; ?>
" name="txtId" />
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">&nbsp;&nbsp;Chỉnh sửa công trình</td>
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
		<td width="20%">Tên công trình :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['product_name']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Khách hàng :</td>
		<td width="870%"><input type="text" id="txtInvestors" name="txtInvestors" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['investors']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Địa chỉ :</td>
		<td width="870%"><input type="text" id="txtAddress" name="txtAddress" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['address']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Diện tích :</td>
		<td width="870%"><input type="text" id="txtUnbuilt_Area" name="txtUnbuilt_Area" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['unbuilt_area']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Thời gian hoàn thành :</td>
		<td width="870%"><input type="text" id="txtTime_Finish" name="txtTime_Finish" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrDetail']['time_finish']; ?>
" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hiển thị index :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="checkbox" name="chk_ishowhot" value="1" <?php if ($this->_tpl_vars['arrDetail']['ishowhot'] == 1): ?> checked="checked"<?php endif; ?> />
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
				required 			: \'Bạn vui lòng nhập tên côn trình vào\'
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