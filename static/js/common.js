// JavaScript Document
HOST_PHOTO	= '/';
var HOST_IMAGES	= '/static/images/';
var iNumVote=0;
var arrLang = new Array ("","Xác nhận",
							"Bạn có thật sự muốn xóa ảnh này không?",
							"Bạn có thật sự muốn xóa Album ảnh này không?",
							"Bạn có thật sự muốn xóa ảnh này ra khỏi danh sách yêu thích không?",
							"Tìm kiếm",
							"Thông báo",
							"Cám ơn bạn đã bình chọn cho hình ảnh này.",
							"Cám ơn bạn đã bình chọn cho Album ảnh này.",
							"Đồng ý",
							"Hủy bỏ",
							"Bạn có thật sự muốn chọn ảnh này làm ảnh đại diện không?"
						);
function UpdateFeed(fedd_id,link_redirect){
	
	var purl = HOST_PHOTO+'ajax/updateviewfeedi/feddi_id/'+fedd_id;
	//alert('Feddi_id='+fedd_id+'--link'+link_redirect);	
	$.ajax({
			cache	: false,
			async	: false,
			data	: null,
			url		: purl,
			type	: 'post',
			success	: function(response) {
					location.href = ""+link_redirect;
			}
	});

}
joinFriend	= function(iUserFriend)
{
	var purl = HOST_PHOTO+'ajax/showaddfriend';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'userfriend=' + iUserFriend,
		url		: purl,
		success	: function(response) {
			$.blockUI({
			message: response,
				css: {
					background: '#fff',
					border: 'none',
					top:  ($(window).height() - 450)/2 + 'px',
					left: ($(window).width() - 630)/2 + 'px',
					cursor: 'default'
				}
			});
		}
	});
}
function acceptFriendOnFeedi(id_make_friend,id_user_f,id_user_t) {
	var purl = HOST_PHOTO+'ajax/aceptionfriend/idfriend/'+id_make_friend+'/useridf/'+id_user_f;	
	$.ajax({
			cache	: false,
			async	: false,
			data	: null,
			url		: purl,
			type	: 'post',
			success	: function(response) 
			{
				////		
				//alert(''+response);
			}
	});
}

function declineFriendOnFeedi(id_make_friend,id_user_f,id_user_t) {
	var purl = HOST_PHOTO+'ajax/denyfriend/idfriend/'+id_make_friend+'/useridf/'+id_user_f;	
	$.ajax({
			cache	: false,
			async	: false,
			data	: null,
			url		: purl,
			type	: 'post',
			success	: function(response) 
			{
				////		
				alert(''+response);
			}
	});
}
selectAll= function(tBool)
{
	$("input[@name='chk_delete[]'][type='checkbox']").each(function()
	{
			this.checked = tBool;			
	});	
}

selectVotes=function(iNum)
{	
	iNumVote	= iNum;
	for (i=1;i<=5;i++) {		
		var sImageShow=(i<=iNum) ? 'star.gif':'stari.gif';		
		$('#imgVote'+i).attr("src", HOST_IMAGES + sImageShow);
	}
}
choiceAvatar= function(id)
{
	if(confirm('Bạn có thật sự muốn chọn ảnh này làm ảnh đại diện không?'))
	{
		var purl = HOST_PHOTO+'ajax/choiceavatar';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'photoID=' + id,
			url		: purl,
			success	: function(response) {
				alert('Bạn đã chọn hình đại diện thành công.');
				//window.location.reload();
			}
		});
	}
}
updatePhoto	= function(id)
{	
	var purl = HOST_PHOTO+'ajax/updatephoto';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoID=' + id,
		url		: purl,
		success	: function(response) {
			$.blockUI({
			message: response,
				css: {
					background: '#fff',
					border: 'none',
					top:  ($(window).height() - 450)/2 + 'px',
					left: ($(window).width() - 630)/2 + 'px',
					cursor: 'default'
				}
			});
		}
	});
}
deletePhotoInphoto	= function(id)
{
	if(confirm('Bạn có chắc là muốn xóa hình này?'))
	{
		var purl = HOST_PHOTO+'ajax/deletephoto';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'photoID=' + id,
			url		: purl,
			success	: function(response) {
				alert('Bạn đã xóa thành công.');
				window.location.href	= HOST_PHOTO + 'my-photo.html';
			}
		});
	}
}
deletePhoto	= function(id)
{
	if(confirm('Bạn có chắc là muốn xóa hình này?'))
	{
		var purl = HOST_PHOTO+'ajax/deletephoto';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'photoID=' + id,
			url		: purl,
			success	: function(response) {
				alert('Bạn đã xóa thành công.');
				window.location.reload();
			}
		});
	}
}
deletePhotoLike	= function(id)
{
	if(confirm('Bạn có chắc là muốn xóa hình này khỏi danh sách yêu thích?'))
	{
		var purl = HOST_PHOTO+'ajax/deletephotolike';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'photoID=' + id,
			url		: purl,
			success	: function(response) {
				alert('Bạn đã xóa thành công.');
				window.location.reload();
			}
		});
	}
}
deleteAlbumNew	= function(id)
{
	if(confirm('Bạn có chắc là muốn xóa Album này và toàn bộ hình ảnh của Album?'))
	{
		var purl = HOST_PHOTO+'ajax/deletealbum';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'albumid=' + id,
			url		: purl,
			success	: function(response) {
				if(response==1)
				{
					alert('Bạn đã xóa thành công.');
					window.location.href	= HOST_PHOTO + 'my-album.html';
				} else {
					alert('Bạn không có quyền thao tác action này.');
				}
			}
		});
	}
}
deleteAlbum	= function(id)
{
	if(confirm('Bạn có chắc là muốn xóa Album này và toàn bộ hình ảnh của Album?'))
	{
		var purl = HOST_PHOTO+'ajax/deletealbum';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'albumid=' + id,
			url		: purl,
			success	: function(response) {
				if(response==1)
				{
					alert('Bạn đã xóa thành công.');
					window.location.reload();
				} else {
					alert('Bạn không có quyền thao tác action này.');
				}
			}
		});
	}
}
updateAlbum	= function(id)
{	
	var purl = HOST_PHOTO+'ajax/updatealbum';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + id,
		url		: purl,
		success	: function(response) {
			$.blockUI({
			message: response,
				css: {
					background: '#fff',
					border: 'none',
					top:  ($(window).height() - 450)/2 + 'px',
					left: ($(window).width() - 480)/2 + 'px',
					cursor: 'default'
				}
			});
		}
	});
}
showaction	= function(id,type,div)
{
	if(type==1)
	{
		$("#" + div + id).show();
	} else {
		$("#" + div + id).hide();
	}
}
createAlbum	= function()
{
	var purl = HOST_PHOTO+'ajax/createalbum';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: null,
		url		: purl,
		success	: function(response) {
			$.blockUI({
			message: response,
				css: {
					background: '#fff',
					border: 'none',
					top:  ($(window).height() - 450)/2 + 'px',
					left: ($(window).width() - 480)/2 + 'px',
					cursor: 'default'
				}
			});
		}
	});
}

