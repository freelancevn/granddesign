{include file='common/header.tpl'}

<form name="frmNews" method="post" action="{$smarty.const.HOST_ADMIN}/category">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list">Danh sách Danh Mục</td>
		<td align="right"></td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="1" cellpadding="2" cellspacing="1">
        		<tr class="label_title">
          			<td align="center" width="3%" valign="top">
						<input type="checkbox" name="checkAll" value="" onClick="checkBoxAll(this.form, 'txtCheckBoxId[]', this.checked);"  width="1px" height="1px"/>
					</td>
          			<td align="center" valign="top">Tên danh mục</td>	
					<td>Loại</td>
					<td>Cate shop</td>		
					<td>Vị trí</td>									
        		</tr>
				{if $arrList}
				{foreach key=i item=row from=$arrList}		
				<tr class="{cycle values="content_odd,content_even"}">		
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="txtCheckBoxId[]" value="{$row.id}" id="idCheck"/>
					</td>
					<td width="47%" valign="top">	 
					&nbsp;<a href="{$smarty.const.HOST_ADMIN}/category/edit?id={$row.id}" class="ahref">{$row.category_name|stripslashes}</a>
					</td>				
					<td width="20%" valign="top" title="{$row.description|stripslashes}">
							{if $row.type==0}Công Trình{else}Shop Nội Thất{/if}
					</td>
					<td width="15%" valign="top" title="{$row.description|stripslashes}">
							{if $row.cate_shop==1}Phòng khách{elseif $row.cate_shop==2}Bếp & Phòng ăn{elseif $row.cate_shop==3}Phòng ngủ{elseif $row.cate_shop==4}Phòng vệ sinh{elseif $row.cate_shop==5}Đèn nội thất{/if}
					</td>
					<td width="15%" valign="top">
							{$row.sort}
					</td>		
									
				</tr>
				{/foreach}
				{else}
				<tr class="{cycle values="content_odd,content_even"}">		
					<td colspan="5" align="center" valign="top">
						Chưa có dữ liệu
					</td>
				</tr>
				{/if}
      		</table>
			{paging total=$intTotal offset=$intOffset limit=$intLimit params=0}
		</td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="0" cellpadding="1" cellspacing="1">
        		<tr>
          			<td align="right" width="40%" valign="top">						
		  	  			<input type="button" name="btAddNew" class="content_button" value="Thêm mới" onClick="javascript: actionAddNew(this.form,'{$smarty.const.HOST_ADMIN}/category/add');"/>		  
		 				&nbsp;&nbsp;&nbsp;
		   				<input type="button" name="btDelete" class="content_button" value="Xóa" onClick="javascript:confirmDelete(this.form,'Vui lòng chọn một record','Bạn có chắc là muốn xóa?')"/>	  
		  			</td>
        		</tr>
      		</table>
		</td>
    </tr>	
</table>
</form>

{include file='common/footer.tpl'}