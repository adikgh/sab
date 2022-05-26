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
					Онлайн курстарды жасаудың жоспары
				</div>
				<div class="conttent_info">
					<p>• Онлайн курстар нарығы қалай жұмыс жасайды?</p>
					<p>• Инфобизнесмен деген кім және қанша ақша таба алады</p>
					<p>• Онлайн курсты жасаудың нақты қадамдары;</p>
					<p>• Мамандықты меңгеру үшін жасалынатын қадамдар</p>
					<p>• Біз қалай бір курсты 35 миллионға саттық</p>
				</div>
			</div>
			<div class="content_i">
				<div class="video">
					<div class="container">
						<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="kV4dm9S1ICc"></div>
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