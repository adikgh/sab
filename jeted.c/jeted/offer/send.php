<?php include "../config/core.php";

	if(isset($_GET['us'])) {
		$name  	= strip_tags($_POST['name']);
		$mail  	= strip_tags($_POST['mail']);
		$phone  	= strip_tags($_POST['phone']);
		$date 	= date("Y-m-d", time());

		$sql = db::query("select * from `user` where phone = '$phone'");
		if (mysqli_num_rows($sql) == 0) {
			$sendTo = db::query("INSERT INTO `user`(`name`, `phone`, `mail`, `date`) VALUES ('$name', '$phone', '$mail', '$date')");
			if ($sendTo) {
		    	echo "yes";
			} else {
		    	echo "error";
			}
		} else {
			echo "yes";
		}

		exit();
	}
