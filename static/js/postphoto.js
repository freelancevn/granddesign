function changealbum(sValue){
	var strUrl = HOST_PHOTO+'ajax/changealbum';
	$.ajax({
		cache	: false,
		async	: false,
		type	: 'POST',
		data	: 'albumid=' + sValue,
		url		: strUrl,
		success	: function(response) { 
			
		}
	});
}

function changeshoutbox(sValue){
	var strUrl = HOST_PHOTO+'ajax/changeshout';
	$.ajax({
		cache	: false,
		async	: false,
		type	: 'POST',
		data	: 'shout=' + sValue,
		url		: strUrl,
		success	: function(response) { 
			
		}
	});
}