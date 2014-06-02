<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="robots" content="index, all"/>
        <title>Quản Trị {$smarty.const.HOST}</title>
        <link href="{$smarty.const.CSS}admin/admin_style.css" rel="stylesheet" type="text/css" media="screen"/>
		<script type="text/javascript" src="{$smarty.const.JS}jquery-1.8.js"></script>	    
		<script type="text/javascript" src="{$smarty.const.JS}jquery.validate.js"></script>
		<script type="text/javascript" src="{$smarty.const.JS}listform.js"></script>
		<script type="text/javascript" src="{$smarty.const.JS}ckeditor/ckeditor.js"></script>
        <script type="text/javascript" src="{$smarty.const.JS}/tab.js"></script>    
        <script type="text/javascript" src="{$smarty.const.JS}/datetimepicker.js"></script>  
   	</head>
    <body>
    <ul class="tabs">
        <li>
	        <a class="active" href="{$smarty.const.HOST_ADMIN}/IntroduceGroup" title="IntroduceGroup">Giới Thiệu</a>
        </li>
        <li>
    	    <a class="" href="{$smarty.const.HOST_ADMIN}/news" title="News">Tin Tức</a>
        </li>
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/productgroup">Dự án</a>
        </li>
        <li>
        	<a class="" href="#tab4">Phong Thủy</a>
        </li>
        <li>
        	<a class="" href="#tab5">Vật Liệu Gỗ</a>
        </li>
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/clips" title="#Clips">Clips</a>
        </li>        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/blogs" title="#Blogs">Blogs</a>
        </li>        
        <li>
        	<a class="" href="#tab8">Tuyển Dụng</a>
        </li>        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/contact" title="Contacts">Liên Hệ</a>
        </li>
        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/promotion" title="Promotions">Khuyến Mãi</a>
        </li>
        
        <li>
            <a class="" href="{$smarty.const.HOST_ADMIN}/picview" title="Quản trị nội dung con">Các nội dung khác</a>
        </li>

    </ul>
