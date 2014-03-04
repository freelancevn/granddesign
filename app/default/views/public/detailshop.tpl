<link href="{$smarty.const.CSS}lightbox.css" rel="stylesheet" media="screen">
<script src="{$smarty.const.JS}prototype.js"></script>
<script src="{$smarty.const.JS}scriptaculous.js?load=effects,builder"></script>
<script src="{$smarty.const.JS}lightbox.js"></script>
<div class="show-detail-info">
	<div class="row">
		<div class="col-lg-3">
			<div class="row">
				<div class="col-lg-12">
				<h5>{$arrDetailShop.name}</h5>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Chất liệu: </strong>
				</div>
				<div class="col-lg-6">
					{$arrDetailShop.feed}
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Kích thước:  </strong>
				</div>
				<div class="col-lg-6">
					{$arrDetailShop.size}
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
				<strong>Giá bán: </strong>
				</div>
				<div class="col-lg-6">
					<span style="color:#FF0000; display:inline">{$arrDetailShop.price}</span>
				</div>
			</div>
		</div>
		<div class="col-lg-9">
			{if $arrDetailShop.img_1}
				<a href="{$smarty.const.HOST}/upload/shop/{$arrDetailShop.img_1}" rel="lightbox[plants]" title="Shop"><img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetailShop.img_1}" width="180" /></a>&nbsp;&nbsp;
			{/if}
			{if $arrDetailShop.img_2}
				<a href="{$smarty.const.HOST}/upload/shop/{$arrDetailShop.img_2}" rel="lightbox[plants]" title="Shop"><img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetailShop.img_2}" width="180" /></a>&nbsp;&nbsp;
			{/if}
			{if $arrDetailShop.img_3}
				<a href="{$smarty.const.HOST}/upload/shop/{$arrDetailShop.img_3}" rel="lightbox[plants]" title="Shop"><img src="{$smarty.const.HOST}/upload_thumb/shop/{$arrDetailShop.img_3}" width="180" /></a>
			{/if}
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12" style="padding-top:20px;">
		{$arrDetailShop.description}
		</div>
	</div>
</div>