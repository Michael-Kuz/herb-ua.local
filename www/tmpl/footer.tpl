<footer>
	<div id="f_sep_1"></div>
	<nav>
		<ul>
			<?php foreach ($items as $item) { ?>
				<li>
					<a <?php if ($item->link == $uri) { ?>class="active"<?php } ?> <?php if ($item->external) { ?>rel="external"<?php } ?> href="<?=$item->link?>"><?=$item->title?></a>
				</li>
			<?php } ?>
		</ul>
	</nav>
	<form name="search" action="<?=$link_search?>" method="get" >
		<table>
			<tr>
				<td><input type="text" name="query" placeholder="Поиск" ></td>
				<td><input type="submit" value="" ></td>
			</tr>
		</table>
	</form>
	<div class="clear"></div>
	<p>Copyright &copy; 2014-<?=date("Y")?> Кузьменко Михаил Юрьевич. Все права защищены.</p>
	<div id="counter">
		<!-- Yandex.Metrika informer -->
		<!--<a href="https://metrika.yandex.ru/stat/?id=41282494&amp;from=informer"
		target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/41282494/3_0_53FF53FF_33FF33FF_0_pageviews"
		style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" /></a>-->
		<!-- /Yandex.Metrika informer -->
	</div>
</footer>