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
        	<a class="" href="{$smarty.const.HOST_ADMIN}/productgroup">Dự án</a>
        </li>
        <li>
    	    <a class="" href="{$smarty.const.HOST_ADMIN}/news" title="News">Tin Tức</a>
        </li>
        <li>
        	<a class="" href="#tab5">Vật Liệu Gỗ</a>
        </li>
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/clipblog" title="#Clips">Clips & Blogs</a>
        </li>      
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/recruitment" title="Recruitment">Tuyển Dụng</a>
        </li>        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/contact" title="Contacts">Liên Hệ</a>
        </li>
        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/promotion" title="Promotions">Khuyến Mãi</a>
        </li>
        <li>
            <a class="" href="{$smarty.const.HOST_ADMIN}/picview" title="#Picview">Hình Trang Chủ</a>
        </li>
        <li>
            <a class="" href="{$smarty.const.HOST_ADMIN}/general/about" title="general">Các nội dung khác</a>
        </li>
       {if $AppUI->id>0}
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/user/changepass" title="#ChangePassword">Đổi mật khẩu</a>
        </li>
		<li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/user/logout" title="#Logout">Thoát</a>
        </li>
		{/if}
    </ul>
