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
					Дұрыс бастаудың нақты қадамдары
				</div>
				<div class="conttent_info">
					<p>• Facebook алгоритмі қалай жұмыс жасайды;</p>
					<p>• Таргетологтар қалай ақша табады;</p>
					<p>• Дұрыс бастаудың нақты қадамдары;</p>
					<p>• Мен қалай 500 000тг табысқа шықтым?</p>
				</div>
			</div>
			<div class="content_i">
				<div class="video">
					<div class="container">
						<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="9534AP3By5M"></div>
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