<?php 	
	include "../config/core.php";
	include_once "../config/smsc_api.php";


	if(isset($_GET['btn_pass1'])) {
		$phone 	= strip_tags($_POST['phone']);
		$code 	= rand(1000,9999);

		$req = db::query("SELECT * FROM user WHERE phone = '$phone'");
        if (mysqli_num_rows($req)) {

        	$sql = db::query("UPDATE `user` SET `sms_code`='$code' WHERE phone = '$phone'");
        	if ($sql) {
        		$mess = $code." - смс код SAB";
        		list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);
        	}

        	echo 'yes';
        } else {
            echo 'none';
        }

		exit();
	}

	if(isset($_GET['btn_pass2'])) {
		$phone 	= strip_tags($_POST['phone']);
		$code 	= strip_tags($_POST['code']);
		
		$req = db::query("SELECT * FROM user WHERE phone = '$phone'");
		if (mysqli_num_rows($req)) {
            $user_data = mysqli_fetch_assoc($req);
            if ($code == $user_data['sms_code']) {
				echo 'success';
            } else {
                echo 'error';
            }
        } else {
            echo 'none';
        }

		exit();
	}

	if(isset($_GET['btn_pass3'])) {
		$phone 		= strip_tags($_POST['phone']);
		$code 		= strip_tags($_POST['code']);
		$password 	= strip_tags($_POST['password']);
		
		$req = db::query("SELECT * FROM user WHERE phone = '$phone'");
		if (mysqli_num_rows($req)) {
            $user_data = mysqli_fetch_assoc($req);
            if ($code == $user_data['sms_code']) {
				$sql = db::query("UPDATE `user` SET `password`='$password' WHERE phone = '$phone'");
				if ($sql) {

					$_SESSION['uph'] = $phone;
					$_SESSION['ups'] = $password;

					echo 'success';
				} else {
					echo 'error';
				}

            } else {
                echo 'error_code';
            }
        } else {
            echo 'none';
        }

		exit();
	}