<!DOCTYPE html>
<html lang="kz">
	<head>
		<?php include 'head.php' ?>
	</head>
	<body>

		<div class="header">
			<div class="bl_c">
				<div class="header_cl">
					<div class="ph_menu">
						<i class="fal fa-bars"></i>
					</div>
					<div class="logo">
						<a href="/"><div class="bl_logo"></div></a>
					</div>
				</div>
				<div class="header_cl">
					<a href="/user/">
					<?php if (!core::$user_ph): ?>
						<div class="btn btn_gold">кіру | тіркелу</div>
					<?php endif ?>
					<?php if (core::$user_ph): ?>
						<?=core::$user_data[name]?>
					<?php endif ?></a>
				</div>
			</div>
		</div>