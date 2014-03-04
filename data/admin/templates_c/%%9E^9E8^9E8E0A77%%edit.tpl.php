<?php /* Smarty version 2.6.20, created on 2013-09-23 14:50:21
         compiled from category/edit.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<form name="frmCategory" id="frmCategory" action="<?php echo @HOST_ADMIN; ?>
/category/dosaveedit" method="post" enctype="multipart/form-data">
<input type="hidden" value="<?php echo $this->_tpl_vars['arrDetail']['id']; ?>
" name="txtId" />
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">Cập nhật Danh Mục</td>
	</tr>
	<tr class="login">
		<td width="20%">Loại danh mục :<span class="alert">*</span></td>
		<td width="870%">
			<select name="cbo_type" id="cbo_type">
				<option value="0" <?php if ($this->_tpl_vars['arrDetail']['type'] == 0): ?>selected="selected"<?php endif; ?>>Công trình</option>
				<option value="1" <?php if ($this->_tpl_vars['arrDetail']['type'] == 1): ?>selected="selected"<?php endif; ?>>Shop nội thất</option>
			</select>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Shop danh mục :</td>
		<td width="870%">
			<select name="cbo_type_shop" id="cbo_type_shop">
				<option value="0" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 0): ?>selected="selected"<?php endif; ?>>----</option>
				<option value="1" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 1): ?>selected="selected"<?php endif; ?>>Phòng khách</option>
				<option value="2" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 2): ?>selected="selected"<?php endif; ?>>Bếp & Phòng ăn</option>
				<option value="3" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 3): ?>selected="selected"<?php endif; ?>>Phòng ngủ</option>
				<option value="4" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 4): ?>selected="selected"<?php endif; ?>>Phòng vệ sinh</option>
				<option value="5" <?php if ($this->_tpl_vars['arrDetail']['cate_shop'] == 5): ?>selected="selected"<?php endif; ?>>Đèn nội thất</option>
			</select>
		</td>
	</tr>
	<tr class="login">
		<td width="30%">Tên danh mục :<span class="alert">*</span></td>
		<td width="70%"><input type="text" id="txtName" name="txtName" value="<?php echo $this->_tpl_vars['arrDetail']['category_name']; ?>
" class="input" maxlength="255"/>
		</td>
	</tr>
	<tr class="login">
		<td width="30%">Vị trí :<span class="alert">*</span></td>
		<td width="70%" align="left">				
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
				required 			: \'Bạn vui lòng nhập tên danh mục vào vào\'
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