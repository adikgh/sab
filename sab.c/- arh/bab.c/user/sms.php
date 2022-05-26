<?php 
	include "../config/core.php";
	include_once "../config/smsc_api.php";

	if(isset($_GET['btn'])) {

		$phone = core::$user_ph;
		$mess = "Siz bugingi sabakka jazyldynyz!";
		list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

	    echo "success";

		exit();
	}