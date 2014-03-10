<?php /* Smarty version 2.6.20, created on 2014-03-10 21:09:03
         compiled from common/header.tpl */ ?>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
    <meta charset="utf-8">
    <title><?php echo $this->_tpl_vars['arrConfigSite']['TITLE']; ?>
</title>
    <meta name="description" content="<?php echo $this->_tpl_vars['arrConfigSite']['DESCRIPTION']; ?>
">
    <meta name="keywords" content="<?php echo $this->_tpl_vars['arrConfigSite']['KEYWORDS']; ?>
">
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="<?php echo @CSS; ?>
art_style.css"" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="<?php echo @CSS; ?>
art_style.responsive.css" media="all">

    <link href="<?php echo @CSS; ?>
bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="<?php echo @JS; ?>
art_jquery.js"></script>
    <script src="<?php echo @JS; ?>
art_script.js"></script>
    <script src="<?php echo @JS; ?>
art_script.responsive.js"></script>
    <script src="<?php echo @JS; ?>
jquery-min.js"></script> 
    <script src="<?php echo @JS; ?>
bootstrap.min.js"></script> 
    <script src="<?php echo @JS; ?>
commonindex.js"></script>
    <script src="<?php echo @JS; ?>
jquery.animate-shadow.js"></script>

</head>
<body>
<div id="art-main">
<header class="art-header">

    <div class="art-shapes">
        <div class="logo" data-left="0.14%"></div>
    </div>



<div class="art-textblock art-textblock-1550540254" data-left="90.33%">
        <div class="art-textblock-1550540254-text-container">
        <div class="art-textblock-1550540254-text">&nbsp;<a href="http://www.facebook.com/" class="art-facebook-tag-icon"></a>&nbsp;</div>
    </div>
    
</div><div class="art-textblock art-textblock-1986313161" data-left="94.06%">
        <div class="art-textblock-1986313161-text-container">
        <div class="art-textblock-1986313161-text">&nbsp;<a href="https://twitter.com/" class="art-twitter-tag-icon"></a>&nbsp;</div>
    </div>
    
</div><div class="art-textblock art-textblock-851309448" data-left="97.7%">
        <div class="art-textblock-851309448-text-container">
        <div class="art-textblock-851309448-text">&nbsp;<a href="http://" class="art-rss-tag-icon"></a>&nbsp;</div>
    </div>
    
</div>

<div class="art-textblock art-object1268703997" data-left="96.1%">
    <form class="art-search" name="Search" action="javascript:void(0)">
    <input type="text" value="">
            <input type="submit" value="Search" name="search" class="art-search-button">
    </form>
</div>
                    
</header>

<!--slideshow-->
  <div id="slideshow" class="wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div id="carousel-example-generic" class="carousel slide"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <?php $_from = $this->_tpl_vars['arrImage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
                <li data-target="#carousel-example-generic" data-slide-to=i class="<?php if ($this->_tpl_vars['i'] == 0): ?>active<?php endif; ?>"></li>
              <?php endforeach; endif; unset($_from); ?>
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

<nav class="art-nav">
        <ul class="art-hmenu">
            <li><a href="#">Công Trình</a>
                <ul>
                    <li><a href="#">Chung cư</a></li>
                    <li><a href="#">Biệt thự, Nhà phố</a></li>
                </ul>
             </li>
             <li><a href="#">Thiết Kế</a>
                <ul>
                <li><a href="#">Nhà Tắm</a></li>
                <li><a href="#">Phòng Khách</a></li>
                </ul>
             </li>
             <li><a href="#">Shop Nội Thất</a></li>
             <li><a href="#">Tin Tức</a></li>
             <li><a href="#">Phong Thủy</a></li>
             <li><a href="#">Clips</a></li>
             <li><a href="#">Liên Hệ</a></li>
             <li><a href="#">Tuyển Dụng</a></li>
       </ul> 
</nav>