<?php /* Smarty version 2.6.20, created on 2013-09-11 19:48:31
         compiled from public/shopnoithat.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="highlight" class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
			<div class="detaiproduct shopnoithat clearfix">
					<div class="col-lg-3">
						<?php $_from = $this->_tpl_vars['arrShop']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRow']):
?>
							<div class="cate-parent">
								<span><?php echo $this->_tpl_vars['rRow']['name']; ?>
</span>
							</div>
							<?php $_from = $this->_tpl_vars['rRow']['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
						<div class="menushopnoithat<?php if ($this->_tpl_vars['rRows']['id'] == $this->_tpl_vars['iShop']): ?> choiceshop<?php endif; ?>" ><a href="<?php echo @HOST; ?>
/public/shopnoithat?id=<?php echo $this->_tpl_vars['rRows']['id']; ?>
" title="<?php echo $this->_tpl_vars['rRows']['category_name']; ?>
"><?php echo $this->_tpl_vars['rRows']['category_name']; ?>
</a></div>
							<?php endforeach; endif; unset($_from); ?>
						<?php endforeach; endif; unset($_from); ?>
					</div>
					<div class="col-lg-9">
						<?php if ($this->_tpl_vars['iProID'] == 0): ?>
						<div class="view-cate">
							<span><?php echo $this->_tpl_vars['strName']; ?>
</span>
						</div>
						<?php endif; ?>
						<?php if ($this->_tpl_vars['iProID'] > 0): ?>
							<div class="row titleshopnoithat">
								<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'public/detailshop.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
							</div>
						<?php else: ?>
							<?php if ($this->_tpl_vars['iProID'] > 0): ?>
							<div class="view-cate">
								<span>Danh sách shop <strong><?php echo $this->_tpl_vars['strName']; ?>
</strong></span>
							</div>
							<?php endif; ?>
							<?php $_from = $this->_tpl_vars['arrList']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
							<div class="row listshopnoithat">
								<div class="shadow clearfix">
									<div class="col-lg-6">
										<h5><?php echo $this->_tpl_vars['rRows']['name']; ?>
</h5>
										<table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<th>Chất liệu: </th>
												<td><?php echo $this->_tpl_vars['rRows']['feed']; ?>
</td>
											</tr>
											<tr>
												<th>Kích thước: &nbsp;</th>
												<td><?php echo $this->_tpl_vars['rRows']['size']; ?>
</td>
											</tr>
											<tr>
												<th>Giá bán: </th>
												<td style="color:#FF0000;"><?php echo $this->_tpl_vars['rRows']['price']; ?>
</td>
											</tr>
											<tr>
												<th><br /><a href="<?php echo @HOST; ?>
/public/shopnoithat?id=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
&proid=<?php echo $this->_tpl_vars['rRows']['id']; ?>
" style="color:#FF0000;">Xem chi tiết</a></th>
												<td></td>
											</tr>
										</table>
									</div>
									<div class="col-lg-6">
										<a href="<?php echo @HOST; ?>
/public/shopnoithat?id=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
&proid=<?php echo $this->_tpl_vars['rRows']['id']; ?>
"><img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['rRows']['img_1']; ?>
"/></a>
									</div>
								</div>
							</div>
						<?php endforeach; endif; unset($_from); ?>
					<?php endif; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>