<?php /* Smarty version 2.6.20, created on 2013-09-11 20:05:40
         compiled from public/viewproduct.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="highlight" class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="title-shop">
					<span>Sản phẩm shop nội thất</span>
				</div>
				<div class="list-shop">
				<?php $_from = $this->_tpl_vars['arrShop']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
					<div class="info-shop">
						<a href="<?php echo @HOST; ?>
/public/shopnoithat?id=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
&proid=<?php echo $this->_tpl_vars['rRows']['id']; ?>
"><img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['rRows']['img_1']; ?>
" width="90%" /></a>
						<a href="<?php echo @HOST; ?>
/public/shopnoithat?id=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
&proid=<?php echo $this->_tpl_vars['rRows']['id']; ?>
"><?php echo $this->_tpl_vars['rRows']['name']; ?>
</a>
						<span style="color:#FF0000;"><?php echo $this->_tpl_vars['rRows']['price']; ?>
</span>
					</div>
				<?php endforeach; endif; unset($_from); ?>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="detaiproduct">
					<div class="infoproduct">						
						<span class="titleproduct">THÔNG TIN CÔNG TRÌNH</span>
						<span class="contentproduct"><?php echo $this->_tpl_vars['arrDetail']['product_name']; ?>
</span>
						<span class="contentproduct">Diện tích: <?php echo $this->_tpl_vars['arrDetail']['unbuilt_area']; ?>
</span>
						<span class="contentproduct">Địa chỉ: <?php echo $this->_tpl_vars['arrDetail']['address']; ?>
</span>
						<span class="contentproduct">Chủ đầu tư: <?php echo $this->_tpl_vars['arrDetail']['investors']; ?>
</span>
						<span class="contentproduct">Thời gian hoàn thành: <?php echo $this->_tpl_vars['arrDetail']['time_finish']; ?>
</span>
					</div>
					<div class="imageproduct">
						<?php $_from = $this->_tpl_vars['arrImage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
						<div class="view-image-product">
							<img src="<?php echo @HOST; ?>
/upload/product/<?php echo $this->_tpl_vars['rRows']['file_name']; ?>
" alt="<?php echo $this->_tpl_vars['rRows']['description']; ?>
" width="820" />
							<span><?php echo $this->_tpl_vars['rRows']['description']; ?>
</span>
						</div>
						<?php endforeach; endif; unset($_from); ?>
						
						<div class="commentface" style="margin-bottom:5px;">
							<div class="fb-like" data-href="<?php echo @HOST; ?>
/public/viewproduct?id=<?php echo $this->_tpl_vars['rRows']['id']; ?>
&category=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
" data-width="450" data-show-faces="false" data-send="true"></div>
						</div>
						<div class="commentface">
							<div class="fb-comments" data-href="<?php echo @HOST; ?>
/public/viewproduct?id=<?php echo $this->_tpl_vars['rRows']['id']; ?>
&category=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
" data-width="820"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="highlight" class="wrapper">
    <div class="container">
     
        <div class="row">
          <div class="col-lg-3">
          	<div class="cate">
				<?php $_from = $this->_tpl_vars['arrMenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
					<?php if ($this->_tpl_vars['i'] <= 5): ?>
            		<a href="<?php echo @HOST; ?>
?category=<?php echo $this->_tpl_vars['rRows']['id']; ?>
" title="<?php echo $this->_tpl_vars['rRows']['category_name']; ?>
"><?php echo $this->_tpl_vars['rRows']['category_name']; ?>
</a>
					<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?>
            </div>
          
          </div>
          <div class="col-lg-9">
          	<div class="product-gallery">
            		<div id="product-gallery" class="carousel slide"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#product-gallery" data-slide-to="0" class="active"></li>
              <li data-target="#product-gallery" data-slide-to="1"></li>
              <li data-target="#product-gallery" data-slide-to="2"></li>
            </ol>
            
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
				<div class="item active">
				<?php $_from = $this->_tpl_vars['arrProduct']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
				<?php if ($this->_tpl_vars['i'] > 0 && $this->_tpl_vars['i']%6 == 0): ?>
					</div><div class="item">
				<?php endif; ?>
					<a href="<?php echo @HOST; ?>
/public/viewproduct?id=<?php echo $this->_tpl_vars['rRows']['id']; ?>
&category=<?php echo $this->_tpl_vars['rRows']['fk_category']; ?>
" title="Photo">
						<img src="<?php echo @HOST; ?>
/upload_thumb/product/<?php echo $this->_tpl_vars['rRows']['file_name']; ?>
" width="195" height="110" alt="" />
						<span><?php echo $this->_tpl_vars['rRows']['product_name']; ?>
</span>
					</a>
				<?php endforeach; endif; unset($_from); ?>
				</div>
            </div>
            <!-- Controls --> 
            <a class="left carousel-control" href="#product-gallery" data-slide="prev"> <span class="icon-prev"></span> </a> <a class="right carousel-control" href="#product-gallery" data-slide="next"> <span class="icon-next"></span> </a> </div>
            
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