<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{$arrConfigSite.TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="{$arrConfigSite.KEYWORDS}" />
<meta name="description" content="{$arrConfigSite.DESCRIPTION}" />
<meta http-equiv="Content-language" content="vi" />
<meta name="robots" content="index,follow" />

<meta property="og:title" content="{$arrConfigSite.TITLE}"/>
<meta property="og:type" content="product"/>
<meta property="og:image" content="{$smarty.const.IMAGES}logo.png"/>
<meta property="og:description" content="{$arrConfigSite.DESCRIPTION}"/>    

<link rel="icon" href="{$smarty.const.IMAGES}favicon.ico" type="image/x-icon" />
<link href="{$smarty.const.CSS}bootstrap.min.css" rel="stylesheet" media="screen">
<link href="{$smarty.const.CSS}style.css" rel="stylesheet" media="screen">
<script src="{$smarty.const.JS}jquery-min.js"></script> 
<script src="{$smarty.const.JS}bootstrap.min.js"></script> 
<script src="{$smarty.const.JS}commonindex.js"></script>
<script src="{$smarty.const.JS}jquery.animate-shadow.js"></script>


<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->
<title>Title</title>
 {literal}
 <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-32593755-2', 'granddesign.com.vn');
  ga('send', 'pageview');

</script>{/literal}
</head>
<body>
<div id="page">
	<!--header-->
  <div id="header" class="wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h1 class="logo"><a href="{$smarty.const.HOST}" title="Grand Design">Grand Design</a></h1>
        </div>
        <div class="col-lg-8">
          <div class="head-info clearfix">
            <div class="socials"> <a href="#" title="Facebook"><img src="{$smarty.const.IMAGES}facebook.gif" width="20" height="20" alt=""></a> <a href="#" title="Google+"><img src="{$smarty.const.IMAGES}googleplus.gif" width="20" height="20" alt=""></a> <a href="#" title="Printess"><img src="{$smarty.const.IMAGES}printess.gif" width="20" height="20" alt=""></a> <a href="#" title="Twitter"><img src="{$smarty.const.IMAGES}twitter.gif" width="20" height="20" alt=""></a> <a href="#" title="Youtube"><img src="{$smarty.const.IMAGES}youtube.gif" width="20" height="20" alt=""></a> </div>
            <div class="form-search">
              <form action="" method="post">
                <fieldset>
                  <input type="text" placeholder="Tìm kiếm" name="keyword" id="keyword" />
                  <input type="image" src="{$smarty.const.IMAGES}ico-search.gif" name="btn-search" class="btn-search" />
                </fieldset>
              </form>
            </div>
            <div class="navigation clearfix">
              <ul>
                <li class="submenu"><a href="#" title="Công trình">Công trình</a>
					<ul class="submenu-inner">
					{foreach key=i item=rRows from=$arrMenu}
                    	<li><a href="{$smarty.const.HOST}?category={$rRows.id}" title="{$rRows.category_name}">{$rRows.category_name}</a></li>
					{/foreach}
					</ul>
				</li>
                <li><a href="{$smarty.const.HOST}/public/shopnoithat" title="Shop nội thất">Shop nội thất</a>
                	
                </li>
                <li><a href="{$smarty.const.HOST}/public/xuongsanxuat" title="Xưởng sản xuất">Xưởng sản xuất</a></li>
				<li><a href="{$smarty.const.HOST}/public/about" title="Xưởng sản xuất">Giới thiệu</a></li>
                <!--li class="submenu"><a href="#" title="Giới thiệu">Giới thiệu</a>
					<ul class="submenu-inner">
						<li><a href="{$smarty.const.HOST}/public/service" title="Dịch vụ">Dịch vụ</a></li>
						<li><a href="{$smarty.const.HOST}/public/about" title="Giới thiệu">Giới thiệu</a></li>
					</ul>
				</li-->
                <li><a href="{$smarty.const.HOST}/public/contact" title="Liên hệ">Liên hệ</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--end header-->