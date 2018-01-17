<div class="center_block" >
	<div class="center_header">
		<h1>Доставка</h1>
	</div>
	<?php if( $hornav ) {?>
		<?=$hornav?>
	<?php }?>
	<div class="center_content">
		<div id="delivery">
			<h3><a href="<?=$link_self?>">Cамовывоз.</a></h3>
			<?php if( $view_self ){ ?>
				<div class="text">
					<h4>1) Центр продажи "Гербалайф" город Киев.</h4>
					<p>улица Нижний Вал, 51</p>
					<p>Телефон: +380 44 393 77 58</p>
					<p>Часы работы: Пон. - пят. 10:30 – 19:00</p>
					<p>Суб., Вос. – выходной день</p>
				</div>
				<div>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2539.4184391318913!2d30.516085315422988!3d50.470553393797694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ce144aa34d0f%3A0xb76a32d8fce9eca4!2z0YbQtdC90YLRgCDQv9GA0L7QtNCw0LYgSGVyYmFsaWZl!5e0!3m2!1sru!2sua!4v1505498724812" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
				<div class="text">
					<h4>2) Центр продажи "Гербалайф" город Днепр.</h4>
					<p>улица Миронова, 13</p>
					<p>Телефон/факс: +380 56 235 78 18</p>
					<p>Часы работы: Пон. - пят. 10:30 – 19:00</p>
					<p>Суб., Вос. – выходной день</p>
				</div>
				<div>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1322.6905612864728!2d35.04729159703833!3d48.46840279485247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dbe2e850108987%3A0x68179bf6ab3f883c!2z0J7QntCeICLQk9C10YDQsdCw0LvQsNC50YQg0KPQutGA0LDQuNC90LAiLCBIZXJiYWxpZmU!5e0!3m2!1sru!2sua!4v1505498580932" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
			<?php } ?>
			<h3><a href="<?=$link_delivery?>">Доставка по Украине.</a></h3>
			<?php if( $view_delivery ){	include "ua_delivery.tpl"; } ?>	
		</div>
	</div>	
</div>