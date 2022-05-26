<?php 
	include "../config/core.php";
	include_once "../config/smsc_api.php";

	if(isset($_GET['etp1'])) {
		$name  		= strip_tags($_POST['name']);
		$phone 		= strip_tags($_POST['phone']);
		$reg_date 	= date("Y-m-d", time());
		$code 	= rand(1000,9999);

		$pr = db::query("SELECT * FROM user WHERE phone = '$phone'");
		if (mysqli_num_rows($pr)) {
			echo "live";
	    } else {

			$req = db::query("INSERT INTO `user`(`phone`, `name`, `reg_date`, `lavel`, `sms_code`) VALUES ('$phone', '$name', '$reg_date', 1, $code)");

    		$mess = $code." - смс код B.M.P.";
    		list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

		    if($req) {
		    	$_SESSION['uph'] = $phone;
				$_SESSION['ups'] = $password;

		    	echo "success";
		    }
		}

		exit();
	}



	if(isset($_GET['etp2'])) {
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


	if(isset($_GET['etp3'])) {
		$phone 		= strip_tags($_POST['phone']);
		$password 	= strip_tags($_POST['password']);
		
		$sql = db::query("UPDATE `user` SET `password`='$password' WHERE phone = '$phone'");
		if ($sql) {

			$_SESSION['uph'] = $phone;
			$_SESSION['ups'] = $password;

			echo 'success';
		} else {
			echo 'error';
		}

		exit();
	}