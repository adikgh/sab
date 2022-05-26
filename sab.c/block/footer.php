<div class="bl_raz_phone"></div>

<!-- start footer -->
	<footer class="footer">

		<div class="bl_c">
			<div class="footer_cs">
				<div class="foot_c">
					<div class="foot_hd">
						<h6>Меню</h6>
					</div>
					<div class="foot_list">
						<ul>
							<li><a href="/login.php">Жеке кабинет</a></li>
							<li><a href="/about/">SAB жайлы</a></li>
							<li><a href="/about/phone.php">Байланыс</a></li>
						</ul>
					</div>
				</div>
				<div class="foot_c">
					<div class="foot_hd">
						<h6>Курстар</h6>
					</div>
					<div class="foot_list">
						<ul>
							<?php
					    		$sql = db::query("select * from cours where status_id != 6 limit 3");
						        while($ana = mysqli_fetch_array($sql)) {
					    			echo '
								      	<li><a href="/user/item.php?id='.$ana['id'].'">'.$ana['name'].'</a></li>
						    		';
					    		}
				    		?>
						</ul>
					</div>
				</div>
				<div class="foot_c">
					<div class="foot_hd">
						<h6>Көмек</h6>
					</div>
					<div class="foot_list">
						<ul>
							<li><a href="/about/help/privacy.php">Құпиялылық саясаты</a></li>
							<li><a href="/about/help/offer.php">Қолдану ережелері</a></li>
							<li><a href="/about/help/">Cұрақ-жауап</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="bl_c">
			© 2020, SAB
		</div>
	</footer>
<!-- end footer -->

	<?php include "foot.php"; ?>
		
</body>
</html>

	<?php include "modal.php"; ?>