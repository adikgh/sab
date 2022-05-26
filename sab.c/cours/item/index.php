<?php include "../../config/core.php";

	if (!$user_id) header('location: /user/log.php');
	$date = date("Y-m-d", time());

	if (!isset($_GET['id'])) {
		header('location: /cours/');
	} else {
		$item_id = $_GET['id'];
		$item = db::query("select * from cours_item where id = '$item_id'");
		if (mysqli_num_rows($item) == 0) {
			header('location: /cours/');
		} else {
			$item = mysqli_fetch_assoc($item);

			$cours_id = $item[cours_id];
			$block_id = $item[block_id];
			$cours = mysqli_fetch_assoc(db::query("select * from cours where id = '$cours_id'"));
			$block = mysqli_fetch_assoc(db::query("select * from cours_block where id = '$block_id'"));

			if ($user[right] != 1) {
				$sub = db::query("select * from cours_sub where cours_id = '$cours_id' and user_id = '$user_id' and status_id != 4");
				if (mysqli_num_rows($sub) == 0) {
					header('location: /cours.php?id='.$cours_id);
				} else {
					$sub = mysqli_fetch_assoc($sub);
					$sub_info = db::query("select * from cours_sub_info where cours_item_id = '$item_id' and user_id = '$user_id'");
					if (mysqli_num_rows($sub_info) == 0) {
						db::query("INSERT INTO `cours_sub_info`(`cours_item_id`, `user_id`, `cours_id`, `item_view`, `ins_date`, `upd_date`) VALUES ('$item_id', '$user_id', '$cours_id', 1, '$date', '$date')");
					} else {
						$sub_info = mysqli_fetch_array($sub_info);
						$sub_info_id = $sub_info[id];
						db::query("UPDATE `cours_sub_info` SET `upd_date`='$date', `item_view` = 1 WHERE id = '$sub_info_id'");
					}
				}
				$iti = db::query("select * from cours_sub_info where cours_id = '$cours_id' and user_id = '$user_id' and item_view = 1");
			}

		}
	}

	$cs = [
	   'menu' => 'item',
	   'info' => 'Сабақ',
	];
