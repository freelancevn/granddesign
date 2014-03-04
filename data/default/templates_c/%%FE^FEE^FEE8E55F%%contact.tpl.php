<?php /* Smarty version 2.6.20, created on 2013-09-11 20:14:05
         compiled from public/contact.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'common/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!--slideshow-->
  <div id="slideshow" class="wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div id="carousel-example-generic" class="carousel slide"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
				<?php $_from = $this->_tpl_vars['arrImage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
				<div class="item<?php if ($this->_tpl_vars['i'] == 0): ?> active<?php endif; ?>"><img src="<?php echo @HOST; ?>
/data/upload/<?php echo $this->_tpl_vars['rRows']['imgname']; ?>
" width="1170" height="276" alt="" /> </div>
				<?php endforeach; endif; unset($_from); ?>
            </div>
            
            <!-- Controls --> 
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="icon-prev"></span> </a> <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="icon-next"></span> </a> </div>
        </div>
      </div>
    </div>
  </div>
  
 <div id="highlight" class="wrapper">
    <div class="container">     
        <div class="row">
			<div class="col-lg-6">
          		<div class="about">
					<div class="abouttilte">
						<span>Văn phòng thiết kế tại Hồ Chí Minh</span>
					</div>
					<div class="aboutcontent">
						<div><?php echo $this->_tpl_vars['arrConfigSite']['CONTACTHCM']; ?>
</div>
						<div><?php echo $this->_tpl_vars['arrConfigSite']['CONTACTHCMLINK']; ?>
</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
          		<div class="about">
					<div class="abouttilte">
						<span>Văn phòng thiết kế tại Hà Nội</span>
					</div>
					<div class="aboutcontent">
						<div><?php echo $this->_tpl_vars['arrConfigSite']['CONTACTHANOI']; ?>
</div>
						<div><?php echo $this->_tpl_vars['arrConfigSite']['CONTACTHANOILINK']; ?>
</div>
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