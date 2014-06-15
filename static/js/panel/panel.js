var numposts = 7;
var showpostthumbnails = true;
var displaymore = false;
var displayseparator = false;
var showcommentnum = false;
var showpostdate = false;
var showpostsummary = true;
var numchars = 100;
$(document).ready(function() {
	$('#sai').vTicker({
		speed : 500,
		pause : 3000,
		showItems : 5,
		animation : 'fade',
		mousePause : false,
		height : 0,
		direction : 'up'
	});
});