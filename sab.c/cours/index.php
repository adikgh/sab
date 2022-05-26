<?php include "../config/core.php"; 

	if (!isset($_GET['id']) || $_GET['id'] == '') {
		header('location: /');
	} else {
		$cours_id = $_GET['id'];
		$cours = db::query("select * from cours where id = '$cours_id'");
		if (mysqli_num_rows($cours) == 0) {
			header('location: /');
		} else {
			$cours = mysqli_fetch_assoc($cours);
			$autor = fun::autor($cours['autor_id']);
			$cours_block = db::query("select * from cours_block where cours_id = '$cours_id'");
			$sub_id = db::query("select * from cours_sub where cours_id = '$cours_id' and user_id = '$user_id' and status_id != 4");
			$iti = db::query("select * from cours_item_info where cours_id = '$cours_id' and user_id = '$user_id' and item_view = 1");
			$date = date("Y-m-d", strtotime("-3 day"));
		}
	}

	$_SESSION['item'] = $url;
	$cs = [
		'mn' => 'cours',
	   'menu' => 'list',
	   'info' => 'Курс',
	];


	// setting
	$block_number = 1;
	$item_number = 1;
?>
<?php include "../block/header.php"; ?>
	
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
				<?php include "c_menu.php"; ?>
			</div>
			<div class="cours_c">
				<div class="coursc_info">
					<div class="coursc_info_img">
						<div class="coursc_info_imgc lazy_img" data-src="/assets/img/cours/<?=$cours['img']?>"></div>
					</div>
					<div class="coursc_info_c">
						<h5 class="coursc_info_name"><?=$cours['name']?></h5>
						<?php if ($user['right'] == 0 && $user_id): ?>
							<div class="item_nb_listc_prog">
								<div class="item_nb_listc_progi"><?=mysqli_num_rows($iti)?></div>
								<div class="item_nb_listc_progi">
									<div class="item_nb_listc_progin" style="width: calc(100% / (<?=$cours['item']?> / <?=mysqli_num_rows($iti)?>));"></div>
								</div>
								<div class="item_nb_listc_progi"><?=$cours['item']?></div>
							</div>
						<?php endif;?>
					</div>
				</div>
				<div class="cours_ls">


					<?php if ($user['right']==1): ?>
						<?php if (mysqli_num_rows($cours_block) != 0): ?>
							<?php while ($block = mysqli_fetch_assoc($cours_block)) {
									$block_id = $block['id'];
									$cours_item = db::query("select * from cours_item where block_id = '$block_id'");
								   echo '
							    		<div class="coursls_c">
											<div class="coursls_top">
												<div class="coursls_top_name">
													<div class="bli_logo">
														<span>'.$block['logo_txt'].'</span>
													</div>
													<div class="bli_info">
														<h6 class="bli_name">'.$block['number'].'-бөлім. '.$block['name'].'</h6>
													</div>
												</div>
												<div class="coursls_top_sab">
													<p>
														<span>'.mysqli_num_rows($cours_item).'</span> 
														<span>Сабақ</span>
														<i class="far fa-book"></i>
													</p>
												</div>
											</div>
										';
									if (mysqli_num_rows($cours_item) != 0) {

										while ($item = mysqli_fetch_assoc($cours_item)) {
											   echo '
											    	<div class="coursls_item">
											    		<a href="/cours/item/?id='.$item['id'].'">
															<div class="bli_logo">
																'.($item['logo']!=null?'<div class="lazy_img" data-src="/assets/img/cours/logo/'.$item['logo'].'"></div>':'<span>'.$item['logo_txt'].'</span>').'
															</div>
															<div class="bli_info">
																<div class="bli_name">'.$block['number'].'.'.$item['number'].'. '.$item['name'].'</div>
															</div>
														</a>
														<div class="bli_sta">
															<a href="#"><div class="bli_stsa" data-title="Өңдеу"><i class="fas fa-edit"></i></div></a>
															<a href="#"><div class="bli_stsa" data-title="Баптау"><i class="fas fa-cog"></i></div></a>
															<div class="bli_stsa bli_stsa_del" data-title="Өшіру"><i class="fas fa-trash-alt"></i></div>
														</div>
													</div>
											   ';
										   	$item_number = $item['number'] + 1;
										}
										echo '
											<div class="coursls_btn">
												<div class="btn btn_sab_plus" data-block="'.$block_id.'" data-cours="'.$cours_id.'" data-number="'.$item_number.'">Сабақ қосу</div>
											</div>
										';
										
									} else {
										echo '
											<div class="coursls_btn">
												<div class="btn btn_sab_plus" data-block="'.$block_id.'" data-cours="'.$cours_id.'" data-number="1">Сабақ қосу</div>
											</div>
										';
									}
									$block_number = $block['number'] + 1;
									echo '</div>';
								}
							?>
							<div class="coursls_btn">
								<div class="btn btn_block_plus" data-cours="<?=$cours_id?>" data-number="<?=$block_number?>">Бөлім қосу</div>
							</div>
						<?php else: ?>

							<div class="none_cc">
								<div class="none_ccimg">
									<div class="none_ccimgc"></div>
								</div>
								<div class="none_ccname">
									Курс басталған жоқ
								</div>
							</div>

						<?php endif ?>

					<?php else: ?>

						<?php if (mysqli_num_rows($cours_block) != 0): ?>
							<?php while ($block = mysqli_fetch_assoc($cours_block)) {
									$block_id = $block['id'];
									$cours_item = db::query("select * from cours_item where block_id = '$block_id'");
									if (mysqli_num_rows($cours_item) != 0) {
								   	echo '
								    		<div class="coursls_c">
												<div class="coursls_top">
													<div class="coursls_top_name">
														<div class="bli_logo">
															<span>'.$block['logo_txt'].'</span>
														</div>
														<div class="bli_info">
															<h6 class="bli_name">'.$block['number'].'-бөлім. '.$block['name'].'</h6>
														</div>
													</div>
													<div class="coursls_top_sab">
														<p>
															<span>'.mysqli_num_rows($cours_item).'</span> 
															<span>Сабақ</span>
															<i class="far fa-book"></i>
														</p>
													</div>
												</div>
											';
										while ($item = mysqli_fetch_assoc($cours_item)) {

											if (mysqli_num_rows($sub_id)!=0) {
											   echo '
											    	<div class="coursls_item">
											    		<a href="/cours/item/?id='.$item['id'].'">
															<div class="bli_logo">
																'.($item['logo']!=null?'<div class="lazy_img" data-src="/assets/img/cours/logo/'.$item[logo].'"></div>':'<span>'.$item[logo_txt].'</span>').'
															</div>
															<div class="bli_info">
																<p class="bli_name">'.$block['number'].'.'.$item['number'].'. '.$item['name'].'</p>
															</div>
														</a>
														<div class="bli_sts">
															'.(mysqli_num_rows($sub_id)==0?'<div class="bli_stsi c_red"><i class="fas fa-lock"></i></div>':'').'
															'.($item_info['item_view']?'<div class="bli_stsi c_cl"><i class="fas fa-eye"></i></div>':'').'
															'.($item_info['item_end']?'<div class="bli_stsi"><i class="fas fa-badge-check"></i></div>':'').'
															'.($date < $item['date']?'<div class="bli_stsi c_red bli_stsi_new"><i class="fas fa-sparkles"></i></div>':'').'
														</div>
													</div>
											   ';
											} else {
											   echo '
											    	<div class="coursls_item">
											    		<div class="coursls_item_d">
															<div class="bli_logo">
																'.($item['logo']!=null?'<div class="lazy_img" data-src="/assets/img/cours/logo/'.$item[logo].'"></div>':'<span>'.$item[logo_txt].'</span>').'
															</div>
															<div class="bli_info">
																<p class="bli_name">'.$block['number'].'.'.$item['number'].'. '.$item['name'].'</p>
															</div>
														</div>
														<div class="bli_sts">
															<div class="bli_stsi"><i class="fas fa-lock"></i></div>
														</div>
													</div>
											   ';
											}
										}
										
									} else {

									}
									echo '</div>';
								}
							?>
							<?php if ($user['right']==1): ?>	
								<div class="coursls_btn">
									<div class="btn btn_block_plus" data-cours="<?=$cours_id?>" data-number="<?=$block_number?>">Бөлім қосу</div>
								</div>
							<?php endif ?>
						<?php else: ?>

							<div class="none_cc">
								<div class="none_ccimg">
									<div class="none_ccimgc"></div>
								</div>
								<div class="none_ccname">
									Курс басталған жоқ
								</div>
							</div>

						<?php endif ?>

					<?php endif ?>



					<?php if (mysqli_num_rows($sub_id)==0 && $user['right'] != 1): ?>

						<?php if (isset($_GET['log'])): ?>

							<div class="cours_ls_log">
								<div class="head_c">
									<h6>Курс қарау үшін сізге жіберілген код арқылы кіріңіз!</h6>
								</div>
								<div class="form_cn">
									<input type="tel" class="phone fr_phone" placeholder="+7 (___) ___-__-__" data-lenght="11" data-val="" data-sel="0">
									<i class="fal fa-mobile form_ic"></i>
									<div class="form_regui">Номеріңізді енгізіңіз</div>
								</div>
								<div class="form_cn">
									<div class="form_cn_code form_cn_code2">
										<input type="tel" class="code fr_code num_1" data-lenght="1" data-val="" data-sel="0">
										<input type="tel" class="code fr_code num_2" data-lenght="1" data-val="" data-sel="0">
										<input type="tel" class="code fr_code num_3" data-lenght="1" data-val="" data-sel="0">
										<input type="tel" class="code fr_code num_4" data-lenght="1" data-val="" data-sel="0">
									</div>
								</div>
								<div class="form_cn txt_c dsp_n">
									<p class="form_sms" data-phone="Сіздің номеріңіз базадан табылмады" data-code="Код қате" data-code-pust="Код енгізіңіз">
										Сіздің номеріңіз базадан табылмады
									</p>
								</div>
								<div class="form_cn form_btn">
									<button class="btn btn_cl btn_lc_log">
										<span>Сайтқа кіру</span>
										<i class="fal fa-angle-right"></i>
									</button>
								</div>
							</div>

						<?php else: ?>
							<div class="cup_cc">
								<div class="cup_ccname">
									Курс қарау үшін сатып алу қажет!
								</div>
								<div class="cup_ccbtn">
									<div class="btn">Сатып алу</div>
								</div>
							</div>
						<?php endif ?>

					<?php endif ?>




				</div>
			</div>
		</div>
	</div>

	<div class="bl_raz_phone"></div>

<?php include "../block/footer.php"; ?>


<?php if ($user['right']==1): ?>
	<!-- Сабақ қосу -->
	<div class="spl_cn spl_sab_plus dsp_n">
		<div class="spl_top">
			<span>Сабақ қосу</span>
			<div class="spl_zk zak_sab_plus">
				<i class="fas fa-times"></i>
			</div>
		</div>
		<div class="spl_con">
			<div class="spl_form">
				<span>Тақырыбы:</span>
				<input type="text" class="name">
			</div>
		</div>
		<div class="spl_btn">
			<div class="btn btn_sab_save">Сақтау</div>
		</div>
	</div>

	<!-- Бөлім қосу -->
	<div class="spl_cn spl_block_plus dsp_n">
		<div class="spl_top">
			<span>Бөлім қосу</span>
			<div class="spl_zk zak_block_plus">
				<i class="fas fa-times"></i>
			</div>
		</div>
		<div class="spl_con">
			<div class="spl_form">
				<span>Тақырыбы:</span>
				<input type="text" class="name" data-lenght="3">
			</div>
		</div>
		<div class="spl_btn">
			<div class="btn btn_block_save">Сақтау</div>
		</div>
	</div>
<?php endif ?>

