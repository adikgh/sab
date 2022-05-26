	<!--  -->
	<div class="psx_ph_menu">
		<div class="psx_ph_menu_i <?=($u_menu=='home'?'psx_ph_menu_a':'')?>" data-href="/user/home.php">
			<i class="fas fa-list-ul"></i>
			<span>Кусртар</span>
		</div>
		<div class="psx_ph_menu_i <?=($u_menu=='sab'?'psx_ph_menu_a':'')?>" data-href="/user/">
			<i class="fas fa-clipboard-list-check"></i>
			<span>Сабақтар</span>
		</div>
		<div class="psx_ph_menu_i <?=($u_menu=='acc'?'psx_ph_menu_a':'')?>" data-href="/user/acc.php">
			<i class="fas fa-user"></i>
			<span>
				<?=core::$user_data[name]?>
			</span>
		</div>
	</div>