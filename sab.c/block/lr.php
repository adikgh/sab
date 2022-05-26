<div class="lg_block">		
	<div class="lg_top">
		
		<div class="lg_top_back">
			<a href="<?=($setting['lr']?'#':'/')?>" class="<?=($setting['lr']?'md_logx':'')?>">
				<div class="back">
					<i class="fas fa-long-arrow-left"></i>
				</div>
			</a>
		</div>

		<div class="lg_top_head">
			<div class="lg_top_head_img" data-lg="<i class='far fa-user'></i>" data-reg="<i class='fas fa-user-plus'></i>">
				<i class="far fa-user"></i>
			</div>
			<h5 data-lg="Қош келдіңіз" data-reg="Тіркелу" data-code="Тексеру">Қош келдіңіз</h5>
			<p data-lg="Өз аккаунтыңызға кіру үшін номеріңізді енгізіңіз" data-reg="Өз мәліметтеріңізді астына жазып, тегін тіркеліңіз" data-code-reg="Сіздің номеріңізге код жібердік астына енгізіңіз" data-code-lg="Тіркелуген кезде номеріңізге код барған болатын, сол код енгізіңіз немесе код қайта алыңыз">Өз аккаунтыңызға кіру үшін номеріңізді енгізіңіз</p>
		</div>
		<div class="lg_top_form">

			<div class="form_cn">
				<input type="tel" class="phone fr_phone" placeholder="+7 (___) ___-__-__" data-lenght="11" data-val="" data-sel="0">
				<i class="fal fa-mobile form_ic"></i>
				<div class="form_regui">Номеріңізді енгізіңіз</div>
			</div>
			<div class="form_cn dsp_n">
				<div class="form_cn_code">
					<input type="tel" class="code fr_code code num_1" data-lenght="1" data-val="" data-sel="0">
					<input type="tel" class="code fr_code code num_2" data-lenght="1" data-val="" data-sel="0">
					<input type="tel" class="code fr_code code num_3" data-lenght="1" data-val="" data-sel="0">
					<input type="tel" class="code fr_code code num_4" data-lenght="1" data-val="" data-sel="0">
				</div>
			</div>
			<div class="form_cn dsp_n">
				<input type="text" class="name" placeholder="Атыңыз" data-lenght="2" data-sel="0">
				<i class="fal fa-user form_ic"></i>
				<div class="form_regui">Атыңызды енгізіңіз</div>
			</div>
			<div class="form_cn_ch dsp_n">
				<input type="checkbox" name="" value="" id="checkbox">
				<label for="checkbox">
					Тіркелу үшін сіз <span>cайт ережесімен</span> келісу қажетсіз
				</label>
			</div>
			<div class="form_cn txt_c dsp_n">
				<p class="form_sms" data-phone="Сіздің номеріңіз базадан табылмады" data-code="Код қате" data-code-pust="Код енгізіңіз">
					Сіздің номеріңіз базадан табылмады
				</p>
			</div>
			<div class="form_cn form_btn" data-type="aut">
				<button class="btn btn_cl btn_fback dsp_n">
					<i class="fal fa-angle-left"></i>
				</button>
				<button class="btn btn_cl btn_fdal" data-aut="Код енгізу" data-aut2="Кіру" data-reg-info="Тіркелу" data-code="Код алу" data-reg="Тіркелуді аяқтау">
					<span>Код енгізу</span>
					<i class="fal fa-angle-right"></i>
				</button>
			</div>
			<div class="form_cn form_cn_ps dsp_n">
				<p class="code_ret" data-lg="Cмс код есімде емес?" data-code="Қайта код алу" data-reg="Код келмеді">Код есімде емес?</p>
			</div>

		</div>
	</div>
</div>