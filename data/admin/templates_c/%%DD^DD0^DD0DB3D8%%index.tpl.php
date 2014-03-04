<?php /* Smarty version 2.6.20, created on 2013-09-11 18:22:30
         compiled from product/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', 'product/index.tpl', 27, false),array('function', 'paging', 'product/index.tpl', 59, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<form name="frmNews" method="post" action="<?php echo @HOST_ADMIN; ?>
/product">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list">Danh sách công trình</td>
		<td align="right"></td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="1" cellpadding="2" cellspacing="1">
        		<tr class="label_title">
          			<td align="center" width="3%" valign="top">
						<input type="checkbox" name="checkAll" value="" onClick="checkBoxAll(this.form, 'txtCheckBoxId[]', this.checked);"  width="1px" height="1px"/>
					</td>					
          			<td align="center" valign="top">Tên công trình</td>	
					<td align="center" valign="top">Tên category</td>
					<td align="center" valign="top">Khách hàng</td>					
					<td align="center" valign="top">Địa chỉ</td>
					<td align="center" valign="top">Diện tích</td>
					<td align="center" valign="top">Thời gian</td>
					<td align="center" valign="top">Hình ảnh</td>
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
/product/edit?id=<?php echo $this->_tpl_vars['row']['id']; ?>
" class="ahref"><?php echo $this->_tpl_vars['row']['product_name']; ?>
</a>
					</td>
					<td valign="top" width="10%" >
							<?php echo $this->_tpl_vars['row']['category_name']; ?>

					</td>					
					<td width="15%" valign="top">
							<?php echo $this->_tpl_vars['row']['investors']; ?>

					</td>
					<td width="15%" valign="top">
							<?php echo $this->_tpl_vars['row']['address']; ?>

					</td>
					<td width="25%" valign="top">
							<?php echo $this->_tpl_vars['row']['unbuilt_area']; ?>

					</td>
					<td width="25%" valign="top">
							<?php echo $this->_tpl_vars['row']['time_finish']; ?>

					</td>
					<td valign="top">
						<a href="<?php echo @HOST_ADMIN; ?>
/product/images?id=<?php echo $this->_tpl_vars['row']['id']; ?>
" class="ahref">Hình ảnh (<?php echo $this->_tpl_vars['row']['countImages']; ?>
)</a>
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
/product/add');"/>
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