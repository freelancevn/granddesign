// JavaScript Document
$(document).ready(function() {	
	$("#frm_warning").validate({		
		errorClass	: 'errorMessage',
		errorElement: 'span',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txt_contentwarning:{
				required 				: true
			}
		},
		messages: {
			txt_contentwarning:{
				required 				: "Bạn chưa nhập nội dung cần gởi."
			}
		}		
	});
	$("#frm_error").validate({		
		errorClass	: 'errorMessage',
		errorElement: 'span',
		onfocusout	: false,
		onkeyup		: false,
		rules: {
			txt_contenterror:{
				required 				: true
			}
		},
		messages: {
			txt_contenterror:{
				required 				: "Bạn chưa nhập nội dung cần gởi."
			}
		}		
	});
});

function changeavatar(iPhotoID,iAlbumID)
{
	var purl = HOST_PHOTO+'ajax/changeavataralbum';	
	showUIWaiting();
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + iAlbumID + '&photoid=' +  iPhotoID,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			$.unblockUI();
			showUIMessage('Bạn đã thay đổi hình đại diện cho album thành công.');
		}
	});
}
function showtagAlbum(iAlbumID)
{
	var purl = HOST_PHOTO+'ajax/loadtagalbum';	
	showUIWaiting();
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + iAlbumID,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			$.unblockUI();
			$.blockUI({
			message: $(response),
				css: {
					background: '#fff',
					border: 'none',
					top:  ($(window).height() - 450)/2 + 'px',
					left: ($(window).width() - 500)/2 + 'px',
					cursor: 'default'
				}
			});
		}
	});
}
loadsearchFriendAlbum	= function(sText,iAlbumID)
{
	var purl = HOST_PHOTO+'ajax/loadtagsearchalbum';	
	$.ajax({
		data	: 'albumid=' + iAlbumID +"&sText="+sText,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			document.getElementById("div_loadTag").innerHTML = response; 
		}
	});
}

cancel_tag	=function ()
{
	closeUI();
}
function copy_to_clipboard() {
		var s = document.getElementById('txtHTML');
		s.focus();
		s.select();		
		if (window.clipboardData)
			window.clipboardData.setData('text', s.value);
		else
			return (s.value);
	}
function showHideEmbedCode() {
	$.blockUI({
	message: $('#div_embedcode'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 450)/2 + 'px',
			left: ($(window).width() - 350)/2 + 'px',
			cursor: 'default'
		}
	});
}
VotesAlbum=function(iAlbumID)
{
	var purl = HOST_PHOTO+'ajax/votesalbum';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + iAlbumID + '&numvote=' + iNumVote,
		url		: purl,
		success	: function(response) {
			$("#spRace").hide();
			showUIMessage('Cám ơn bạn đã bình chọn cho album này');
		}
	});
}

showembedcode=function()
{
	$.blockUI({
	message: $('#div_embedcode'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 270)/2 + 'px',
			left: ($(window).width() - 350)/2 + 'px',
			cursor: 'default'
		}
	});
}
sharedAlbum	= function()
{
	$.blockUI({
	message: $('#div_shared'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 450)/2 + 'px',
			left: ($(window).width() - 500)/2 + 'px',
			cursor: 'default'
		}
	});
}
errorAlbum	= function()
{
	$.blockUI({
	message: $('#div_error'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 450)/2 + 'px',
			left: ($(window).width() - 525)/2 + 'px',
			cursor: 'default'
		}
	});
}
warningAlbum	= function()
{
	$.blockUI({
	message: $('#div_warning'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 450)/2 + 'px',
			left: ($(window).width() - 525)/2 + 'px',
			cursor: 'default'
		}
	});
}
likesAlbum	= function(iAlbumID)
{
	var purl = HOST_PHOTO+'ajax/likealbum';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + iAlbumID,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			if(response==0)
				alert('Bạn đã thích album này rồi.');
			else 
				showUIMessage('Bạn đã được + ' + response + ' điểm');
				window.location.reload();
		}
	});	
}
deleteComment=function(iCommentID, iAlbumID)
{
	if(confirm('Bạn có muốn xóa bình luận này?'))
	{
		var purl = HOST_PHOTO+'ajax/deletecomment';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'commentid=' + iCommentID + '&albumid=' +iAlbumID,
			url		: purl,
			type	: "POST",
			success	: function(response) {
				if(response==1)
					paging(HOST_PHOTO + 'ajax/viewcommentalbum?albumid='+ iAlbumID +'&page=1','div_commnent');
			}
		});
	}
}
commentAlbum=function(iAlbumID)
{
	var strContent 	= $('#txtComment').val();
	if(strContent!='')
	{
		strContent	= strContent.replace(/&/g,"##########");
		strContent	= strContent.replace(/[+]/g,"@@@@@@@@@@");
		var purl = HOST_PHOTO+'ajax/postcommentalbum';	
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'albumid=' + iAlbumID + '&txtComment=' + strContent,
			url		: purl,
			type	: "POST",
			success	: function(response) {
				$('#spTotalComment').html('(' + response + ')');
				$('#txtComment').val('');
				paging(HOST_PHOTO + 'ajax/viewcommentalbum?albumid='+ iAlbumID +'&page=1','div_commnent');
			}
		});				
	}
}

removeTagInAlbum	= function(iAlbumId,sUserName)
{
	var purl = HOST_PHOTO+'ajax/removetaginalbum';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'albumid=' + iAlbumId + '&susername=' + sUserName,
		url		: purl,
		success	: function(response) {
			alert('Bạn đã xóa thành công.');
			window.location.reload();
		}
	});
}