{include file='common/header.tpl'}

<form name="frmNews" method="post" action="{$smarty.const.HOST_ADMIN}/info">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
		<td align="center" class="lable_list">Danh sách nhân viên</td>
		<td align="right"></td>
    </tr>
	<tr>
		<td colspan="2">
			<table width="100%" border="1" cellpadding="2" cellspacing="1">
        		<tr class="label_title">
          			<td align="center" width="3%" valign="top">
						<input type="checkbox" name="checkAll" value="" onClick="checkBoxAll(this.form, 'txtCheckBoxId[]', this.checked);"  width="1px" height="1px"/>
					</td>
          			<td align="center" valign="top">Tên nhân viên</td>	
					<td>Chức vụ</td>	
					<td>Văn phòng</td>
					<td>Hình ảnh</td>
					<td>Vị trí</td>									
        		</tr>
				{if $arrList}
				{foreach key=i item=row from=$arrList}		
				<tr class="{cycle values="content_odd,content_even"}">		
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="txtCheckBoxId[]" value="{$row.id}" id="idCheck"/>
					</td>
					<td width="17%" valign="top">	 
					&nbsp;{$row.name|stripslashes}
					</td>				
					<td width="20%" valign="top">
						{$row.postion|stripslashes}
					</td>
					<td width="10%" valign="top">
						{if $row.type==0}Hồ Chí Minh{else}Hà Nội{/if}
					</td>
					<td width="40%" valign="top">
						<img src="{$smarty.const.HOST}/data/user/{$row.image}" width="75" />
					</td>
					<td width="10%" valign="top">
							{$row.sort}
					</td>			
				</tr>
				{/foreach}
				{else}
				<tr class="{cycle values="content_odd,content_even"}">		
					<td colspan="6" align="center" valign="top">
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
		  	  			<input type="button" name="btAddNew" class="content_button" value="Thêm mới" onClick="javascript: actionAddNew(this.form,'{$smarty.const.HOST_ADMIN}/info/add');"/>		  
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