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
  <!--end slideshow-->
 
 <div id="highlight" class="wrapper">
    <div class="container">
     
        <div class="row">
          <div class="col-lg-3">
          	<div class="cate">
				{foreach key=i item=rRows from=$arrMenu}
					{if $i<=5}
            		<a href="{$smarty.const.HOST}?category={$rRows.id}" title="{$rRows.category_name}">{$rRows.category_name}</a>
					{/if}
				{/foreach}
            </div>
          
          </div>
          <div class="col-lg-9">
          	<div class="service">
				<div style="width:20px;">&nbsp;</div>
				<div class="detailservice">
					<div class="titleservice">
						<span>{$arrDetail.name}</span>						
					</div>
					<div class="noteservice">
						{$arrDetail.description}
					</div>
				</div>
				<div style="width:20px; width:100%; margin-left:10px; font-size:14px; font-weight:bold; text-decoration:underline; margin-bottom:20px;">Các Dịch Vụ Khác</div>
				{foreach key=i item=rRows from=$arrService}
            	<div class="rowservice">
					<div class="titleservice">
						<span><a href="{$smarty.const.HOST}/public/servicedetail?id={$rRows.id}">{$rRows.name}</a></span>
					</div>
				</div>
				{/foreach}
				<div style="width:20px;">&nbsp;</div>
            </div>
          </div>
        </div>
      
    </div>
  </div>


{include file='common/footer.tpl'}