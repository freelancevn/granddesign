{include file='common/header.tpl'}
<div id="highlight" class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
			<div class="detaiproduct shopnoithat clearfix">
					<div class="col-lg-3">
						{foreach key=i item=rRow from=$arrShop}
							<div class="cate-parent">
								<span>{$rRow.name}</span>
							</div>
							{foreach key=i item=rRows from=$rRow.list}
						<div class="menushopnoithat{if $rRows.id==$iShop} choiceshop{/if}" ><a href="{$smarty.const.HOST}/public/shopnoithat?id={$rRows.id}" title="{$rRows.category_name}">{$rRows.category_name}</a></div>
							{/foreach}
						{/foreach}
					</div>
					<div class="col-lg-9">
						{if $iProID==0}
						<div class="view-cate">
							<span>{$strName}</span>
						</div>
						{/if}
						{if $iProID>0}
							<div class="row titleshopnoithat">
								{include file='public/detailshop.tpl'}
							</div>
						{else}
							{if $iProID>0}
							<div class="view-cate">
								<span>Danh sách shop <strong>{$strName}</strong></span>
							</div>
							{/if}
							{foreach key=i item=rRows from=$arrList}
							<div class="row listshopnoithat">
								<div class="shadow clearfix">
									<div class="col-lg-6">
										<h5>{$rRows.name}</h5>
										<table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<th>Chất liệu: </th>
												<td>{$rRows.feed}</td>
											</tr>
											<tr>
												<th>Kích thước: &nbsp;</th>
												<td>{$rRows.size}</td>
											</tr>
											<tr>
												<th>Giá bán: </th>
												<td style="color:#FF0000;">{$rRows.price}</td>
											</tr>
											<tr>
												<th><br /><a href="{$smarty.const.HOST}/public/shopnoithat?id={$rRows.fk_category}&proid={$rRows.id}" style="color:#FF0000;">Xem chi tiết</a></th>
												<td></td>
											</tr>
										</table>
									</div>
									<div class="col-lg-6">
										<a href="{$smarty.const.HOST}/public/shopnoithat?id={$rRows.fk_category}&proid={$rRows.id}"><img src="{$smarty.const.HOST}/upload_thumb/shop/{$rRows.img_1}"/></a>
									</div>
								</div>
							</div>
						{/foreach}
					{/if}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{include file='common/footer.tpl'}