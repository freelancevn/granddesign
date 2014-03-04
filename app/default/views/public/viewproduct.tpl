{include file='common/header.tpl'}
<div id="highlight" class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="title-shop">
					<span>Sản phẩm shop nội thất</span>
				</div>
				<div class="list-shop">
				{foreach key=i item=rRows from=$arrShop}
					<div class="info-shop">
						<a href="{$smarty.const.HOST}/public/shopnoithat?id={$rRows.fk_category}&proid={$rRows.id}"><img src="{$smarty.const.HOST}/upload_thumb/shop/{$rRows.img_1}" width="90%" /></a>
						<a href="{$smarty.const.HOST}/public/shopnoithat?id={$rRows.fk_category}&proid={$rRows.id}">{$rRows.name}</a>
						<span style="color:#FF0000;">{$rRows.price}</span>
					</div>
				{/foreach}
				</div>
			</div>
			<div class="col-lg-9">
				<div class="detaiproduct">
					<div class="infoproduct">						
						<span class="titleproduct">THÔNG TIN CÔNG TRÌNH</span>
						<span class="contentproduct">{$arrDetail.product_name}</span>
						<span class="contentproduct">Diện tích: {$arrDetail.unbuilt_area}</span>
						<span class="contentproduct">Địa chỉ: {$arrDetail.address}</span>
						<span class="contentproduct">Chủ đầu tư: {$arrDetail.investors}</span>
						<span class="contentproduct">Thời gian hoàn thành: {$arrDetail.time_finish}</span>
					</div>
					<div class="imageproduct">
						{foreach key=i item=rRows from=$arrImage}
						<div class="view-image-product">
							<img src="{$smarty.const.HOST}/upload/product/{$rRows.file_name}" alt="{$rRows.description}" width="820" />
							<span>{$rRows.description}</span>
						</div>
						{/foreach}
						
						<div class="commentface" style="margin-bottom:5px;">
							<div class="fb-like" data-href="{$smarty.const.HOST}/public/viewproduct?id={$rRows.id}&category={$rRows.fk_category}" data-width="450" data-show-faces="false" data-send="true"></div>
						</div>
						<div class="commentface">
							<div class="fb-comments" data-href="{$smarty.const.HOST}/public/viewproduct?id={$rRows.id}&category={$rRows.fk_category}" data-width="820"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

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
          	<div class="product-gallery">
            		<div id="product-gallery" class="carousel slide"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#product-gallery" data-slide-to="0" class="active"></li>
              <li data-target="#product-gallery" data-slide-to="1"></li>
              <li data-target="#product-gallery" data-slide-to="2"></li>
            </ol>
            
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
				<div class="item active">
				{foreach key=i item=rRows from=$arrProduct}
				{if $i>0 && $i%6==0}
					</div><div class="item">
				{/if}
					<a href="{$smarty.const.HOST}/public/viewproduct?id={$rRows.id}&category={$rRows.fk_category}" title="Photo">
						<img src="{$smarty.const.HOST}/upload_thumb/product/{$rRows.file_name}" width="195" height="110" alt="" />
						<span>{$rRows.product_name}</span>
					</a>
				{/foreach}
				</div>
            </div>
            <!-- Controls --> 
            <a class="left carousel-control" href="#product-gallery" data-slide="prev"> <span class="icon-prev"></span> </a> <a class="right carousel-control" href="#product-gallery" data-slide="next"> <span class="icon-next"></span> </a> </div>
            
            </div>
          </div>
        </div>
      
    </div>
  </div>
{include file='common/footer.tpl'}