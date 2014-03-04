// JavaScript Document
checkCheckForm	= function()
{
	var iCheck		= false;
	$("input[@name='chk_delete[]'][type='checkbox']").each(function()
	{
			if(this.checked == true)
				iCheck		 =  true;			
	});	
	if(iCheck==false)
	{	
		alert('Vui lòng chọn hình ảnh nào bạn muốn cập nhật hoặc xóa.');
	}
	return iCheck;
}
choiceAlbum	= function(iAlbumID)
{
	window.location.href	= HOST_PHOTO + 'photo-manager.html?albumid=' + iAlbumID;
}
showMove=function()
{
	var iCheck		= false;
	$("input[@name='chk_delete[]'][type='checkbox']").each(function()
	{
			if(this.checked == true)
				iCheck		 =  true;			
	});	
	if(iCheck==false)
	{	
		alert('Vui lòng chọn hình ảnh nào bạn muốn di chuyển.');
	} else {		
		$("#div_Move").show();
		$("#div_html").hide();
	}
}
hideMove	= function()
{
	$("#div_Move").hide();
}
showHTML	= function()
{
	var iCheck		= false;
	var strWebsite	= '';
	var strForum	= '';
	$("input[@name='chk_delete[]'][type='checkbox']").each(function()
	{
		if(this.checked == true)
		{
			iCheck		=  true;
			strLink		= $("#txtLink_" + this.value).val();
			strImage	= $("#txtImages_" + this.value).val();
			if(strWebsite!='') strWebsite += '<br/><br/>';
			strWebsite	+= '<a href="' + strLink + '" target="_blank" alt="http://myworldvn.com">';
			strWebsite	+= '<img src="' + strImage + '" border=0  alt="http://myworldvn.com"></a>' + '\n';
			strForum	+= '[IMG]' + strImage + '[/IMG]\n';
		}
	});	
	if(iCheck==false)
	{	
		alert('Vui lòng chọn hình ảnh nào bạn tạo mã nhúng HTML.');
	} else {		
		$("#sembedHTMLWeb").val(strWebsite);
		$("#sembedHTMLForum").val(strForum);
		$("#div_html").show();
		$("#div_Move").hide();
	}
}