<?php /* Smarty version 2.6.20, created on 2013-09-10 17:48:45
         compiled from user/login.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<form name="frmlogin" id="frmlogin" method="post" action="<?php echo @HOST_ADMIN; ?>
/user/dologin">		
	<table width="50%" cellpadding="3" cellspacing="1" border="0">
		<tr class="login">
			<td colspan="2" align="center" bgcolor="#999999"><strong>Đăng nhập hệ thống</strong></td>
		</tr>
		<?php if ($_GET['error'] == 1): ?>
		<tr class="login">
			<td colspan="2" align="center"><span class="errorLogin"> Username không tồn tại</span></td>
		</tr>
		<?php elseif ($_GET['error'] == 2): ?>
		<tr class="login">
			<td colspan="2" align="center"><span class="errorLogin">Mật khẩu không đúng</span></td>
		</tr>				
		<?php endif; ?>
		<tr class="login">
			<td width="37%" align="right">UserName :&nbsp;</td>
			<td width="63%" align="left"><input type="text" value="" maxlength="30" name="txtUserName" id="txtUserName" class="input"></td>
		</tr>
		<tr class="login">
			<td width="37%" align="right" height="30">Mật khẩu :&nbsp;</td>
			<td width="63%" align="left" height="30">
				<input type="password" maxlength="30" name="txtPassWord" id="txtPassWord" class="input">
		  </td>
		</tr>
		<tr class="login">
			<td align="center"  colspan="2">
				<input type="submit" value="Đăng nhập" name="btLogin" class="button">
			</td>
		</tr>
	</table>
</form>
<?php echo '
<script language="javascript">
$(document).ready(function() {
	$("#frmlogin").validate({		
		errorClass	: \'errorMessage\',
		errorElement: \'span\',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txtUserName:{
				required 				: true
			},			
			txtPassWord:{
				required				: true
			},		
		},
		messages: {
			txtUserName:{
				required 			: \'Bạn vui lòng nhập username vào\'
			},
			txtPassWord:{
				required			: \'Bạn vui lòng nhập mật khẩu vào\'
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