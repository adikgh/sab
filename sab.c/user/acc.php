<?php include "../config/core.php";

	if (!$user_id) header('location: log.php');
	
	$u_menu = 'acc';

	$id = $user[id];
	$ui = db::query("select * from user_info where user_id = '$id'");
	$ui = mysqli_fetch_assoc($ui);
?>
<?php include "../block/header.php"; ?>

	<div class="top_head">
		<div class="top_head_name">
			<h5>Қолданушы</h5>
		</div>
		<div class="top_head_rg">
			<div class="user_reng">
				<i class="far fa-bell"></i>
			</div>
		</div>
	</div>

	<div class="bl_c">
		<div class="us_info">
			<div class="us_logo">
				<?=($ui[logo]==null?'':'')?>
			</div>
			<div class="us_name"><?=$ui[surname]?> <?=$user[name]?></div>
			<div class="us_phone">+<?=substr($user[phone],0,1).' ('.substr($user[phone],1,3).') '.substr($user[phone],4,3).'-'.substr($user[phone],7,2).'-'.substr($user[phone],9)?></div>
		</div>
	
		<div class="us_spc">
			<div class="us_spi href" data-href="/user/cours_my.php">
				<i class="fal fa-user-astronaut"></i>
				<span>Менің курстарым</span>
			</div>
			<div class="us_spi">
				<i class="fal fa-user-circle"></i>
				<span>Жеке деректер</span>
			</div>
		</div>

		<div class="us_spc">
			<div class="us_spi">
				<i class="fal fa-cog"></i>
				<span>Настройка</span>
			</div>
			<div class="us_spi">
				<a href="/about/help/privacy.php">
					<i class="fal fa-users-cog"></i>
					<span>Құпиялылық саясаты</span>
				</a>
			</div>
			<div class="us_spi">
				<a href="/about/help/offer.php">
					<i class="fal fa-users-cog"></i>
					<span>Қолдану ережелері</span>
				</a>
			</div>
			<div class="us_spi">
				<a href="/about/help/">
					<i class="fal fa-question-circle"></i>
					<span>Сұрақ-жауап</span>
				</a>
			</div>
			<div class="us_spi">
				<i class="fal fa-award"></i>
				<span>SAB жайлы</span>
			</div>
			<div class="us_spi">
				<i class="fal fa-phone"></i>
				<span>Байланыс</span>
			</div>
		</div>

		<div class="us_btn href" data-href="/user/exit.php">
			<div class="btn btn_red">ШЫҒУ</div>
		</div>

	</div>

	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>

<?php include "../block/footer.php"; ?>