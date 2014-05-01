<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="robots" content="index, all"/>
        <meta name="distribution" content="Global"/>
        <meta name="author" content="doitrongban@gmail.com"/>
        <meta name="copyright" content="QC VIET NAM"/>
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
	        <a class="active" href="{$smarty.const.HOST_ADMIN}/IntroduceGroup" title="#IntroduceGroup">Giới Thiệu</a>
        </li>
        <li>
    	    <a class="" href="{$smarty.const.HOST_ADMIN}/news" title="#News">Tin Tức</a>
        </li>
        <li>
        	<a class="" href="#tab3">Dự án</a>
        </li>
        <li>
        	<a class="" href="#tab4">Phong Thủy</a>
        </li>
        <li>
        	<a class="" href="#tab5">Vật Liệu Gỗ</a>
        </li>
        <li>
        	<a class="" href="#tab6">Clips</a>
        </li>        
        <li>
        	<a class="" href="#tab7">Blogs</a>
        </li>        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/recruitment" title="#Tuyển Dụng">Tuyển Dụng</a>
        </li>        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/contact" title="#Contacts">Liên Hệ</a>
        </li>
        
        <li>
        	<a class="" href="{$smarty.const.HOST_ADMIN}/promotion" title="#Promotions">Khyến Mãi</a>
        </li>

    </ul>
    <!--<div id="IntroduceGroup" style="display: block;">
        <p><a href="{$smarty.const.HOST_ADMIN}/about" class="label_sub_menu">Tổng Quan</a> </p>
        <p>Tầm Nhìn - Sứ Mệnh</p>
        <p>Quy Trình Làm Việc</p>
        <p>Nội Quy</p>
        <p>Bảng Giá</p>
        <p><a href="{$smarty.const.HOST_ADMIN}/info" class="label_sub_menu">Thông tin nhân viên</a></p>
   		<p><a href="{$smarty.const.HOST_ADMIN}/footer" class="label_sub_menu">Thông tin Footer</a></p>
    </div>-->
    <div id="NewsGroup" style="display: none;">
        <p>Welcome to news page</p>
    </div>
    <div id="tab3" style="display: none;">
        <p>Nội Thất</p>
        <p>Kiến Trúc</p>
        <p>Ảnh Thực Tế Sau Thi Công</p>
     </div>
<!--     <div id="Contacts" style="display: none;">
     <table bordercolor="#66CCFF">
         <tr>
         	<td>
              <p><a href="{$smarty.const.HOST_ADMIN}/Contacts/contact" class="label_sub_menu">Thông tin Liên hệ</a></p>
            </td>         
         </tr>
     </table>

     </div>-->
        
        
		<!--<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111"  width="100%"  height="80%" align="center">
			
			<tr>
				<td align="center" colspan="3" height="2" valign="bottom">
					<hr color="silver">
				</td>			
			</tr>			
			<tr>
				<td colspan="3">
					<table cellpadding="0" cellspacing="0" width="100%" border="0">
						<tr>
							<td valign="top">
								<table width="100%" cellpadding="3" cellspacing="1" border="0">
									<tr>						
										<td valign="top" width="20%">
											{include file="common/panelmenu.tpl"}
										</td>
										<td width="1%" align="left"><hr width="2" style="height:500px;"></td>
										<td valign="top" align="center" width="79%">-->