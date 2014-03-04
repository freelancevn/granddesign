<?php /* Smarty version 2.6.20, created on 2013-09-11 19:06:30
         compiled from configsite/index.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmProduct" id="frmProduct" action="<?php echo @HOST_ADMIN; ?>
/configsite" method="post">
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="3" cellspacing="1">
	 <tr>
		<td class="lable_list">Config site SEO</td>
		<td align="right"></td>
    </tr>
	<?php if ($_GET['errid'] > 0 || $_SESSION['newsid'] > 0): ?>
	<tr class="login">
		<td class="alert" colspan="2"><b><?php echo $this->_tpl_vars['lang']['error_news'][$_GET['errid']]; ?>
</b></td>				
	</tr>
	<?php endif; ?>		
	<tr class="login">		
		<td width="20%">Tên site :<span class="alert">*</span></td>
		<td width="870%"><input type="text" id="txtTitle" name="txtTitle" class="input" maxlength="255" value="<?php echo $this->_tpl_vars['arrTitle']['key_value']; ?>
" />
		</td>
	</tr>
	<tr class="login">		
		<td width="20%">Keywords :<span class="alert">*</span></td>
		<td width="870%">
			<textarea name="txtKeywords" style="width:99%;"><?php echo $this->_tpl_vars['arrKeywords']['key_value']; ?>
</textarea>
		</td>
	</tr>	
	<tr class="login">		
		<td width="20%">Description :<span class="alert">*</span></td>
		<td width="870%">
			<textarea name="txtDes" style="width:99%;"><?php echo $this->_tpl_vars['arrDes']['key_value']; ?>
</textarea>
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
<?php echo '
<script language="javascript">
$(document).ready(function() {
	$("#frmProduct").validate({		
		errorClass	: \'errorMessage\',
		errorElement: \'span\',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txtTitle:{
				required 				: true
			}	
		},
		messages: {
			txtTitle:{
				required 			: \'Bạn vui lòng nhập thông tin vào.\'
			}
		},
		errorPlacement: function(label, element) {
			var id = element.attr(\'id\');
			if (id == \'txt_description\') {
				label.insertAfter($(\'#cke_txt_description\'));
			} else {
				label.insertAfter($(\'#\' + id));
			}			
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