<?php include '../config/core.php';

	if (!core::$user_ph) {
		header('location: /user/login.php');
	}

	$title = 'user';
	$u_menu = 'acc';
?>
<?php include '../block/header2.php'; ?>
<?php include 'u_header.php'; ?>
	
	<div class="psx_conut">	
		<div class="psx_cub"></div>
		<div class="psx_home">
			<a href="/user/exit.php">exit</a>
		</div>
		<div class="psx_user"></div>
	</div>

<?php include 'u_footer.php'; ?>
<?php include '../block/footer.php'; ?>