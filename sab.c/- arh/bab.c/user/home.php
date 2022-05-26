<?php include '../config/core.php';

	if (!core::$user_ph) {
		header('location: /user/login.php');
	}

	$title = 'user';
	$u_menu = 'home';
?>
<?php include '../block/header2.php'; ?>
<?php include 'u_header.php'; ?>
	
	<div class="raz"></div>

	<div class="bl_c">
		<div class="icon">
			<div class="bl_icon"></div>
		</div>
		<div class="text">
			B.M.P. курстары
		</div>
	</div>

	<div class="bl_c">
		<div class="block_lc">
			<?php
				for ($i = 1; $i <= 6; $i++) {
					echo '
						<div class="block_lena">
							<div class="icon_ml">
								<!-- <div class="bl_icon back2"></div> -->
							</div>
							<div class="bll_tt">
								Курс атауы
							</div>
							<div class="bll_text">
								Не туралы болатыны?
							</div>
							<div class="bll_btn">
								<a href="/user/"><div class="btn btn_wh">Сабақ кестесін қарау</div></a>
							</div>
							<div class="bll_dall">
								<a href="/info.php"><div class="btn btn_wh2">Толығырақ ..</div></a>
							</div>
						</div>';
				} 
			?>
		</div>
	</div>



<?php include 'u_footer.php'; ?>
<?php include '../block/footer.php'; ?>