function paging(url, div) {
	$.get(url,{},function(result){if(result){$('#'+div).html(result);}});
}
showpass = function()
{
	$("#div_hidepass").hide();
	$("#div_showpass").show();
	$('#password').focus();	
}
hidepass = function()
{
	if($('#password').val()=='')
	{
		$("#div_hidepass").show();
		$("#div_showpass").hide();
	}
}
function showlogin(){
	$.blockUI({
	message: $('#div_showdialoglogin'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 300)/2 + 'px',
			left: ($(window).width() - 300)/2 + 'px',
			cursor: 'pointer'
		}
	});
}

function showUIMessage(msg) {
	if (msg!='') {
		$.blockUI({message: msg, css: {background:'#fffbba', color:'#a90a0e', border:'1px solid #ffc407', showOverlay: false, width:'300px', top: ($(window).height()-200)/2 + 'px', left:($(window).width()-300)/2 + 'px', padding:'10px'}, overlayCSS: {opacity:'0'}});
		$('.blockOverlay').click($.unblockUI);
		setTimeout($.unblockUI, 2*20*60);
	}
}

function showUIWaiting(msg) {
	if (msg!='') {
		$.blockUI({message: '<img src="' + HOST_IMAGES + 'waiting.gif">', css: {background:'#fffbba', color:'#a90a0e', border:'1px solid #ffc407', showOverlay: false, width:'300px', top: ($(window).height()-200)/2 + 'px', left:($(window).width()-300)/2 + 'px', padding:'10px'}, overlayCSS: {opacity:'0'}});
		$('.blockOverlay').click($.unblockUI);
	}
}

function closeUI(){
	$.unblockUI();
}

$(function () 
{
  $('.au_tooltip_2').each(function () {
	// options
	var distance = 0;
	var time = 0;
	var hideDelay = 20;
	var hideDelayTimer = null;
	// tracker
	var beingShown = false;
	var shown = false;
	
	var trigger = $('.au_tooltip_trigger_2', this);
	var popup = $('.au_tooltip_content_2', this).css('opacity', 0);
	var top;
	top = 20;
	var ua = $.browser;
	

	// set the mouseover and mouseout on both element
	$([trigger.get(0), popup.get(0)]).mouseover(function () {
		  // stops the hide event if we move from the trigger to the popup element
		  if (hideDelayTimer) clearTimeout(hideDelayTimer);

		  // don't trigger the animation again if we're being shown, or already visible
		  if (beingShown || shown) 
		  {
			return;
		  } else 
		  {
			beingShown = true;

			// reset position of popup box
			popup.css({
			//  top: top,
			 // left: 0,
			  display: 'block' // brings the popup back in to view
			})
			// (we're using chaining on the popup) now animate it's opacity and position
			.animate({
			  opacity: 0.9
			}, time, 'swing', function() {
			  // once the animation is complete, set the tracker variables
			  beingShown = false;
			  shown = true;
			});
		  }
	}).mouseout(function () {
		  // reset the timer if we get fired again - avoids double animations
		  if (hideDelayTimer) clearTimeout(hideDelayTimer);
		  // store the timer so that it can be cleared in the mouseover if required
		//check browser iE 8 
		if ( ua.msie && ua.version.slice(0,3) == "8.0" ) 
		{
			hideDelayTimer = setTimeout(function () {
			hideDelayTimer = null;
			shown = false;
			popup.css('display', 'none');
		  }, 500);
		}
		else
		{
			hideDelayTimer = setTimeout(function () {
			hideDelayTimer = null;
			shown = false;
			popup.css('display', 'none');
		  }, 50);
		}
		  
	});
  });
});