{include file='common/header.tpl'}
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
  
 <div id="highlight" class="wrapper">
    <div class="container">     
        <div class="row">
			<div class="col-lg-6">
          		<div class="about">
					<div class="abouttilte">
						<span>Văn phòng thiết kế tại Hồ Chí Minh</span>
					</div>
					<div class="aboutcontent">
						<div>{$arrConfigSite.CONTACTHCM}</div>
						<div>{$arrConfigSite.CONTACTHCMLINK}</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
          		<div class="about">
					<div class="abouttilte">
						<span>Văn phòng thiết kế tại Hà Nội</span>
					</div>
					<div class="aboutcontent">
						<div>{$arrConfigSite.CONTACTHANOI}</div>
						<div>{$arrConfigSite.CONTACTHANOILINK}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{include file='common/footer.tpl'}