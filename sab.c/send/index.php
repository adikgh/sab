<?php
	
	if(isset($_GET['mess'])) {
		
		// gprog bot
		/* https://api.telegram.org/bot1252975811:AAEdiqS2l5vN7r6cULWGDF8VNf7QgRowrQQ/getUpdates */

		$f_phone 	= strip_tags($_POST['f_phone']);
		$f_name 	= strip_tags($_POST['f_name']);

		if ($f_phone != '' && $f_name != '') {
			
			$f_phone 	= substr_replace($f_phone, '', 0, 1);
			$f_phone 	= substr_replace($f_phone, '8', 0, 1);

			$site 		= 'gedu.kz';

			$token 		= "1252975811:AAEdiqS2l5vN7r6cULWGDF8VNf7QgRowrQQ";
			$chat_id 	= "-1001299215239";

			if ($f_name == '0') {
				$arr 	= array(
				  'Сайт' 		=> $site,
				  'Телефон: ' 	=> $f_phone,
				);
			} else {
				$arr 	= array(
				  'Сайт: ' 		=> $site,
				  'Аты-жөні: ' 	=> $f_name,
				  'Телефон: ' 	=> $f_phone,
				);
			}

			foreach($arr as $key => $value) {
			  $txt .= "<b>".$key."</b> ".$value."%0A";
			};

			$sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt}","r");

			if ($sendToTelegram)
			  echo "yes";
			else
			  echo "error";
		}

		exit();
	}