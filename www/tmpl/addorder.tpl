<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>
	<div class="center_content">
		<div id="addorder">
			<h2>Ваш заказ принят!</h2>
			<p>Наш менеджер свяжется с Вами в ближайшее время.</p>
			<?php if( $message ){ ?>
				<p><?=$message?></p>
			<?php } ?>
			<table class="info">
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td calspan="2">Номер заказа: </td><td colspan="3" class="bold"><?=$number?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="5">Заказ: </td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<?php for( $i=0; $i<count($cart_list)-2; $i++ ) {?>
					<tr>
						<td class="img" >
							<img src="<?=$cart_list[$i]["img"]?>" alt="<?=$cart_list[$i]["title"]?>" />
						</td>	
						<td><?=$cart_list[$i]["title"]?></td>
						<td>
							<?php if( $auth_user ) { ?>
								<?=$cart_list[$i]["price"]?> грн.
							<?php }else{ ?>
									<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
									<span>&nbsp;грн.</span>
							<?php } ?>	
						</td>
						<td><?=$cart_list[$i]["count"]?> шт.</td>
						<td>
							<?php if( $auth_user ) { ?>
								<?=$cart_list[$i]["summa"]?> грн.
							<?php }else{ ?>
									<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
									<span>&nbsp;грн.</span>
							<?php } ?>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<hr/>
						</td>	
					</tr>
				<?php }?>	
				<tr>		
					<td colspan="2">Общая цена заказанного продукта: </td><td colspan="3" class="tdright" >
						<?php if( $auth_user ) { ?>
							<?=$cart_list["cart_summa"]?> грн.
						<?php }else{ ?>
							<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
							<span>&nbsp;грн.</span>
						<?php } ?>
					</td>
				</tr>	
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td>Способ доставки: </td><td><?=$delivery?></td><td>Стоимость доставки: </td><td></td><td class="bold"><?=$delivery_cost?> грн.</td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2">Сумма к оплате: </td><td colspan="3" class="tdright" >
						<?php if( $auth_user ) { ?>
							<?=$in_total?> грн.
						<?php }else{ ?>
							<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
							<span>&nbsp;грн.</span>
						<?php } ?>	
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >ФИО: </td><td colspan="3" ><?=$name?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >Телефон: </td><td colspan="3" ><?=$phone?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>		
					<td colspan="2" >E-mail: </td><td colspan="3" ><?=$email?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >Адрес: </td><td colspan="3" ><?=$address?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2">Примечание: </td><td colspan="3" ><?=$note?></td>
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<td colspan="2" >Дата заказа: </td><td colspan="3" ><?=$date_order?></td>
				</tr>	
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>
				<tr>
					<?php if($date_pay){?>
						<td colspan="2" >Дата оплаты: </td><td colspan="3" ><?=$date_pay?></td>
					<?php } else {?>
						<td colspan="2" >Дата оплаты: </td><td colspan="3" >Не оплачено</td>
					<?php }?>	
				</tr>
				<tr>
					<td colspan="5">
						<hr/>
					</td>	
				</tr>	
			</table>
			<!--<h2>Оплатить заказ.</h2>
			<?php include "paysistems.tpl" ?>-->
		</div>
	</div>
</div>