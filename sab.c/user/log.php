<?php include "../config/core.php"; 

	$setting['menu'] 	= false;
	$setting['lr']		= false;
	
	if ($user_id) header('location: /cours/');
?>
<?php include "../block/header.php"; ?>

<?php include "../block/lr.php"; ?>

<?php include "../block/footer.php"; ?>