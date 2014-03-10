<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
    <meta charset="utf-8">
    <title>{$arrConfigSite.TITLE}</title>
    <meta name="description" content="{$arrConfigSite.DESCRIPTION}">
    <meta name="keywords" content="{$arrConfigSite.KEYWORDS}">
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="{$smarty.const.CSS}art_style.css"" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="{$smarty.const.CSS}art_style.responsive.css" media="all">

    <link href="{$smarty.const.CSS}bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="{$smarty.const.JS}art_jquery.js"></script>
    <script src="{$smarty.const.JS}art_script.js"></script>
    <script src="{$smarty.const.JS}art_script.responsive.js"></script>
    <script src="{$smarty.const.JS}jquery-min.js"></script> 
    <script src="{$smarty.const.JS}bootstrap.min.js"></script> 
    <script src="{$smarty.const.JS}commonindex.js"></script>
    <script src="{$smarty.const.JS}jquery.animate-shadow.js"></script>

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
              {foreach key=i item=rRows from=$arrImage}
                <li data-target="#carousel-example-generic" data-slide-to=i class="{if $i==0}active{/if}"></li>
              {/foreach}
            </ol>
            
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                {foreach key=i item=rRows from=$arrImage}
                <div class="item{if $i==0} active{/if}"><img src="{$smarty.const.HOST}/data/upload/{$rRows.imgname}" width="1170" height="276" alt="" /> </div>
                {/foreach}
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
                    {foreach key=i item=rRows from=$arrMenu}
                        <li><a href="{$smarty.const.HOST}?category={$rRows.id}" title="{$rRows.category_name}">{$rRows.category_name}</a></li>
                    {/foreach}
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