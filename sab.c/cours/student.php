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
		    		<div class="coursls_c">
						<div class="coursls_top">
							<div class="coursls_top_name">
								<h6>Студенттер тізімі</h6>
							</div>
							<div class="coursls_top_sab">
								<p>
									<span><?=mysqli_num_rows($sub)?></span> 
									<i class="far fa-users"></i>
								</p>
							</div>
						</div>
						<div class="coursls_st">
							<div class="coursls_st_name">
								<div class="coursls_st_name_ava">Фото</div>
								<div class="bli_info">
									<p class="bli_name">Аты-жөні</p>
									<p class="bli_phone">Телефон</p>
								</div>
							</div>
							<div class="coursls_st_date">Кірген уақыты</div>
							<div class="coursls_st_sn">Доступ</div>
						</div>

						<?php
							while ($item = mysqli_fetch_assoc($sub)) {
								$user_info = fun::user_info($item['user_id']);
								$status = fun::status($item['status_id']);
							    echo '
							    	<div class="coursls_st">
							    		<a href="#" class="coursls_st_name">
							    			<div class="coursls_st_name_ava">
												<div class="bli_logo">
													'.($user_info['logo']!=null?'<div class="lazy_img" data-src="/assets/img/cours/logo/'.$user_info['logo'].'"></div>':'<span>'.$user_info['logo_txt'].'</span>').'
												</div>
							    			</div>
											<div class="bli_info">
												<p class="bli_name">'.$user_info['surname'].' '.$user_info['name'].'</p>
												<p class="bli_phone">+'.$user_info['phone'].'</p>
											</div>
										</a>
										<div class="coursls_st_date">'.date_format(date_create($item['date']), ('d-m-Y')).'</div>
										<div class="coursls_st_sn" data-user="'.$item['user_id'].'">
											'.$status['logo'].'
										</div>
									</div>
							    ';
							}
						?>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="btn_razn">
		<a href="#">
			<div class="btn_razn_c btn_student_plus" data-cours="<?=$cours_id?>">
				<i class="far fa-user-plus"></i>
			</div>
		</a>
	</div>

	<div class="bl_raz_phone"></div>


<?php include "../block/footer.php"; ?>

<!-- Студент қосу -->
<div class="spl_cn spl_student_plus dsp_n">
	<div class="spl_top">
		<span>Студент қосу</span>
		<div class="spl_zk zak_student_plus">
			<i class="fas fa-times"></i>
		</div>
	</div>
	<div class="spl_con">
		<div class="spl_form">
			<span>Номері:</span>
			<input type="tel" class="phone fr_phone" data-lenght="11" placeholder="+7 (___) ___-__-__">
		</div>
	</div>
	<div class="spl_btn">
		<div class="btn btn_student_save">Сақтау</div>
	</div>
</div>

<!-- Доступ -->
<div class="spl_cn spl_student_dost dsp_n" data-cours="<?=$cours_id?>">
	<div class="spl_top">
		<span>Доступ</span>
		<div class="spl_zk zak_student_dost">
			<i class="fas fa-times"></i>
		</div>
	</div>
	<div class="spl_con">
		<div class="spl_form">
			<span>Таңдаңыз:</span>
			<select class="dost">
				<?php
					$sql = db::query("select * from status where type = 'sub'");
			      while($ana = mysqli_fetch_array($sql)){
			    		echo '
			    			<option value="'.$ana['id'].'">
			    				'.$ana['logo'].'
			    				<span>'.$ana['name'].'</span>
			    			</option>
			    		';
			      }
				?>
			</select>
		</div>
	</div>
	<div class="spl_btn">
		<div class="btn btn_student_dost">Сақтау</div>
	</div>
</div>