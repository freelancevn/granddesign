<?php /* Smarty version 2.6.20, created on 2013-09-12 00:24:40
         compiled from info/add.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmCategory" id="frmCategory" action="<?php echo @HOST_ADMIN; ?>
/info/dosave" method="post" enctype="multipart/form-data">
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="0" cellspacing="1">
	<tr class="label_title">
		<td colspan="2">Thêm mới nhân viên</td>
	</tr>
	<tr class="login">
		<td width="20%">Tên nhân viên :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtName" name="txtName" class="input" maxlength="255" value="" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Chức vụ :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtPosition" name="txtPosition" class="input" maxlength="255" value="" />
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Văn phòng :</td>
		<td width="870%">
			<select name="cboType" id="cboType">
				<option value="0">Hồ Chí Minh</option>
				<option value="1">Hà Nội</option>
			</select>
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Hình ảnh:<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="file" name="file">
		</td>
	</tr>
	<tr class="login">
		<td width="20%">Vị trí :<span class="alert">*</span></td>
		<td width="80%" align="left">				
			<input type="text" name="txt_sort" id="txt_sort" class="input" maxlength="255" value=""> 
			
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