<!DOCTYPE html>
<html lang="kz" id="html">
<head>

	<?php include 'head.php'; ?>

</head>
<body>

<!-- Yandex.Metrika counter -->
	<?php if (count($metrika) != 0): ?>
		<?php foreach ($metrika as $key => $value): ?>
			<noscript><div><img src='https://mc.yandex.ru/watch/<?=$value?>' style='position:absolute; left:-9999px;'/></div></noscript>
		<?php endforeach ?>
	<?php endif ?>
<!-- /Yandex.Metrika counter -->

<!-- Facebook Pixel Code -->
	<?php if (count($pixel) != 0): ?>
		<?php foreach ($pixel as $key => $value): ?>
			<noscript><img height='1' width='1' style='display:none' src='https://www.facebook.com/tr?id=<?=$value?>&ev=PageView&noscript=1'/></noscript>
		<?php endforeach ?>
	<?php endif ?>
<!-- End Facebook Pixel Code -->

	<?php include 'menu.php'; ?>