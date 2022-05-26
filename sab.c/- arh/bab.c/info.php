<?php include 'config/core.php';

	$title = 'PSX.KZ';
?>
<?php include 'block/header.php'; ?>

	<div class="info">
		<div class="info_txt">
			Здесь будет <b>что та</b> не волнуйтесь!
		</div>
		<div class="info_back" data-href="">
			возвращается назад через <span>9</span> секунд
		</div>
		<div class="info_btn">
			<a href="/"><div class="btn btn_cl"><i class="fas fa-home"></i> Главная</div></a>
		</div>
	</div>

<?php include 'block/footer.php'; ?>

<script>
	setInterval(function(){
		sp = $('.info_back span').text()
		if (sp == 0) {
			if ($('.info_back').attr('data-href') != '') {
				$(location).attr('href', $('.info_back').attr('data-href'))
			} else {
				$(location).attr('href','/')
			}
		} else {
			sp -= 1
			$('.info_back span').text(sp)
		}
	}, 1000);
</script>