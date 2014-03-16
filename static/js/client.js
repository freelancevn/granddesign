$(document).ready(function () {
  $('.Home .slideshow').each(function () {
       var $that = $(this),
             automaticScroll,
             startScroll = function () {
                  automaticScroll = window.setInterval(function () {
                       $('.arrow.right', $that).click();
                  }, 5000);
             },
             clearScroll = function () {
                  window.clearInterval(automaticScroll);
             };
       startScroll();
       $that.hover(clearScroll, startScroll);
  });
});
 



/* rewrite the links on the top level category navigation */ 
$(document).ready(function () { 
var href = '', 
$this = {}; 

$('#top_categories li a').each(function() { 
$this = $(this); 
href = $this.prop('href') || ''; 
if (href.indexOf('/home') > -1) { 
href = href.replace('/home', '/departmenthome'); 
$this.prop('href', href);	
} 
}); 
});
