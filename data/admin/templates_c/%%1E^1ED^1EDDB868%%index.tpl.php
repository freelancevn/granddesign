<?php /* Smarty version 2.6.20, created on 2013-09-12 00:24:22
         compiled from info/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', 'info/index.tpl', 24, false),array('function', 'paging', 'info/index.tpl', 53, false),array('modifier', 'stripslashes', 'info/index.tpl', 29, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<form name="frmNews" method="post" action="<?php echo @HOST_ADMIN; ?>
/info">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list">Danh sách nhân viên</td>
		<td align="right"></td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="1" cellpadding="2" cellspacing="1">
        		<tr class="label_title">
          			<td align="center" width="3%" valign="top">
						<input type="checkbox" name="checkAll" value="" onClick="checkBoxAll(this.form, 'txtCheckBoxId[]', this.checked);"  width="1px" height="1px"/>
					</td>
          			<td align="center" valign="top">Tên nhân viên</td>	
					<td>Chức vụ</td>	
					<td>Văn phòng</td>
					<td>Hình ảnh</td>
					<td>Vị trí</td>									
        		</tr>
				<?php if ($this->_tpl_vars['arrList']): ?>
				<?php $_from = $this->_tpl_vars['arrList']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['row']):
?>		
				<tr class="<?php echo smarty_function_cycle(array('values' => "content_odd,content_even"), $this);?>
">		
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="txtCheckBoxId[]" value="<?php echo $this->_tpl_vars['row']['id']; ?>
" id="idCheck"/>
					</td>
					<td width="17%" valign="top">	 
					&nbsp;<?php echo ((is_array($_tmp=$this->_tpl_vars['row']['name'])) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>

					</td>				
					<td width="20%" valign="top">
						<?php echo ((is_array($_tmp=$this->_tpl_vars['row']['postion'])) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>

					</td>
					<td width="10%" valign="top">
						<?php if ($this->_tpl_vars['row']['type'] == 0): ?>Hồ Chí Minh<?php else: ?>Hà Nội<?php endif; ?>
					</td>
					<td width="40%" valign="top">
						<img src="<?php echo @HOST; ?>
/data/user/<?php echo $this->_tpl_vars['row']['image']; ?>
" width="75" />
					</td>
					<td width="10%" valign="top">
							<?php echo $this->_tpl_vars['row']['sort']; ?>

					</td>			
				</tr>
				<?php endforeach; endif; unset($_from); ?>
				<?php else: ?>
				<tr class="<?php echo smarty_function_cycle(array('values' => "content_odd,content_even"), $this);?>
">		
					<td colspan="6" align="center" valign="top">
						Chưa có dữ liệu
					</td>
				</tr>
				<?php endif; ?>
      		</table>
			<?php echo smarty_function_paging(array('total' => $this->_tpl_vars['intTotal'],'offset' => $this->_tpl_vars['intOffset'],'limit' => $this->_tpl_vars['intLimit'],'params' => 0), $this);?>

		</td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="0" cellpadding="1" cellspacing="1">
        		<tr>
          			<td align="right" width="40%" valign="top">						
		  	  			<input type="button" name="btAddNew" class="content_button" value="Thêm mới" onClick="javascript: actionAddNew(this.form,'<?php echo @HOST_ADMIN; ?>
/info/add');"/>		  
		 				&nbsp;&nbsp;&nbsp;
		   				<input type="button" name="btDelete" class="content_button" value="Xóa" onClick="javascript:confirmDelete(this.form,'Vui lòng chọn một record','Bạn có chắc là muốn xóa?')"/>	  
		  			</td>
        		</tr>
      		</table>
		</td>
    </tr>	
</table>
</form>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>