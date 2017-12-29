<div class="center_block" >
	<div class="center_header">
		<h1><?=$title?></h1>
	</div>
	<?=$hornav?>	
	<div class="center_content">
		<form <?php if ($name) { ?>name="<?=$name?>"<?php } ?> action="<?=$action?>" method="<?=$method?>" >
			<div id="cart_trust-1" >
				<table>
					<tr>
						<td></td>
						<td>Наименование</td>
						<td>Цена за 1 шт.</td>
						<td>Кол-во</td>
						<td>Сумма</td>
						<td></td>
					</tr>
					<?php if( !$cart_list["cart_count"] ) { ?>
						<tr>
							<td colspan="6" >
								<p class="cart_is_empty" >0 продуктов в корзине.</p>
							</td>
						</tr>
					<?php } ?>
					<?php for( $i=0; $i<count($cart_list)-2; $i++ ) {?>
						<tr class="cart_list">
							<td>
								<img class="img" src="<?=$cart_list[$i]["img"]?>" alt="<?=$cart_list[$i]["title"]?>" />
							</td>	
							<td><?=$cart_list[$i]["name"]?></td>
							<td class="price_<?=$i?>">
								<?php if( $auth_user ) { ?>
									<?=$cart_list[$i]["price"]?> грн.
								<?php }else{ ?>
									<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
									<span>&nbsp;грн.</span>
								<?php } ?>
							</td>
							<td class="number_<?=$i?>">
								<input type="number" name="<?=$cart_list[$i]["section_id"]?>-><?=$cart_list[$i]["id"]?>" value="<?=$cart_list[$i]["count"]?>" min="1">
							</td>
							<td class="bold cell summa_<?=$i?>">
								<?php if( $auth_user ) { ?>
									<b><?=$cart_list[$i]["summa"]?></b> грн.
								<?php }else{ ?>
									<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
									<span>&nbsp;грн.</span>
								<?php } ?>
							</td>
							<td>
								<a href="<?=$cart_list[$i]["link_delete"]?>" class="link_delete" >
									<div class="delete" title="удалить"></div>
								</a>
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<hr/>
							</td>	
						</tr>
					<?php }?>
					<tr>
						<td colspan="4"></td>
						<td colspan="2"><b>ИТОГО:</b> 
							<?php if( $auth_user ) { ?>
								<span class="cart_summa"><b><?=$cart_summa?></b></span> <b>грн.</b>
							<?php }else{ ?>
								<img class="hryvnia" src="/images/hryvnia.png" alt="ГРН" />
								<span>&nbsp;<b>грн.</b></span>
							<?php } ?>	
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<input type="hidden" name="auth_user" value="<?= $auth_user ? true : false ?>" >
							<input type="hidden" name="goods_count" value="<?=$cart_list['cart_count']?>" >
							<input type="hidden" name="link_name" value="<?=$link_name?>" >
							<?php if( $auth_user ) { ?>
								<div class="free_delivery">
									<?php if( $ForFreeDelivery == Config::SUMM_FOR_FREE_DELIVERY ) { ?>
									Чтобы получить бесплатную доставку, необходимо сделать заказ на сумму не менее <b><?=$ForFreeDelivery?> <?=$suffix?>.</b> (данная акция не распространяется на протеиновые батончики).
									<?php } elseif( $ForFreeDelivery > 0 && $ForFreeDelivery < Config::SUMM_FOR_FREE_DELIVERY ) { ?>
									Чтобы получить бесплатную доставку, необходимо добавить в заказ продукты на сумму  <b><?=$ForFreeDelivery?> <?=$suffix?>.</b> (данная акция не распространяется на протеиновые батончики).
									<?php } elseif( $ForFreeDelivery == 0 ) {  ?>
									Вы можете воспользоваться бесплатной доставкой.
									<?php } ?>
								</div>
							<?php } ?>
						</td>
					</tr>
				</table>
				<div class="result"></div>
				<div class="wrap" id="block_form">
					<div class="cart_trust-1">
						<h2 class="h2">Выберите способ доставки:</h2>
						<fieldset class="border" >
							<?php foreach( $deliveries as $type_en=>$value ) { ?>
								<?php foreach( $value as $type_ru=>$price ) { ?>
									<input class="line_gap" type="radio" name="type_delivery" value="<?=$type_en?>" <?php if($checked && $checked==$type_en){ ?> checked <?php } ?> required />
									<p class="delivery_info" >
										<?=$type_ru?> <span>
															<?php if($type_en!="delivery") {echo $price." грн.";}
																  else{ if($ForFreeDelivery) { echo $price." грн.";} else {echo 'бесплатно.';} } ?>
													  </span>
									</p>
									<div class="clear"></div>
								<?php } ?>
								<?php if( $type_en == "self_kiev" ) { ?>
									<div class="self_kiev">
										<textarea class="line_gap" name="address_kiev" readonly >Центр продажи "Гербалайф"&#13;&#10;Украина, Киев, улица Нижний Вал, 51&#13;&#10;Телефон: +380 44 393 77 58&#13;&#10;Часы работы: Пон. - пят. 10:30 – 19:00&#13;&#10;Суб., Вос. – выходной день</textarea>
									</div>
								<?php } else if($type_en == "self_dnepr") { ?>
									<div class="self_dnepr">
										<textarea class="line_gap" name="address_dnepr" readonly >Центр продажи "Гербалайф"&#13;&#10;Украина, Днепр, улица Миронова, 13&#13;&#10;Телефон: +380 56 235 78 18&#13;&#10;Часы работы: Пон. - пят. 10:30 – 19:00&#13;&#10;Суб., Вос. – выходной день</textarea>
									</div>
								<?php } ?>
							<?php } ?>
						</fieldset>
						<?php if( $message && $error_code == "002") { ?>
							<div class="cart_error">
								<a href="cart"><img class="close_button"/></a>
								<div class="clear"></div>
								<p class="cart_error_text"><?=$message?></p>
							</div>
						<?php } ?>
						<div class="self">
							<label class="label" for="city">Укажите название города<br/> где Вы находитесь:</label>
							<input class="line_gap" type="text" name="city" value="<?=$city?>" maxlength="100" />
						</div>
						<div class="cour_post_mail">
							<p class="label">Полный адрес (Страна, город, индекс, улица, дом, квартира):</p>
							<textarea class="line_gap" name="address" ><?=$address?></textarea>
						</div>
						<?php if( $message && $error_code == "003" ) { ?>
							<p class="message"><?=$message?></p>
						<?php } ?>
						<label class="label" for="name" >Ф.И.О.</label>
						<input class="line_gap" type="text" name="name" value="<?=$name?>" maxlength="100" required />
						<br/>
						<label class="label" for="phone" >Телефон<br/><i class="label">(10 цифр без пробелов):</i></label>
						<input class="line_gap" type="tel" name="phone" value="<?=$phone?>" pattern="[0-9]{10}" required />
						<br/>
						<label class="label" for="email" >E-mail:</label>
						<input class="line_gap" type="email" name="email" value="<?=$email?>" required />
						<br/>
						<p class="label">Примечание к заказу:</p>
						<textarea class="line_gap" name="comment" ><?=$comment?></textarea>
						<br/>
						<?php if( $message && $error_code == "001" ) { ?>
							<p class="message"><?=$message?></p>
						<?php } ?>
						<label class="label" for="captcha">Введите код с картинки:</label>
						<input class="line_gap" type="text" name="captcha" value="" autocomplete="off" required />
						<div class="captcha">
							<img src="/images/update.png" alt="Обновить" />
							<img src="../captcha.php" alt="Капча" />
						</div>
						<button class="button_consultation" type="submit" name="addorder" value="ОТПРАВИТЬ">ОФОРМИТЬ ЗАКАЗ</button>
					</div>	
				</div>
			</div>
		</form>
	</div>	
</div>