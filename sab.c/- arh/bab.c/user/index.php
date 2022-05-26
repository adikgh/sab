<?php include '../config/core.php';

	if (!core::$user_ph) {
		header('location: /user/login.php');
	}

	$title = 'user';
	$u_menu = 'sab';
?>
<?php include '../block/header2.php'; ?>
<?php include 'u_header.php'; ?>
	
	<div class="raz"></div>

	<div class="bl_c">
		<div class="block_lc">
			<?php 
				for ($i = 1; $i <= 6; $i++) {
					echo ' 
							<div class="block_lena">
								<div class="block_lena2">
									<div class="blc_lf">
										<div class="blc_lf_name">'.$i.') Сабақтың атауы</div>
										<div class="blc_lf_avtor">Бақытбай Сабырбеков</div>
										<div class="blc_lf_dt">
											<div class="blc_lf_date">21.09.2020</div>
											<div class="blc_lf_time">21:00</div>
										</div>
									</div>
									<div class="blc_rh">
										<div class="blc_rh_ava">
											<i class="fas fa-user"></i>
										</div>
									</div>
								</div>
								<div class="bll_btn">
									<a href="#"><div class="btn btn_wh cours_btn">Сабаққа жазылу</div></a>
								</div>
							</div>
					';
				}
			?>
		</div>
	</div>

<?php include 'u_footer.php'; ?>
<?php include '../block/footer.php'; ?>


<script>
	$('.cours_btn').click(function(){
		$(this).css('display', 'none');
		$.ajax({
			url: "/user/sms.php?btn",
			type: "POST",
			dataType: "html",
			data: ({}),
			success: function(data){
				if(data == 'success') {
					console.log(data)
				} else {
					console.log(data)
				}
			},
			beforeSend: function(data){
				console.log("Отправка...")
			},
			error: function(data){
				console.log(data)
			}
		})
	})




</script>