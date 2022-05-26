<?php include "../config/core.php"; 

	if (!isset($_GET['id']) || $_GET['id'] == '') {
		header('location: /cours/');
	} else {
		$cours_id = $_GET['id'];
		$cours = db::query("select * from cours where id = '$cours_id'");
		if (mysqli_num_rows($cours) == 0) {
			header('location: /cours/');
		} else {
			$cours = mysqli_fetch_assoc($cours);
			$cours_block = db::query("select * from cours_block where cours_id = '$cours_id'");
			$sub = db::query("select * from cours_sub where cours_id = '$cours_id'");
		}
	}

	$_SESSION['item'] = $url;
	$cs = [
		'mn' => 'cours',
	   'menu' => 'student',
	   'info' => 'Курс',
	];
?>
<?php include "../block/header.php"; ?>

	<div class="bl_c">		
		<div class="qos1_c">
			<div class="spl_con">
				<div class="spl_form">
					<span>Номері:</span>
					<input type="tel" class="phone" data-lenght="11" data-cours="<?=$cours_id?>">
				</div>
			</div>
			<div class="spl_btn">
				<div class="btn btn_student_save2">Сақтау</div>
			</div>
		</div>
	</div>

<?php include "../block/footer.php"; ?>