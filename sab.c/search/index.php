<?php include "../config/core.php";

	$min_price = 9990;
	$max_price = 89990;

	if ($_GET['cat']) {
		$cat_id = $_GET['cat'];
		$cours = db::query("select * from cours where category_id = '$cat_id' and status_id != 7 ORDER BY date DESC");
	} else if ($_GET['filtr']) {
		$min_price = $_GET['min_price'];
		$max_price = $_GET['max_price'];

		if ($min_price > $max_price) {
			$cours = db::query("select * from cours where price < '$min_price' and price > '$max_price' and status_id != 7 ORDER BY date DESC");
		} else if ($min_price < $max_price) {
			$cours = db::query("select * from cours where price > '$min_price' and price < '$max_price' and status_id != 7 ORDER BY date DESC");
		} else {
			$cours = db::query("select * from cours where price = '$min_price' and status_id != 7 ORDER BY date DESC");
		}
	} else {
		$cours = db::query("select * from cours where status_id != 7 ORDER BY date DESC");
	}

?>
<?php include "../block/header.php"; ?>

	<div class="top_head">
		<a href="/">
			<div class="back">
				<i class="fas fa-long-arrow-left"></i>
			</div>
		</a>
		<div class="top_head_name">
			<h5>Барлық курстар</h5>
		</div>
	</div>

	<div class="bl_c">

		<div class="search_cn">
			<div class="search_fil">
				<div class="search_filc">
					<div class="search_filh">
						<span>Сүзгі</span>
						<i class="fas fa-filter"></i>
					</div>
					<form method="get">
						<div class="search_filhc">
							<div class="filt_form">
								<div class="filt_fr filt_price">
									<div>
										<span>Бастап:</span>
										<input type="number" name="min_price" value="<?=$min_price?>" max="89990" min="9990" step="10">
									</div>
									<div>
										<span>Дейін:</span>
										<input type="number" name="max_price" value="<?=$max_price?>" max="89990" min="9990" step="10">
									</div>
								</div>
							</div>

							<div class="filt_btn">
								<button name="filtr" class="btn" value="true">Көрсету</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="search_dl">
				<div class="search_cat">
					<?php
			    		$sql = db::query("select * from category");
				        while($ana = mysqli_fetch_array($sql)) {
			    			echo '
								<div class="search_cati '.($cat_id==$ana[id]?'search_cata':'').'">
									<a href="/search/'.($cat_id==$ana[id]?'':'?cat='.$ana[id]).'">
										<div class="home_cours_cat_img">'.$ana[logo].'</div>
										<div class="home_cours_cat_txt">'.$ana[name].'</div>
									</a>
								</div>
			    			';
			    		}
		    		?>
				</div>
				<div class="bl_cours_c2">
			    	<?php
				      while($ana = mysqli_fetch_array($cours)) {
				        	$autor = fun::autor($ana[autor_id]);
			    			echo '
						      	<div class="bl_cc_i2">
							      	<a href="/cours/?id='.$ana[id].'">
							      		<div class="bl_cc_c3">
							      			<div class="lazy_img bl_cc_i3" data-src="/assets/img/cours/'.$ana[img].'"></div>
							      		</div>
							      	</a>
							    		<div class="bl_cc_info">
							    			<div class="bl_cc_name">'.$ana[name].'</div>
								    		<div class="bl_cc_autor">
									    		<div class="bl_cc_img2">
									    			'.($autor[logo]?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$autor[logo].'"></span>':$autor[logo_txt]).'
									    		</div>
									    		<div class="bl_cc_autor2">'.$autor[autor_name].'</div>
								    		</div>
									    	<div class="bl_cc_in">
								    			<div class="bl_cc_ini">
								    				<i class="fal fa-eye"></i>
								    				<span>'.($ana[view]<999?$ana[view]:substr_replace($ana[view], '.', -3, 0)).' қаралым</span>
								    			</div>
								    			<div class="bl_cc_ini">
								    				<i class="fal fa-play-circle"></i>
								    				<span>'.$ana[item].' сабақ</span>
								    			</div>
								    			'.($ana[item]?'<div class="bl_cc_ini"><i class="fal fa-clock"></i><span>'.$ana[time].'</span></div>':'').'
								    		</div>
								    		<div class="bl_cc_pr">
								    			'.($ana[price_sole]?'<div class="bl_cc_pr_on c_red">'.($ana[price]<999?$ana[price_sole]:substr_replace($ana[price_sole], '.', -3, 0)).' тг</div><div class="bl_cc_pr_sole">'.($ana[price]<999?$ana[price]:substr_replace($ana[price], '.', -3, 0)).' тг</div>':'<div class="bl_cc_pr_on">'.($ana[price]<999?$ana[price]:substr_replace($ana[price], '.', -3, 0)).' тг</div>').'
								    		</div>
							    		</div>
						      	</div>
				    			';
			    		}
			    	?>
				</div>
				
			</div>

		</div>
	</div>

	<div class="bl_raz_phone"></div>

<?php include "../block/footer.php"; ?>