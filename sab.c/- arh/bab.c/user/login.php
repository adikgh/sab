<?php include '../config/core.php';

	if (core::$user_ph) {
		header('location: /user/');
	}

	$title = 'login';
?>
<?php include '../block/header2.php'; ?>


	<div class="set_bl">
		<?php include "../block/preloader.php"; ?>

		<div class="in_prev">
			<div class="head_c txt_c c_cl">
				<h1>Қайырлы күн</h1>
			</div>
	
			<div class="fr_bl bl_aut">
				<div class="frc_bl">
					<input type="tel" class="pn_mask phone" data-lenght="11">
					<span class="frc_pl">Телефон номер</span>
					<i class="fas fa-phone-alt frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl">
					<input type="password" data-lenght="3" class="password">
					<span class="frc_pl">Пароль</span>
					<i class="fas fa-key frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl frc_err dsp_n">
					<i class="fas fa-exclamation"></i>
					<span>Қате жазбалар</span>
				</div>
				<div class="frc_bl">
					<div class="btn btn_cl btn_aut">Кіру</div>
				</div>
				<div class="frc_bl txt_c">
					<p class="pass_clc">Өз паролімді ұмыттым?</p>
				</div>
				<div class="frc_bl">
					<div class="btn btn_bl reg_clc">Тіркелу</div>
				</div>
			</div>
		</div>
	</div>



	<!-- регистрация -->
	<div class="bl_spl reg_sm">
		<div class="bl_spl_sh reg_zakr"></div>
		
		<div class="bl_spl_c">
			<div class="bl_spl_head">
				<h5>B.M.P. - ға туркелу</h5>
			</div>
			<div class="bl_spl_sam bl_reg">
				<div class="frc_bl">
					<input class="name" data-lenght="3">
					<span class="frc_pl">Менің аты-жөнім</span>
					<i class="fas fa-user frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl">
					<input type="tel" class="phone pn_mask" data-lenght="11">
					<span class="frc_pl">Менің номерім</span>
					<i class="fas fa-phone-alt frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl frc_err dsp_n">
					<i class="fas fa-exclamation"></i>
					<span>Бұл номер тіркелген</span>
				</div>
				<div class="frc_bl frc_err2 dsp_n">
					<i class="fas fa-exclamation"></i>
					<span>смс код қате</span>
				</div>
				<div class="frc_bl dsp_n">
					<input type="tel" class="pn_code" data-lenght="4">
					<span class="frc_pl">СМС код</span>
					<i class="fas fa-comments frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl dsp_n">
					<input type="password" class="password" data-lenght="6">
					<span class="frc_pl">Праоль ойластырамын</span>
					<i class="fas fa-key frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl">
					<div class="btn btn_cl btn_reg etp1" data-in="2">Тіркелуді бастау</div>
				</div>				
				<div class="frc_bl dsp_n">
					<div class="btn btn_cl btn_reg etp2" data-in="4">Код тексеру</div>
				</div>				
				<div class="frc_bl dsp_n">
					<div class="btn btn_cl btn_reg etp3" data-in="5">Регистрация</div>
				</div>
			</div>
			<div class="bl_spl_foot reg_zakr">
				Жабу
			</div>
		</div>
	</div>



	<!-- забыл пароль -->
	<div class="bl_spl pass_sm">
		<div class="bl_spl_sh pass_zakr"></div>
		
		<div class="bl_spl_c">
			<div class="bl_spl_head">
				<h5>Пароль ұмыттым</h5>
			</div>
			<div class="bl_spl_sam bl_pass">
				<div class="frc_bl">
					<input type="tel" class="pn_mask" data-lenght="11">
					<span class="frc_pl">Менің номерім</span>
					<i class="fas fa-phone-alt frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl dsp_n">
					<input type="tel" class="pn_code" data-lenght="4">
					<span class="frc_pl">Код</span>
					<i class="fas fa-comments frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl dsp_n">
					<input type="password" class="password" data-lenght="6">
					<span class="frc_pl">Пароль ойластырамын</span>
					<i class="fas fa-key frc_i"></i>
					<i class="fas fa-exclamation frc_x"></i>
					<i class="fas fa-check frc_y"></i>
				</div>
				<div class="frc_bl frc_err dsp_n">
					<i class="fas fa-exclamation"></i>
					<span></span>
				</div>
				<div class="frc_bl">
					<div class="btn btn_cl btn_pass btn_dis">СМС код алу</div>
				</div>
			</div>
			<div class="bl_spl_foot pass_zakr">
				Жабу
			</div>
		</div>
	</div>


<?php include '../block/footer.php'; ?>