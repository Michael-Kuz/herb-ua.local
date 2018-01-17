<head>
	<!-- Global Site Tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-107273679-1"></script>
	<script>
  		window.dataLayer = window.dataLayer || [];
  		function gtag(){dataLayer.push(arguments)};
  		gtag('js', new Date());

  		gtag('config', 'UA-107273679-1');
	</script>
	<title><?=$title?></title>
	<?php foreach ($meta as $m) { ?>
		<meta <?php if ($m->http_equiv) { ?>http-equiv="<?=$m->name?>" <?php } elseif($m->name) { ?>name="<?=$m->name?>"<?php } ?> <?php if($m->property) { ?>property="<?=$m->property?>"<?php } ?> content="<?=$m->content?>" />
	<?php } ?>
	<?php if ($favicon) { ?>
		<link href="<?=$favicon?>" rel="shortcut icon" type="image/png" />
	<?php } ?>
	<?php if ($favicon_1) { ?>
		<link href="<?=$favicon_1?>" rel="icon" type="image/png" />
	<?php } ?>
	<?php foreach ($css as $href) { ?>
		<link type="text/css" rel="stylesheet" href="<?=$href?>" />
	<?php } ?>
	<?php foreach ($js as $src) { ?>
		<script type="text/javascript" src="<?=$src?>"></script>
	<?php } ?>
</head>