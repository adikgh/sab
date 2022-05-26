<?php include "../config/core.php";
		include_once "../config/smsc_api.php";

	$date = date("Y-m-d", time());
	$code = rand(1000,9999);

	if(isset($_GET['aut'])) {
		$phone = strip_tags($_POST['phone']);
		$sql = db::query("SELECT * FROM user WHERE phone = '$phone'");
        if (mysqli_num_rows($sql)) {
        	$ana = mysqli_fetch_assoc($sql);
        	if ($ana['code'] == null) {
				$req = db::query("UPDATE `user` SET `code`='$code' WHERE phone = '$phone'");
				$mess = "SAB бағдарламасына кіру коды: $code";
				list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);
        	}
        	echo 'yes';
        } else {
            echo 'none';
        }

		exit();
	}

	if(isset($_GET['aut2'])) {
		$phone 	= strip_tags($_POST['phone']);
		$code 	= strip_tags($_POST['code']);
		
		$sql = db::query("SELECT * FROM user WHERE phone = '$phone'");
      $data = mysqli_fetch_assoc($sql);
      if ($code == $data['code']) {
        	$_SESSION['uph'] = $phone;
			$_SESSION['ups'] = $code;
			echo 'yes';
      } else {
        	echo 'none';
      }

		exit();
	}

	if(isset($_GET['reg_code'])) {
		$name  = strip_tags($_POST['name']);
		$phone = strip_tags($_POST['phone']);

		$req = db::query("INSERT INTO `user`(`phone`, `code`, `name`) VALUES ('$phone', $code, '$name')");
		$mess = "SAB бағдарламасына кіру коды: $code";
		list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);
		echo "yes";

		exit();
	}

	if(isset($_GET['rest'])) {
		$phone = strip_tags($_POST['phone']);
		$req = db::query("UPDATE `user` SET `code`='$code' WHERE phone = '$phone'");
		$mess = "SAB бағдарламасына кіру коды: $code";
		list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);
		echo "yes";

		exit();
	}

	if(isset($_GET['ls_aut'])) {
		$phone 	= strip_tags($_POST['phone']);
		$code 	= strip_tags($_POST['code']);
		
		$sql = db::query("SELECT * FROM user WHERE phone = '$phone'");
		$data = mysqli_fetch_assoc($sql);
		if ($code == $data['code']) {
			$_SESSION['uph'] = $phone;
			$_SESSION['ups'] = $code;
			echo 'yes';
		} else {
			echo 'none';
		}

		exit();
	}