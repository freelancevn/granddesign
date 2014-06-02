$(document).ready(function(){
	$('ul.tabs').each(function(){
	// For each set of tabs, we want to keep track of
	// which tab is active and it's associated content
	var $active, $content, $links = $(this).find('a');
	// If the location.hash matches one of the links, use that as the active tab.
	// If no match is found, use the first link as the initial active tab.
	$links.filter(function(){
		$aaa = location.href;
		if ($aaa.indexOf("contact") != -1) {
			$url = "http://granddesign.local/admin/contact";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("promotion") != -1) {
			$url = "http://granddesign.local/admin/promotion";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("news") != -1) {
			$url = "http://granddesign.local/admin/news";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("recruitment") != -1) {
			$url = "http://granddesign.local/admin/recruitment";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("fengshui") != -1) {
			$url = "http://granddesign.local/admin/fengshui";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("blogs") != -1) {
			$url = "http://granddesign.local/admin/blogs";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("clips") != -1) {
			$url = "http://granddesign.local/admin/clips";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else if($aaa.indexOf("product") != -1 || $aaa.indexOf("category") != -1) {
			$url = "http://granddesign.local/admin/productgroup";
			$active = $($links.filter('[href="'+$url+'"]')[0] || $links[0]);
		} else {
			$active = $($links.filter('[href="'+location.href+'"]')[0] || $links[0]);
		}
	});
//	$active = $($links.filter('[href="'+location.href+'"]')[0] || $links[0]);
	$active.addClass('active');
	$content = $($active.attr('title'));
	// Hide the remaining content
	$links.not($active).each(function () {
		$(this).removeClass('active');
		$($(this).attr('title')).hide();
	});
	$content.show();
	// Bind the click event handler
	$(this).on('click', 'a', function(e){
		// Make the old tab inactive.
		$active.removeClass('active');
		$content.hide();
		// Update the variables with the new link and content
		$active = $(this);
		$content = $($(this).attr('title'));
		// Make the tab active.
		$active.addClass('active');
		$content.show();
		// Prevent the anchor's default click action
		//e.preventDefault();
		});
	});
});