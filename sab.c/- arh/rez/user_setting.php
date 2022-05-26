<?php include "../config/core.php"; 

	$url = $_SERVER['REQUEST_URI'];
	if (!$user[id]) {
		header('location: log.php');
	}