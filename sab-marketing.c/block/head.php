<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><?=$site[title]?></title>
<meta name="description" content="<?=$site[disc]?>">
<meta name="keywords" content="<?=$site[keyw]?>">
<meta name="theme-color" content="<?=$site[color]?>">

<!-- icon -->
<link rel="icon" href="<?=$site[logo]?>" type="image/x-icon">
<link rel="shortcut icon" type="image/icon" href="<?=$site[logo]?>">

<!-- Open Graph -->
<meta property="og:type" content="website" />
<meta property="og:url" content="https://<?=$site[site]?>" />
<meta property="og:site_name" content="www.<?=$site[site]?>" />
<meta property="og:title" content="<?=$site[title]?>" />
<meta property="og:description" content="<?=$site[disc]?>" />
<meta property="og:image" content="<?=$site[logo]?>" />

<!-- apple -->
<meta name="application-name" lang="<?=$site[lang]?>" content="<?=$site[site]?>">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

<!-- ms -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="cleartype" content="on">
<meta name="msapplication-tooltip" content="<?=$site[title]?>">
<meta name="msapplication-TileColor" content="<?=$site[color]?>">
<meta name="msapplication-starturl" content="https://<?=$site[site]?>">

<!-- css -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap">
<link rel="stylesheet" type="text/css" href="/assets/pl/fontawesome/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.plyr.io/3.6.2/plyr.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/norm.css" />

<?php if (count($css) != 0): ?>
<!-- main css -->
	<?php foreach ($css as $key => $value): ?>
		<link rel="stylesheet" type="text/css" href="<?=$value?>" />
	<?php endforeach ?>
<!-- end main css -->
<?php endif ?>


<?php if (count($metrika) != 0): ?>
<!-- Yandex.Metrika counter -->
	<script type='text/javascript'>
		(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
		m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
		(window, document, 'script', 'https://mc.yandex.ru/metrika/tag.js', 'ym');
	<?php foreach ($metrika as $key => $value): ?>
		ym(<?=$value?>, 'init', {clickmap:true,trackLinks:true,accurateTrackBounce:true,webvisor:true});
	<?php endforeach ?>
	</script>
<!-- /Yandex.Metrika counter -->
<?php endif ?>


<?php if (count($pixel) != 0): ?>
<!-- Facebook Pixel Code -->
	<script>
		!function(f,b,e,v,n,t,s)
		{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};
		if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
		n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t,s)}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
	<?php foreach ($pixel as $key => $value): ?>
		fbq('init', '<?=$value?>');
	<?php endforeach ?>
		fbq('track', 'PageView');
	</script>
<!-- End Facebook Pixel Code -->
<?php endif ?>