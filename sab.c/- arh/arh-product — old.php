<?php include "../config/core.php"; 

	$url = $_SERVER['REQUEST_URI'];

	if (!isset($_GET['id']) || $_GET['id'] == '') {
		header('location: /cours/');
	} else {
		$cours_id = $_GET['id'];
		$cours = db::query("select * from cours where id = '$cours_id'");
		if (mysqli_num_rows($cours) == 0) {
			header('location: /cours/');
		} else {
			$cours = mysqli_fetch_assoc($cours);
			$autor = db::autor($cours[autor_id]);
			$cours_block = db::query("select * from cours_block where cours_id = '$cours_id'");

			$sub_id = db::query("select * from cours_sub where cours_id = '$cours_id' and user_id = '$user_id'");
			$iti = db::query("select * from cours_item_info where cours_id = '$cours_id' and user_id = '$user_id'");
			$date = date("Y-m-d", strtotime("-3 day"));
		}
	}

	$_SESSION[item] = $url;
?>
<?php include "../block/header.php"; ?>

<div class="<?=($user[right]==1?'bl_item_admin':'')?>">
	
	<div class="top_head">
		<a href="/">
			<div class="back">
				<i class="fas fa-long-arrow-left"></i>
			</div>
		</a>
	</div>

	<div class="bl_c">		
		<div class="item_nb_list">
			<div class="item_nb_listc_i">				
				<div class="item_nb_listc_img">
					<div class="item_nb_listc_imgc lazy_img" data-src="/assets/img/cours/<?=$cours[img]?>"></div>
				</div>
			</div>
			<div class="item_nb_info">
				<div class="bl_item_th">
					<span>Курс жайлы:</span>
				</div>
				<h5 class="item_nb_listc_name"><?=$cours[name]?></h5>
				<div class="item_nb_listc_autor">
					<div class="item_nb_listc_autor_s">
						<?=($autor[logo]?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$autor[logo].'"></span>':$autor[logo_txt])?>
					</div>
					<div class="item_nb_listc_autor_s">
						<?=$autor[autor_name]?>
					</div>
				</div>
				<div class="item_nb_listc_set">
					<div class="item_nb_listc_set_s">
						<i class="fal fa-eye"></i>
						<span><?=($cours[view]<999?$cours[view]:substr_replace($cours[view], '.', -3, 0))?> қаралым</span>
					</div>
					<div class="item_nb_listc_set_s">
						<i class="fal fa-play-circle"></i>
						<span><?=$cours[item]?> сабақ</span>
					</div>
					<?=($cours[item]?'<div class="item_nb_listc_set_s"><i class="fal fa-clock"></i><span>'.$cours[time].'</span></div>':'')?>
				</div>
				<?php if (mysqli_num_rows($sub_id) == 0): ?>
					<div class="item_nb_listc_pr">
						<?=($cours[price_sole]?'<h5 class="item_nb_listc_price c_red">'.($cours[price]<999?$cours[price_sole]:substr_replace($cours[price_sole], '.', -3, 0)).' тг</h5><div class="item_nb_listc_price_sole">'.($cours[price]<999?$cours[price]:substr_replace($cours[price], '.', -3, 0)).' тг</div>':'<h5 class="item_nb_listc_price">'.($cours[price]<999?$cours[price]:substr_replace($cours[price], '.', -3, 0)).' тг</h5>')?>
					</div>
					<div class="item_nb_listc_btn">
						<div class="btn">Қосылу</div>
					</div>
				<?php else:?>
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
	</div>

	<div class="bl_c">
		<div class="item_nb">

			<div class="pl_list">
				<!-- <div class="bl_cours_head">
					<h5 class="bl_ch_b">Ақпарат</h5>
				</div> -->
			</div>

			<div class="bl_item_cc">
				<div class="bl_cours_head">
					<h5 class="bl_ch_b">Сабақтар тізімі</h5>
					<p><?=$cours[item]?> сабақ</p>
				</div>
							
				<?php if (mysqli_num_rows($cours_block) == 0): ?>
					<div>
						Курс басталған жоқ
					</div>
				<?php endif;
					while ($block = mysqli_fetch_assoc($cours_block)) {
					    echo '
				    		<div class="bl_item_c">
								<div class="bl_item_top">
									<h6>'.$block[number].'. '.$block[name].'</h6>
								</div>
							';
							$id = $block['id'];
							$cours_item = db::query("select * from cours_item where block_id = '$id'");
							while ($item = mysqli_fetch_assoc($cours_item)) {
								$item_info = db::cours_item_info($item[id]);
							    echo '
							    	<div class="bl_item">
							    		<a '.(mysqli_num_rows($sub_id)!=0?'href="/user/item.php?id='.$item[id].'"':'').'>
											<div class="bli_logo">
												'.($item[logo]!=null?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$item[logo].'"></span>':'<div>'.$item[logo_txt].'</div>').'
											</div>
											<div class="bli_info">
												<div class="bli_name">'.$item[block_number].'. '.$item[name].'</div>
											</div>
										</a>
										<div class="bli_sts">
											'.($item_info?'<div class="bli_stsi"><i class="far fa-eye"></i></div>':'').'
											'.($item_info[item_end]?'<div class="bli_stsi"><i class="far fa-badge-check"></i></div>':'').'
											'.($date < $item[date]?'<div class="bli_stsi c_red bli_stsi_new"><i class="far fa-sparkles"></i></div>':'').'
										</div>
									</div>
							    ';
							}
						echo '
							</div>
					    	';
					}
				?>
			</div>
		</div>

		<!-- <div class="item_nb2">
			<div class="bl_cours_head">
				<h5 class="bl_ch_b">Пікірлер</h5>
			</div>
		</div> -->

	</div>

	<?php if ($user[right] == 1): ?>
		<div class="btn_razn">
			<div class="btn_razn_c">
				<i class="far fa-pen"></i>
			</div>
			<div class="btn_razn_c">
				<i class="far fa-plus"></i>
			</div>
		</div>
	<?php endif ?>
</div>

	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>


<?php include "../block/footer.php"; ?>