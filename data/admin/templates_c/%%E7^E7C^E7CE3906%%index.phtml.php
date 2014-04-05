<?php /* Smarty version 2.6.20, created on 2014-03-16 16:25:34
         compiled from footer/index.phtml */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmProduct" id="frmProduct" action="<?php echo @HOST_ADMIN; ?>
/footer" method="post">
<input type="hidden" name="btSave" value="save"/>
<table width="100%" border="0" cellpadding="3" cellspacing="1">
	 <tr>
		<td align="center" class="lable_list">Thông tin văn phòng Hồ Chí Minh</td>
		<td align="right"></td>
    </tr>
	<?php if ($_GET['errid'] > 0 || $_SESSION['newsid'] > 0): ?>
	<tr class="login">
		<td class="alert" colspan="2"><b><?php echo $this->_tpl_vars['lang']['error_news'][$_GET['errid']]; ?>
</b></td>				
	</tr>
	<?php endif; ?>		
	<tr class="login">		
		<td width="100%" colspan="2">
		<textarea id="txt_description" name="txt_description" style="width:95%;"><?php echo $this->_tpl_vars['arrDetail']['key_value']; ?>
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
	<?php if ($_GET['errid'] > 0 || $_SESSION['newsid'] > 0): ?>
	<tr class="login">
		<td class="alert" colspan="2"><b><?php echo $this->_tpl_vars['lang']['error_news'][$_GET['errid']]; ?>
</b></td>				
	</tr>
	<?php endif; ?>		
	<tr class="login">		
		<td width="100%" colspan="2">
		<textarea id="txt_description2" name="txt_description2" style="width:95%;"><?php echo $this->_tpl_vars['arrDetail2']['key_value']; ?>
</textarea>
		<?php echo '
		<script type="text/javascript">			
			CKEDITOR.replace( \'txt_description2\' ,
			{				
				extraPlugins : \'devtools\'				
			});
		</script>
		'; ?>

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
			txt_description:{
				required 				: true
			}	
		},
		messages: {
			txt_description:{
				required 			: \'Bạn vui lòng nhập thông tin giới thiệu vào.\'
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