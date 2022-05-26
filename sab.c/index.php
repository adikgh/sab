<?php include "config/core.php"; 

	$_SESSION['cours'] = $url;
	$_SESSION['cours2'] = null;
	$u_menu = 'home';
	$setting['header'] = false;

	echo $_COOKIE['uph'];
?>
<?php include "block/header.php"; ?>

<?php if ($user_id): ?>
	<div class="top_head">
		<div class="top_head_name">
			<h5>Басты</h5>
		</div>
	</div>
<?php endif ?>

<?php if (!$user_id) include 'block/home/one_for_clients.php'; ?>

<div class="bl_c">
	<div class="search_bl">
		<input type="text" placeholder="Курс атауын іздеп көріңіз">
		<div class="btn"><i class="far fa-search"></i></div>
	</div>
</div>

<div class="bl_c">
	<div class="home_cours_cat">
		<div class="bl_cours_head">
			<h5 class="bl_ch_h">Курс түрлері</h5>
		</div>

		<div class="swiper-container home_cours_cat_c">
			<div class="swiper-wrapper">
				<?php
		    		$sql = db::query("select * from category");
			      while($ana = mysqli_fetch_array($sql)) {
		    			echo '
		    				<div class="swiper-slide home_cours_cat_i">
		    					<a href="/search/?cat='.$ana['id'].'">
									<div class="home_cours_cat_img">'.$ana['logo'].'</div>
									<div class="home_cours_cat_txt">'.$ana['name'].'</div>
		    					</a>
							</div>
		    			';
		    		}
	    		?>
			</div>
			<div class="swiper-pagination home_cours_cat_c_pag"></div>
		</div>
	</div>
</div>

<?php // course top
	$sql = db::query("select * from cours where top = 1 and status_id != 6 ORDER BY date DESC");
	if (mysqli_num_rows($sql) != 0) include 'block/home/top_course.php';
?>

<?php // course new
	$sql = db::query("select * from cours where new = 1 and status_id != 6 ORDER BY date DESC limit 6");
	if (mysqli_num_rows($sql) != 0) include 'block/home/new_course.php';
?>

<?php include "block/footer.php"; ?>