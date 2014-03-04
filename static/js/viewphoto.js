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

removeTagInPhoto = function(iPhotoID,iTagID)
{
	var purl = HOST_PHOTO+'ajax/removetaginphoto';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoid=' + iPhotoID + '&tagid=' + iTagID,
		url		: purl,
		success	: function(response) {			
			showUIMessage('Bạn đã xóa thành công.');
			window.location.reload();
		}
	});
}

loadsearchFriend	= function(sText,iPhotoID)
{
	var purl = HOST_PHOTO+'ajax/loadtagsearch';	
	//showUIWaiting();
	$.ajax({
		data	: 'photoid=' + iPhotoID +"&sText="+sText,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			//$.unblockUI();
			document.getElementById("div_LoadSearchFriend").innerHTML = response; 
		}
	});
}

loadBordertag	= function(id)
{
	$("#div_tag_" + id).show();
}

hideBordertag	= function(id)
{
	$("#div_tag_" + id).hide();
}

load_username	=function(id)
{	
	$("#div_tag_username_" + id).show();
}
hide_username	=function(id)
{
	$("#div_tag_username_" + id).hide();
}


function cancel_tag()
{
	$("#display_tag").hide(0);
	$("#display_text").hide(0);
}

function savetag()
{
	var purl = HOST_PHOTO+'public/savetagphoto';
	var txt_photo = $('#txt_photo').val();
	var txt_xLoc = $('#txt_xLoc').val();
	var txt_yloc = $('#txt_yloc').val();
	var friend_id	= $('input[name=friend_id]:checked', '#frm').val();
	if(friend_id=='undefined')
	{
		alert('Vui lòng chọn người cần tag.');
	} else {
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'txt_photo=' + txt_photo + '&txt_xLoc=' + txt_xLoc + '&txt_yloc=' + txt_yloc + '&friend_id=' + friend_id + 'name_user_tag=""',
			url		: purl,
			success	: function(response) {
				document.getElementById("display_text").innerHTML = '';
				loadendtag(txt_photo);
			}
		});
	}
}

function loadendtag(iPhotoID)
{
	var purl = HOST_PHOTO+'public/loadlisttag';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photo=' + iPhotoID,
		url		: purl,
		success	: function(response) {
			document.getElementById("showtag").innerHTML = response;
		}
});
}

function show_tag(iPhotoID){
	//showUIMessage('Nhấn chuột vào hình rồi đánh dấu họ');
	var img = $("#myhoto");
	img.css("cursor", "crosshair");
	img.mousemove(function(e){
		offset = $("#myhoto").offset();
		mXpos = e.pageX - 20 - offset.left;
		mYpos = e.pageY - 20 - offset.top;
	});	
	img.click(function(){
		cXpos = Math.round(mXpos);
		cYpos = Math.round(mYpos);
		offset = $("#myhoto").offset();
		$("#display_tag").show(0).css({top: cYpos+offset.top, left: cXpos+offset.left});
		$("#display_text").show(0).css({top: cYpos+offset.top, left: cXpos+offset.left+60});
		var iTopTag = cYpos+offset.top;
		var iLeftTag = cXpos+offset.left;
		loadlisttag(iPhotoID, iTopTag, iLeftTag);
	});
}

function loadlisttag(iPhotoID, iTopTag, iLeftTag)
{
	var purl = HOST_PHOTO+'ajax/loadtag';	
	showUIWaiting();
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoid=' + iPhotoID +"&xloc="+iTopTag+"&yloc="+iLeftTag,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			$.unblockUI();
			document.getElementById("display_text").innerHTML = response;
		}
	});
}

function copy_to_clipboard1() {
	var s = document.getElementById('txtHTML1');
	s.focus();
	s.select();
	
	if (window.clipboardData)
		window.clipboardData.setData('text', s.value);
	else
		return (s.value);
}
function copy_to_clipboard2() {
	var s = document.getElementById('txtHTML2');
	s.focus();
	s.select();
	
	if (window.clipboardData)
		window.clipboardData.setData('text', s.value);
	else
		return (s.value);
}
function copy_to_clipboard3() {
	var s = document.getElementById('txtHTML3');
	s.focus();
	s.select();
	
	if (window.clipboardData)
		window.clipboardData.setData('text', s.value);
	else
		return (s.value);
}

showembedcode=function()
{
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
sharedPhoto	= function()
{
	$.blockUI({
	message: $('#div_shared'),
		css: {
			background: '#fff',
			border: 'none',
			top:  ($(window).height() - 450)/2 + 'px',
			left: ($(window).width() - 525)/2 + 'px',
			cursor: 'default'
		}
	});
}
errorPhoto	= function()
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
warningPhoto	= function()
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

VotesPhoto	= function (iPhotoID)
{
	var purl = HOST_PHOTO+'ajax/votesphoto';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoid=' + iPhotoID + '&numvote=' + iNumVote,
		url		: purl,
		success	: function(response) {
			$("#spRace").hide();
			showUIMessage('Cám ơn bạn đã bình chọn cho ảnh này');
		}
	});
}

likesPhoto	= function(iPhotoID, iTotal)
{
	var purl = HOST_PHOTO+'ajax/likephoto';	
	showUIWaiting();
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoid=' + iPhotoID,
		url		: purl,
		type	: "POST",
		success	: function(response) {
			$.unblockUI();
			if(response==0)
				alert('Bạn đã thích ảnh này rồi.');
			else 
			{
				showUIMessage('Bạn đã được + ' + response + ' điểm');
				window.location.reload();
			}
		}
	});

}
deleteComment=function(iCommentID, iPhotoID)
{
	if(confirm('Bạn có muốn xóa bình luận này?'))
	{
		var purl = HOST_PHOTO+'ajax/deletecommentphoto';	
		showUIWaiting();
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'commentid=' + iCommentID + '&photoid=' +iPhotoID,
			url		: purl,
			type	: "POST",
			success	: function(response) {
				$.unblockUI();
				if(response==1)
					paging(HOST_PHOTO + 'ajax/viewcommentphoto?photoid='+ iPhotoID +'&page=1','div_commnent');
			}
		});
	}
}
commentPhoto=function(iPhotoID)
{
	var strContent 	= $('#txtComment').val();
	if(strContent!='')
	{
		strContent	= strContent.replace(/&/g,"##########");
		strContent	= strContent.replace(/[+]/g,"@@@@@@@@@@");
		var purl = HOST_PHOTO+'ajax/postcommentphoto';	
		showUIWaiting();
		$.ajax({
			cache	: true,
			async	: false,
			data	: 'photoid=' + iPhotoID + '&txtComment=' + strContent,
			url		: purl,
			type	: "POST",
			success	: function(response) {
				$.unblockUI();
				$('#txtComment').val('');
				$('#spTotalComment').html('(' + response + ')');
				paging(HOST_PHOTO + 'ajax/viewcommentphoto?photoid='+ iPhotoID +'&page=1','div_commnent');
			}
		});				
	}
}

removeTagInAlbum	= function(iPhotoID,sUserName)
{
	var purl = HOST_PHOTO+'ajax/removetaginphoto';	
	$.ajax({
		cache	: true,
		async	: false,
		data	: 'photoid=' + iPhotoID + '&susername=' + sUserName,
		url		: purl,
		success	: function(response) {
			$('#sUserInAlbum').html(response);
			showUIMessage('Bạn đã xóa thành công.');
		}
	});
}