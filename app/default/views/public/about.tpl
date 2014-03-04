{include file='common/header.tpl'}
<script src="{$smarty.const.JS}jquery.mCustomScrollbar.min.js"></script>
<link href="{$smarty.const.CSS}jquery.mCustomScrollbar.css" rel="stylesheet" />
<!--slideshow-->
  <div id="slideshow" class="wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div id="carousel-example-generic" class="carousel slide"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
				{foreach key=i item=rRows from=$arrImage}
				<div class="item{if $i==0} active{/if}"><img src="{$smarty.const.HOST}/data/upload/{$rRows.imgname}" width="1170" height="276" alt="" /> </div>
				{/foreach}
            </div>
            
            <!-- Controls --> 
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="icon-prev"></span> </a> <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="icon-next"></span> </a> </div>
        </div>
      </div>
    </div>
  </div>
  <!--end slideshow-->
<div id="highlight" class="wrapper">
    <div class="container">     
        <div class="row">
          <div class="col-lg-4">
          	<div class="about">
				<div class="abouttilte">
					<span>GIỚI THIỆU VỀ GRANDDESIGN</span>
				</div>
				<div class="aboutcontent">
					<span style="text-align:justify">{$arrConfig.key_value}</span>
				</div>
			</div>
          </div>
		  <div class="col-lg-4">
          	<div class="about">
				<div class="abouttilte">
					<span>Office Hồ Chí Minh</span>
				</div>
				<div class="aboutcontent" id="hcm_scroll">
					{foreach key=i item=rRows from=$arrInfoHCM}
					<div class="row aboutpading">
						<div class="col-lg-6">
							<img src="{$smarty.const.HOST}/data/user/{$rRows.image}">
						</div>
						<div class="col-lg-6">
							<span>{$rRows.name}</span><br />
							<span>{$rRows.postion}</span>
						</div>
					</div>	
					{/foreach}
				</div>
			</div>
          </div>
		  <div class="col-lg-4">
          	<div class="about">
				<div class="abouttilte">
					<span>Office Hà Nội</span>
				</div>
				<div class="aboutcontent" id="ha_scroll">
					{foreach key=i item=rRows from=$arrInfoHN}
					<div class="row aboutpading">
						<div class="col-lg-6">
							<img src="{$smarty.const.HOST}/data/user/{$rRows.image}">
						</div>
						<div class="col-lg-6">
							<span>{$rRows.name}</span><br />
							<span>{$rRows.postion}</span>
						</div>
					</div>	
					{/foreach}
				</div>
			</div>
          </div>
        </div>
    </div>
  </div>
{literal}
<script language="javascript">
(function($){
	$(window).load(function(){
		$("#hcm_scroll").mCustomScrollbar({
		scrollButtons:{
			enable:true
		}
		});
		$("#ha_scroll").mCustomScrollbar({
			scrollButtons:{
				enable:true
			}
		});		
	});
})(jQuery);
</script>
{/literal}
{include file='common/footer.tpl'}