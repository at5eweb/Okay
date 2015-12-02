{* Страница заказа *}

{$meta_title = "`$lang->vash_zakaz_nomer``$order->id`" scope=parent}

<h1 class="h1">{$lang->vash_zakaz_nomer}{$order->id}
{if $order->status == 0}{$lang->prinyat}{/if}
{if $order->status == 1}{$lang->v_obrabotke}{elseif $order->status == 2}{$lang->vypolnen}{/if}
{if $order->paid == 1}, {$lang->oplachen}{else}{/if}
</h1>

{* Список покупок *}
<table id="purchases">
    {foreach $purchases as $purchase}
        <tr>
        	{* Изображение товара *}
        	<td class="image">
        		{$image = $purchase->product->images|first}
        		{if $image}
        		<a href="{$lang_link}products/{$purchase->product->url}"><img src="{$image->filename|resize:50:50}" alt="{$product->name|escape}"></a>
        		{/if}
        	</td>
        	
        	{* Название товара *}
        	<td class="name">
        		<a href="{$lang_link}products/{$purchase->product->url}">{$purchase->product_name|escape}</a>
        		{$purchase->variant_name|escape}
        		{if $order->paid && $purchase->variant->attachment}
        			<a class="download_attachment" href="{$lang_link}order/{$order->url}/{$purchase->variant->attachment}">{$lang->skachat_fajl}</a>
        		{/if}
        	</td>
        
        	{* Цена за единицу *}
        	<td class="price">
        		{($purchase->price)|convert}&nbsp;{$currency->sign}
        	</td>
        
        	{* Количество *}
        	<td class="amount">
        		&times; {$purchase->amount}&nbsp;{$settings->units}
        	</td>
        
        	{* Цена *}
        	<td class="price">
        		{($purchase->price*$purchase->amount)|convert}&nbsp;{$currency->sign}
        	</td>
        </tr>
    {/foreach}
    {* Скидка, если есть *}
    {if $order->discount > 0}
        <tr class="bonus">
        	<td class="image"></td>
        	<td class="name">{$lang->skidka}</td>
        	<td class="price"></td>
        	<td class="amount"></td>
        	<td class="price">
        		{$order->discount}&nbsp;%
        	</td>
        </tr>
    {/if}
    {* Купон, если есть *}
    {if $order->coupon_discount > 0}
        <tr class="bonus">
        	<td class="image"></td>
        	<td class="name">{$lang->kupon}</td>
        	<td class="price"></td>
        	<td class="amount"></td>
        	<td class="price">
        		&minus;{$order->coupon_discount|convert}&nbsp;{$currency->sign}
        	</td>
        </tr>
    {/if}
    {* Если стоимость доставки входит в сумму заказа *}
    {if !$order->separate_delivery && $order->delivery_price>0}
        <tr class="bonus">
        	<td class="image"></td>
        	<td class="name">{$delivery->name|escape}</td>
        	<td class="price"></td>
        	<td class="amount"></td>
        	<td class="price">
        		{$order->delivery_price|convert}&nbsp;{$currency->sign}
        	</td>
        </tr>
    {/if}
    {* Итого *}
    <tr class="total">
    	<th colspan="5">
		    {$lang->itogo}: <span>{$order->total_price|convert}&nbsp;{$currency->sign}</span>
    	</th>
    </tr>
    {* Если стоимость доставки не входит в сумму заказа *}
    {if $order->separate_delivery}
        <tr>
        	<td class="image"></td>
        	<td class="name">{$delivery->name|escape}</td>
        	<td class="price"></td>
        	<td class="amount"></td>
        	<td class="price">
        		{$order->delivery_price|convert}&nbsp;{$currency->sign}
        	</td>
        </tr>
    {/if}
</table>

{* Детали заказа *}
<h2 class="block_heading">{$lang->detali_zakaza}</h2>
<table class="order_info">
	<tr>
		<td>
			{$lang->data_zakaza}
		</td>
		<td>
			{$order->date|date} {$lang->v}
			{$order->date|time}
		</td>
	</tr>
	{if $order->name}
	<tr>
		<td>
			{$lang->imya}
		</td>
		<td>
			{$order->name|escape}
		</td>
	</tr>
	{/if}
	{if $order->email}
	<tr>
		<td>
			{$lang->email}
		</td>
		<td>
			{$order->email|escape}
		</td>
	</tr>
	{/if}
	{if $order->phone}
	<tr>
		<td>
			{$lang->telefon}
		</td>
		<td>
			{$order->phone|escape}
		</td>
	</tr>
	{/if}
	{if $order->address}
	<tr>
		<td>
			{$lang->adres_dostavki}
		</td>
		<td>
			{$order->address|escape}
		</td>
	</tr>
	{/if}
	{if $order->comment}
	<tr>
		<td>
			{$lang->kommentarij}
		</td>
		<td>
			{$order->comment|escape|nl2br}
		</td>
	</tr>
	{/if}
</table>


{if !$order->paid}
    {* Выбор способа оплаты *}
    {if $payment_methods && !$payment_method && $order->total_price>0}
        <form method="post">
        <h2 class="block_heading">{$lang->vyberite_sposob_oplaty}</h2>
        <ul id="deliveries">
            {foreach $payment_methods as $payment_method}
            	<li>
        			<input type=radio name=payment_method_id value='{$payment_method->id}' {if $payment_method@first}checked{/if} id=payment_{$payment_method->id}>
        			<label for=payment_{$payment_method->id}>	{$payment_method->name}, {$lang->k_oplate} {$order->total_price|convert:$payment_method->currency_id}&nbsp;{$all_currencies[$payment_method->currency_id]->sign}</label>
        			<div class="description">{$payment_method->description}</div>
            	</li>
            {/foreach}
        </ul>
        <input type='submit' class="button" value='{$lang->zakonchit_zakaz}'>
        </form>
    {* Выбраный способ оплаты *}
    {elseif $payment_method}
        <h2 class="block_heading">{$lang->sposob_oplaty} &mdash; {$payment_method->name}</h2>
        <form method=post>
        	<input class="button" type=submit name='reset_payment_method' value='{$lang->vybrat_drugoj_sposob_oplaty}'>
        </form>
        <p>{$payment_method->description}</p>
        
        <h2 class="block_heading">
	        {$lang->k_oplate} {$order->total_price|convert:$payment_method->currency_id}&nbsp;{$all_currencies[$payment_method->currency_id]->sign}
        </h2>
        
        {* Форма оплаты, генерируется модулем оплаты *}
        {checkout_form order_id=$order->id module=$payment_method->module}
    {/if}
{/if}

