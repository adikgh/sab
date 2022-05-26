<?php include "header.php"; 

	$sab = 1;

?>
<?php include "sab_menu.php"; ?>

	<div class="content">
		<div class="content_c">
			<div class="content_i">
				<div class="conttent_sab">
					Сабақ 1
				</div>
				<div class="conttent_name">
					0-ден бастаудың жоспары
				</div>
				<div class="conttent_info">
					<p>• Видео сабақ;</p>
					<p>• Сайт қалай жұмыс жасайды;</p>
					<p>• Таплик маманы деген кім?;</p>
					<p>• Мамандықты меңгеру үшін жасалынатын қадамдар</p>
					<p>• 5 күнде 300 000тг тапқан оқиға</p>
				</div>
			</div>
			<div class="content_i">
				<div class="video">
					<div class="container">
						<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="Q42XAxcCy2o"></div>
					</div>
					<script>
						const player = new Plyr('#player', {});
						window.player = player;
					</script>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include "footer.php"; ?>