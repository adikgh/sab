<!DOCTYPE html>
<html lang="kz">
<head>

	<!-- const -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!-- title -->
	<title><?=$file_s[header]?> - <?=$autor[title]?></title>
	<meta name="description" content="<?=$file_s[header]?> - <?=$autor[title]?>">
	<meta name="keywords" content="<?=$autor[title]?>">
	<meta name="msapplication-tooltip" content="Главное, чтобы Вы были счастливы!">

	<!-- icon -->
	<link rel="icon" href="/assets/img/logo/logo_m.png" type="image/x-icon">
	<link rel="shortcut icon" type="image/icon" href="/assets/img/logo/logo_m.png">

	<!-- theme -->
	<meta name="theme-color" content="<?=$autor[bag]?>">
	<meta name="msapplication-TileColor" content="<?=$autor[bag]?>">

	<!-- Open Graph -->
	<meta property="og:type" content="website" />
	<meta property="og:url" content="<?=$_SERVER[REQUEST_URI]?>" />
	<meta property="og:site_name" content="sab.education" />
	<meta property="og:title" content="<?=$file_s[header]?>" />
	<meta property="og:description" content="<?=$autor[title]?>" />
	<meta property="og:image" content="assets/img/<?=$file_s[og_img]?>" />

	<!-- css -->
	<link rel="stylesheet" type="text/css" href="/assets/pl/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="https://cdn.plyr.io/3.6.2/plyr.css" />
	<link rel="stylesheet" type="text/css" href="/assets/css/norm.css?ver=1">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css?ver=1">

	<!-- js library -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.plugins.min.js"></script>
	<script src="https://cdn.plyr.io/3.6.2/plyr.polyfilled.js"></script>

</head>
<body>