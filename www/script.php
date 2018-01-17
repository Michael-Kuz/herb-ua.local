<?php
	require_once "start.php"; 
	$files = scandir(Config::DIR_TMPL_DESC);
	//print_r($files);
	for( $i=0; $i<count($files); $i++ ){
		if( is_dir( $files[$i] ) ) continue;
		$str = file_get_contents(Config::DIR_TMPL_DESC.$files[$i]);
		if( strpos( $str, '<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>') || strpos( $str, '<div class="сertificate">
		<a href="<?=$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>') || strpos( $str, '<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>')){
			echo "<br>строка найдена $i $files[$i]<br>";
			$str = str_replace('<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>', '', $str );
			$str = str_replace('<div class="сertificate">
		<a href="<?=$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
	</div>', '', $str );
			$str = str_replace('<?php if( $product->certificate ) { ?>
		<div class="сertificate">
			<a href="<?=Config::DIR_IMG_CERTIFICATE.$product->certificate?>" target="Сертификат" >Посмотреть сертификат.</a>
		</div>
	<?php } ?>', '', $str );
			//echo "<br>".$str;
			file_put_contents( Config::DIR_TMPL_DESC.$files[$i], $str );
		}else echo "<br>строка не найдена $i $files[$i]<br>";
	}
?>