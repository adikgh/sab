<?php include 'c.php'; ?>
<?php include 'h.php'; ?>

	<div class="pric">
		<div class="bl_c">
			<div class="pric_tx">Кітапшаны алуға аз қалды</div>
			<div class="pric_c">
				<div class="pric_cl">
					<span>0</span>%
				</div>
			</div>
		</div>
	</div>
	<div class="bl_c">
		<div class="offer offer_gh">
			<span>Сен тестті дұрыс тапсырдың, енді кітапшаны алу үшін видеоны көр</span>
		</div>
		<div class="video">
			<div class="container">
				<div class="player" data-plyr-provider="youtube" data-plyr-embed-id='CGGYA8YPYRQ'></div>
			</div>
		</div>
		<div class="block12">
			<div class="time">
				<div class="site_txt_nj">
					Форумға жазылу аяқталуына:
				</div>
				<div class="countdown__bar" data-time="900" data-page-id="sn5">
					<div class="countdown__bar-animated"></div>
					<div class="countdown__bar-time">00:00</div>
				</div>				
			</div>

			<div class="time">
				<div class="site_txt_nj">
					Қалған орындар саны:
				</div>
				<div class="sany">
					42 / 500
				</div>
			</div>

			<div class="title">
				Интенет маркетологтарға арналған оффлайн форум!
			</div>
			<div class="site_btn">
				<a href="https://sab-level-up.kz">
					<div class="btn">
							<span>Толық ақпарат алу</span>
					</div>
				</a>
			</div>

			<div class="bgh">
				Дәл қәзір осы сайтта 42 адам отыр
			</div>
		</div>
	</div>


<?php include 'f.php'; ?>

	<script>
		const player = new Plyr(".player", {});
	   player.on("play", function() {
	   	setTimeout(function(){
	   		$(".block12").css({
	   			visibility: 'visible',
	   			opacity: '1'
	   		});
	   	}, 1000 * 15)
	   });
	</script>