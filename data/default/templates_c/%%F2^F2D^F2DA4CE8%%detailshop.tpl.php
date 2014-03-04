<?php /* Smarty version 2.6.20, created on 2013-09-11 20:03:41
         compiled from public/detailshop.tpl */ ?>
<link href="<?php echo @CSS; ?>
lightbox.css" rel="stylesheet" media="screen">
<script src="<?php echo @JS; ?>
prototype.js"></script>
<script src="<?php echo @JS; ?>
scriptaculous.js?load=effects,builder"></script>
<script src="<?php echo @JS; ?>
lightbox.js"></script>
<div class="show-detail-info">
	<div class="row">
		<div class="col-lg-3">
			<div class="row">
				<div class="col-lg-12">
				<h5><?php echo $this->_tpl_vars['arrDetailShop']['name']; ?>
</h5>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Chất liệu: </strong>
				</div>
				<div class="col-lg-6">
					<?php echo $this->_tpl_vars['arrDetailShop']['feed']; ?>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Kích thước:  </strong>
				</div>
				<div class="col-lg-6">
					<?php echo $this->_tpl_vars['arrDetailShop']['size']; ?>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Giá bán: </strong>
				</div>
				<div class="col-lg-6">
					<span style="color:#FF0000; display:inline"><?php echo $this->_tpl_vars['arrDetailShop']['price']; ?>
</span>
				</div>
			</div>
		</div>
		<div class="col-lg-9">
			<?php if ($this->_tpl_vars['arrDetailShop']['img_1']): ?>
				<a href="<?php echo @HOST; ?>
/upload/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_1']; ?>
" rel="lightbox[plants]" title="Shop"><img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_1']; ?>
" width="180" /></a>&nbsp;&nbsp;
			<?php endif; ?>
			<?php if ($this->_tpl_vars['arrDetailShop']['img_2']): ?>
				<a href="<?php echo @HOST; ?>
/upload/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_2']; ?>
" rel="lightbox[plants]" title="Shop"><img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_2']; ?>
" width="180" /></a>&nbsp;&nbsp;
			<?php endif; ?>
			<?php if ($this->_tpl_vars['arrDetailShop']['img_3']): ?>
				<a href="<?php echo @HOST; ?>
/upload/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_3']; ?>
" rel="lightbox[plants]" title="Shop"><img src="<?php echo @HOST; ?>
/upload_thumb/shop/<?php echo $this->_tpl_vars['arrDetailShop']['img_3']; ?>
" width="180" /></a>
			<?php endif; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12" style="padding-top:20px;">
		<?php echo $this->_tpl_vars['arrDetailShop']['description']; ?>

		</div>
	</div>
</div>