?>
<?php include "../../block/header.php"; ?>

	<div class="top_head">
		<a href="/">
			<div class="back">
				<i class="fas fa-long-arrow-left"></i>
			</div>
		</a>
	</div>

	<div class="bl_c">		
		<div class="cours_con">

			<div class="cours_menu">

				<?php include "../c_menu.php"; ?>

			</div>
			<div class="cours_c">
				<div class="coursc_info">
					<div class="coursc_info_img">
						<div class="coursc_info_imgc lazy_img" data-src="/assets/img/cours/<?=$cours[img]?>"></div>
					</div>
					<div class="coursc_info_c">
						<h5 class="coursc_info_name"><?=$cours[name]?></h5>
						<?php if ($user[right] == 0 && $user_id): ?>
							<div class="item_nb_listc_prog">
								<div class="item_nb_listc_progi"><?=mysqli_num_rows($iti)?></div>
								<div class="item_nb_listc_progi">
									<div class="item_nb_listc_progin" style="width: calc(100% / (<?=$cours[item]?> / <?=mysqli_num_rows($iti)?>));"></div>
								</div>
								<div class="item_nb_listc_progi"><?=$cours[item]?></div>
							</div>
						<?php endif;?>
					</div>
				</div>
				<div class="cours_ls">

					<div class="coursls_c">
						<div class="coursls_item">
							<div class="bli_logo">
								<?=($item[logo]!=null?'<div class="lazy_img" data-src="/assets/img/cours/logo/'.$item[logo].'"></div>':'<span>'.$item[logo_txt].'</span>')?>
							</div>
							<div class="bli_info">
								<p class="bli_name"><?=$item[number].'. '.$item[name]?></p>
							</div>
						</div>
					</div>

					<?php $info = db::query("select * from cours_item_info where item_id = '$item_id'"); ?>

					<?php if (mysqli_num_rows($info) == 0): ?>
						<div class="cup_cc">
							<div class="cup_ccname">
								Сабақ әлі шыққан жоқ
							</div>
						</div>
					<?php else: ?>

						<?php 
							while ($sql = mysqli_fetch_assoc($info)) {
								if ($sql[type] == 'txt') {
									echo '
										<div class="coursls_j">
											<div class="bl_item_th">
												<span data-txt="Тапсырма:" data-txt="Қосымша материадар:" data-txt="Cабақ мәтіні:">'.$sql[type_name].':</span>
											</div>
											<div class="prd_text">
												'.$sql[txt].'
											</div>
										</div>
									';
								} elseif ($sql[type] == 'code') {
									echo '
										<div class="coursls_j">
											<div class="bl_item_th">
												<span data-txt="Тапсырма:" data-txt="Қосымша материадар:" data-txt="Cабақ мәтіні:">'.$sql[type_name].':</span>
											</div>
											<div class="prd_text">
												'.htmlspecialchars($sql[txt]).'
											</div>
										</div>
									';
								} elseif ($sql[type] == 'video') {
									echo '
										<div class="coursls_j">
											<div class="bl_item_th">
												<span>'.$sql[type_name].':</span>
											</div>
											<div class="prd_video">
												<div class="container">
													<div class="player_'.$sql[id].'" data-plyr-provider="youtube" data-plyr-embed-id='.$sql[txt].'></div>
												</div>
											</div>
										</div>

										<script>
											const player_'.$sql[id].' = new Plyr(".player_'.$sql[id].'", {});
											player_'.$sql[id].'.on("enterfullscreen", function() {
										   	$(".ph_menu").addClass("ph_menu_hide");
										   });
										   player_'.$sql[id].'.on("exitfullscreen", function() {
										     $(".ph_menu").removeClass("ph_menu_hide");
										   });
										</script>
									';
								}
							}
						?>
					<?php endif ?>

					<?php if ($user[right] == 1): ?>
						<div class="coursls_j">
							<div class="prd_btn">
								<div class="btn btn_video_plus" data-item="<?=$item_id?>">
									<i class="fas fa-video-plus"></i>
									<span>Видео қосу</span>
								</div>
								<a href="/panel/cours/item_text.php?id=<?=$item_id?>">
									<div class="btn">
										<i class="fas fa-edit"></i>
										<span>Текст қосу</span>
									</div>
								</a>
							</div>
						</div>
					<?php else: ?>
						<div class="coursls_j">
							<div class="prd_btn">
								<a href="/panel/cours/item.php?id=<?=$item_prev_id?>">
									<div class="btn btn_dd">
										<i class="far fa-arrow-left"></i>
									</div>
								</a>
								<a href="/cours/cours/?id=<?=$cours_id?>">
									<div class="btn">
										<span>Сабақты аяқтау</span>
										<i class="far fa-times"></i>
									</div>
								</a>
								<a href="/panel/cours/item.php?id=<?=$item_next_id?>">
									<div class="btn">
										<span>Келесі сабаққа өту</span>
										<i class="far fa-arrow-right"></i>
									</div>
								</a>
							</div>
						</div>
					<?php endif ?>

				</div>
			</div>
		</div>
	</div>

<?php include "../../block/footer.php"; ?>

<!-- Видео қосу -->
<div class="spl_cn spl_video_plus dsp_n">
	<div class="spl_top">
		<span>Видео қосу</span>
		<div class="spl_zk zak_video_plus">
			<i class="fas fa-times"></i>
		</div>
	</div>
	<div class="spl_con">
		<div class="spl_form">
			<span>Видеоның сілтемесі:</span>
			<input type="url" class="video fr_video">
		</div>
	</div>
	<div class="spl_btn">
		<div class="btn btn_video_save">Сақтау</div>
	</div>
</div>