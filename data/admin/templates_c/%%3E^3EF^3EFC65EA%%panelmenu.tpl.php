<?php /* Smarty version 2.6.20, created on 2013-09-10 17:39:32
         compiled from common/panelmenu.tpl */ ?>
<table cellpadding="3" cellspacing="1" border="0" width="100%">
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/about" class="label_sub_menu">Giới thiệu</a>											
	</td>			
</tr>

<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/category" class="label_sub_menu">Danh mục</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/product" class="label_sub_menu">Công trình</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/shop" class="label_sub_menu">Shop nội thất</a>											
	</td>			
</tr>

<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/service" class="label_sub_menu">Dịch Vụ</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/xuong" class="label_sub_menu">Xưởng sản xuất</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/picview" class="label_sub_menu">Hình quảng cáo trang chủ</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/footer" class="label_sub_menu">Thông tin Footer</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/contact" class="label_sub_menu">Thông tin Liên hệ</a>
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/configsite" class="label_sub_menu">Thông tin Website</a>
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/info" class="label_sub_menu">Thông tin nhân viên</a>
	</td>			
</tr>
<?php if ($this->_tpl_vars['AppUI']->id > 0): ?>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/user/changepass" class="label_sub_menu">Đổi mật khẩu</a>											
	</td>			
</tr>
<tr height="20">
	<td class="label_sub_menu">&raquo;</td>
	<td align="left" class="label_sub_menu">						
		<a href="<?php echo @HOST_ADMIN; ?>
/user/logout" class="label_sub_menu">Thoát</a>											
	</td>			
</tr>
<?php endif; ?>
</table>