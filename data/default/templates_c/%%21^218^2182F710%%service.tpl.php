<?php /* Smarty version 2.6.20, created on 2013-10-19 17:17:34
         compiled from public/service.tpl */ ?>
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
  <!--end slideshow-->
 
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
          	<div class="service">
				<div style="width:20px;">&nbsp;</div>
				<?php $_from = $this->_tpl_vars['arrService']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
            	<div class="rowservice<?php if ($this->_tpl_vars['i'] == 0): ?> nowservice<?php endif; ?>">
					<div class="titleservice">
						<span><a href="<?php echo @HOST; ?>
/public/servicedetail?id=<?php echo $this->_tpl_vars['rRows']['id']; ?>
"><?php echo $this->_tpl_vars['rRows']['name']; ?>
</a></span>
					</div>
					<div class="noteservice">
						<span><?php echo $this->_tpl_vars['rRows']['sortcontent']; ?>
</span>
					</div>
				</div>
				<?php endforeach; endif; unset($_from); ?>
				<div style="width:20px;">&nbsp;</div>
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