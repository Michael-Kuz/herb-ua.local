<!DOCTYPE html>
<html>
<?=$header?>
<body>
	<div id="interactive_message"></div>
	<?php
		if( !session_id() ) session_start();
		$_SESSION["js"] = true;
	?>
	<noscript>
		<?php
			$_SESSION["js"] = false;
		?>
	</noscript>
	
	<div id="container">
		<header>
			<?=$logo?>
			<?=$auth?>	
			<?=$cart?>	
		</header>	
		<div class="clear"></div>
		<?=$top?>
		<div class="clear"></div>
		<div id="content">
			<div id="promo_left">
				<?=$promo_image?>
			</div>
			<div id="promo_right">
				<?=$inquiry?>
			</div>
			<div id="promo_center">
				<?=$promo_info?>
			</div>
			<div class="clear"></div>
			<div class="flex">
				<div id="left_col">
					<?=$left?>
				</div>
				<div id="center_col">
					<?=$center?>
				</div>
				<div id="right_col">
					<?=$right?>
				</div>
			</div>	
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<?=$footer?>
	</div>
</body>
</html>
