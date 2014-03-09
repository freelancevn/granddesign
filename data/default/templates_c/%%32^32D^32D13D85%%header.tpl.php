<?php /* Smarty version 2.6.20, created on 2014-03-09 15:24:48
         compiled from common/header.tpl */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_tpl_vars['arrConfigSite']['TITLE']; ?>
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $this->_tpl_vars['arrConfigSite']['KEYWORDS']; ?>
" />
<meta name="description" content="<?php echo $this->_tpl_vars['arrConfigSite']['DESCRIPTION']; ?>
" />
<meta http-equiv="Content-language" content="vi" />
<meta name="robots" content="index,follow" />

<meta property="og:title" content="<?php echo $this->_tpl_vars['arrConfigSite']['TITLE']; ?>
"/>
<meta property="og:type" content="product"/>
<meta property="og:image" content="<?php echo @IMAGES; ?>
logo.png"/>
<meta property="og:description" content="<?php echo $this->_tpl_vars['arrConfigSite']['DESCRIPTION']; ?>
"/>    

<link rel="icon" href="<?php echo @IMAGES; ?>
favicon.ico" type="image/x-icon" />
<link href="<?php echo @CSS; ?>
bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<?php echo @CSS; ?>
style.css" rel="stylesheet" media="screen">
<script src="<?php echo @JS; ?>
jquery-min.js"></script> 
<script src="<?php echo @JS; ?>
bootstrap.min.js"></script> 
<script src="<?php echo @JS; ?>
commonindex.js"></script>
<script src="<?php echo @JS; ?>
jquery.animate-shadow.js"></script>


<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->
<title>Title</title>
 <?php echo '
 <script>
  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');

  ga(\'create\', \'UA-32593755-2\', \'granddesign.com.vn\');
  ga(\'send\', \'pageview\');

 </script>
 '; ?>

</head>
<body>
<div id="page">
	<!--header-->
  <div id="header" class="wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h1 class="logo"><a href="<?php echo @HOST; ?>
" title="Grand Design">Grand Design</a></h1>
        </div>
        <div class="col-lg-8">
          <div class="head-info clearfix">
            <div class="socials"> <a href="#" title="Facebook"><img src="<?php echo @IMAGES; ?>
facebook.gif" width="20" height="20" alt=""></a> <a href="#" title="Google+"><img src="<?php echo @IMAGES; ?>
googleplus.gif" width="20" height="20" alt=""></a> <a href="#" title="Printess"><img src="<?php echo @IMAGES; ?>
printess.gif" width="20" height="20" alt=""></a> <a href="#" title="Twitter"><img src="<?php echo @IMAGES; ?>
twitter.gif" width="20" height="20" alt=""></a> <a href="#" title="Youtube"><img src="<?php echo @IMAGES; ?>
youtube.gif" width="20" height="20" alt=""></a> </div>
            <div class="form-search">
              <form action="" method="post">
                <fieldset>
                  <input type="text" placeholder="Tìm kiếm" name="keyword" id="keyword" />
                  <input type="image" src="<?php echo @IMAGES; ?>
ico-search.gif" name="btn-search" class="btn-search" />
                </fieldset>
              </form>
            </div>
            <div class="navigation clearfix">
              <ul>
                <li class="submenu"><a href="#" title="Công trình">Công trình</a>
					<ul class="submenu-inner">
					<?php $_from = $this->_tpl_vars['arrMenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['rRows']):
?>
                    	<li><a href="<?php echo @HOST; ?>
?category=<?php echo $this->_tpl_vars['rRows']['id']; ?>
" title="<?php echo $this->_tpl_vars['rRows']['category_name']; ?>
"><?php echo $this->_tpl_vars['rRows']['category_name']; ?>
</a></li>
					<?php endforeach; endif; unset($_from); ?>
					</ul>
				</li>
                <li><a href="<?php echo @HOST; ?>
/public/shopnoithat" title="Shop nội thất">Shop nội thất</a>
                	
                </li>
                <li><a href="<?php echo @HOST; ?>
/public/xuongsanxuat" title="Xưởng sản xuất">Xưởng sản xuất</a></li>
				<li><a href="<?php echo @HOST; ?>
/public/about" title="Xưởng sản xuất">Giới thiệu</a></li>
                <!--li class="submenu"><a href="#" title="Giới thiệu">Giới thiệu</a>
					<ul class="submenu-inner">
						<li><a href="<?php echo @HOST; ?>
/public/service" title="Dịch vụ">Dịch vụ</a></li>
						<li><a href="<?php echo @HOST; ?>
/public/about" title="Giới thiệu">Giới thiệu</a></li>
					</ul>
				</li-->
                <li><a href="<?php echo @HOST; ?>
/public/contact" title="Liên hệ">Liên hệ</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--end header-->