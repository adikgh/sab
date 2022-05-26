<?php include "../config/core.php";

	if(isset($_GET['btn_aut'])) {
		$phone 		= strip_tags($_POST['phone']);
		$password 	= strip_tags($_POST['password']);

		$req = db::query("SELECT * FROM user WHERE phone = '$phone'");
        if (mysqli_num_rows($req)) {
            $user_data = mysqli_fetch_assoc($req);
            if ($password == $user_data['password']) {
                
               	$_SESSION['uph'] = $phone;
				$_SESSION['ups'] = $password;

				echo 'success';
            } else {
                $core -> user_unset();
                echo 'error';
            }
        } else {
            $core -> user_unset();
            echo 'none';
        }

		exit();
	}