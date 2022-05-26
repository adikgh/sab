<?php 

	include "../config/core.php";
	include_once "../config/smsc_api.php";

	$date = date("Y-m-d", time());

	// 
	if(isset($_GET['block_plus'])) {
		$name = strip_tags($_POST['name']);
		$cours_id = strip_tags($_POST['cours_id']);
		$number = strip_tags($_POST['number']);
		$sql = db::query("INSERT INTO `cours_block`(`number`, `cours_id`, `name`, `logo_txt`, `status_id`, `date`) VALUES ('$number','$cours_id','$name','',5,'$date')");
        if ($sql) {
        	echo 'yes';
        } else {
            echo 'none';
        }

		exit();
	}

	// 
	if(isset($_GET['item_plus'])) {
		$name = strip_tags($_POST['name']);
		$cours_id = strip_tags($_POST['cours_id']);
		$block_id = strip_tags($_POST['block_id']);
		$number = strip_tags($_POST['number']);
		$sql = db::query("INSERT INTO `cours_item`(`number`,`cours_id`,`block_id`,`name`,`logo_txt`,`status_id`,`date`) VALUES ('$number','$cours_id','$block_id','$name','',5,'$date')");
		if ($sql) {
			echo 'yes';
		} else {
		   echo 'none';
		}

		exit();
	}

	// 
	if(isset($_GET['student_plus'])) {
		$phone = strip_tags($_POST['phone']);
		$cours_id = strip_tags($_POST['cours_id']);

		$code = rand(1000,9999);

		$student = db::query("SELECT * FROM `user` WHERE phone = '$phone'");
		if (mysqli_num_rows($student) != 0) {
			$student = mysqli_fetch_assoc($student);
			$student_id = $student[id];
			$code = $student[code];

			$sub = db::query("SELECT * FROM `cours_sub` WHERE user_id = '$student_id' and cours_id = '$cours_id'");
			if (mysqli_num_rows($sub) == 0) {
				db::query("INSERT INTO `cours_sub`(`cours_id`, `user_id`, `status_id`, `date`) VALUES ('$cours_id', '$student_id', 1, '$date')");

				$mess = "Сізге сабақ ашылды.\nСіздің номеріңіз: +$phone\nТексеру коды: $code\nСабаққа сілтеме: https://sab1.kz/l/?c=$cours_id";
				list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

				echo 'plus';
			} else {
				echo 'yes';
			}
		} else {
			$sql = db::query("INSERT INTO `user`(`phone`, `code`, `ins_date`, `status_id`) VALUES ('$phone','$code','$date', 8)");
			if ($sql) {
				$student = mysqli_fetch_assoc(db::query("SELECT * FROM `user` WHERE phone = '$phone'"));
				$student_id = $student[id];

				$sub = db::query("SELECT * FROM `cours_sub` WHERE user_id = '$student_id' and cours_id = '$cours_id'");
				if (mysqli_num_rows($sub) == 0) {
					db::query("INSERT INTO `cours_sub`(`cours_id`, `user_id`, `status_id`, `date`) VALUES ('$cours_id', '$student_id', 1, '$date')");

					$mess = "Сізге сабақ ашылды.\nСіздің номеріңіз: +$phone\nТексеру коды: $code\nСабаққа сілтеме: https://sab1.kz/l/?c=$cours_id";
					list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

					echo 'plus';
				} else {
					echo 'yes';
				}
			}
		}

		exit();
	}


	// 
	if(isset($_GET['student_plus2'])) {
		$phone = strip_tags($_POST['phone']);
		$phone = substr_replace($phone, '', 0, 1);
		$phone = '7'.$phone;
		$cours_id = strip_tags($_POST['cours_id']);

		$code = rand(1000,9999);

		$student = db::query("SELECT * FROM `user` WHERE phone = '$phone'");
		if (mysqli_num_rows($student) != 0) {
			$student = mysqli_fetch_assoc($student);
			$student_id = $student['id'];
			$code = $student['code'];

			$sub = db::query("SELECT * FROM `cours_sub` WHERE user_id = '$student_id' and cours_id = '$cours_id'");
			if (mysqli_num_rows($sub) == 0) {
				db::query("INSERT INTO `cours_sub`(`cours_id`, `user_id`, `status_id`, `date`) VALUES ('$cours_id', '$student_id', 1, '$date')");

				$mess = "Сізге сабақ ашылды.\nСіздің номеріңіз: +$phone\nТексеру коды: $code\nСабаққа сілтеме: https://sab1.kz/l/?c=$cours_id";
				list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

				echo 'plus';
			} else {
				echo 'yes';
			}
		} else {
			$sql = db::query("INSERT INTO `user`(`phone`, `code`, `ins_date`, `status_id`) VALUES ('$phone','$code','$date', 8)");
			if ($sql) {
				$student = mysqli_fetch_assoc(db::query("SELECT * FROM `user` WHERE phone = '$phone'"));
				$student_id = $student['id'];

				$sub = db::query("SELECT * FROM `cours_sub` WHERE user_id = '$student_id' and cours_id = '$cours_id'");
				if (mysqli_num_rows($sub) == 0) {
					db::query("INSERT INTO `cours_sub`(`cours_id`, `user_id`, `status_id`, `date`) VALUES ('$cours_id', '$student_id', 1, '$date')");

					$mess = "Сізге сабақ ашылды.\nСіздің номеріңіз: +$phone\nТексеру коды: $code\nСабаққа сілтеме: https://sab1.kz/l/?c=$cours_id";
					list($sms_id, $sms_cnt, $cost, $balance) = send_sms($phone, $mess, 0, 0, 0, 0, false);

					echo 'plus';
				} else {
					echo 'yes';
				}
			}
		}

		exit();
	}


	// 
	if(isset($_GET['student_dost'])) {
		$status_id = strip_tags($_POST['status_id']);
		$cours_id = strip_tags($_POST['cours_id']);
		$user_id = strip_tags($_POST['user_id']);

		$sql = db::query("UPDATE `cours_sub` SET `status_id`='$status_id' WHERE user_id = '$user_id' and cours_id = '$cours_id'");
		if ($sql) {
			echo 'yes';
		}

		exit();
	}

	// 
	if(isset($_GET['video_plus'])) {
		$video = strip_tags($_POST['video']);
		$item_id = strip_tags($_POST['item_id']);

		$sql = db::query("INSERT INTO `cours_item_info`(`item_id`, `type`, `type_name`, `txt`, `date`) VALUES ('$item_id','video','Видео сабақ','$video','$date')");
		if ($sql) {
			echo 'plus';
		}

		exit();
	}