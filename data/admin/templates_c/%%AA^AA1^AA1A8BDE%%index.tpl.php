<?php /* Smarty version 2.6.20, created on 2013-09-10 17:49:00
         compiled from shop/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', 'shop/index.tpl', 28, false),array('function', 'paging', 'shop/index.tpl', 72, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<form name="frmNews" method="post" action="<?php echo @HOST_ADMIN; ?>
/shop">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list">Danh sách Shop nội thất</td>
		<td align="right"></td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="1" cellpadding="2" cellspacing="1">
        		<tr class="label_title">
          			<td align="center" width="3%" valign="top">
						<input type="checkbox" name="checkAll" value="" onClick="checkBoxAll(this.form, 'txtCheckBoxId[]', this.checked);"  width="1px" height="1px"/>
					</td>					
          			<td align="center" valign="top">Tên sản phẩm</td>	
					<td align="center" valign="top">Tên category</td>
					<td align="center" valign="top">Chất liệu</td>					
					<td align="center" valign="top">Kích thước</td>
					<td align="center" valign="top">Giá bán</td>
					<td align="center" valign="top">Hiển thị</td>
					<td align="center" valign="top">Hình ảnh 1</td>
					<td align="center" valign="top">Hình ảnh 2</td>
					<td align="center" valign="top">Hình ảnh 3</td>
					<td align="center" valign="top">Vị trí</td>	
        		</tr>
				<?php $_from = $this->_tpl_vars['arrList']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['row']):
?>		
				<tr class="<?php echo smarty_function_cycle(array('values' => "content_odd,content_even"), $this);?>
">		
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="txtCheckBoxId[]" value="<?php echo $this->_tpl_vars['row']['id']; ?>
" id="idCheck"/>
					</td>
					<td width="35%" valign="top">	 
					&nbsp;<a href="<?php echo @HOST_ADMIN; ?>
/shop/edit?id=<?php echo $this->_tpl_vars['row']['id']; ?>
" class="ahref"><?php echo $this->_tpl_vars['row']['name']; ?>
</a>
					</td>
					<td valign="top" width="10%" >
							<?php echo $this->_tpl_vars['row']['category_name']; ?>

					</td>					
					<td width="7%" valign="top">
							<?php echo $this->_tpl_vars['row']['feed']; ?>

					</td>
					<td width="5%" valign="top">
							<?php echo $this->_tpl_vars['row']['size']; ?>

					</td>					
					<td width="5%" valign="top">
							<?php echo $this->_tpl_vars['row']['price']; ?>

					</td>
					<td width="10%" valign="top">
							<?php if ($this->_tpl_vars['row']['showproduct'] == 1): ?>Hiển thị<?php endif; ?>
					</td>
					<td width="10%" valign="top">
						<?php if ($this->_tpl_vars['row']['img_1']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['row']['img_1']; ?>
" width="75" />
						<?php endif; ?>
					</td>
					<td width="10%" valign="top">
						<?php if ($this->_tpl_vars['row']['img_2']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['row']['img_2']; ?>
" width="75" />
						<?php endif; ?>
					</td>
					<td width="10%" valign="top">
						<?php if ($this->_tpl_vars['row']['img_3']): ?>
							<img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['row']['img_3']; ?>
" width="75" />
						<?php endif; ?>
					</td>
					<td width="5%" valign="top">
							<?php echo $this->_tpl_vars['row']['sort']; ?>

					</td>								
				</tr>
				<?php endforeach; endif; unset($_from); ?>
				
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
/shop/add');"/>
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