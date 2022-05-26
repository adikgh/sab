<?php include "../config/core.php"; 

	$_SESSION[cours] = $url;
	$_SESSION[cours2] = null;

	$u_menu = 'panel';
	$my_cours = db::query("select * from cours_sub where user_id = '$user_id' and status_id != 4 ORDER BY date DESC");
?>
<?php include "../block/header.php"; ?>

	<div class="top_head">
		<div class="top_head_name">
			<h5>Курстар</h5>
		</div>
	</div>

	<div class="bl_c">
		<div class="search_bl">
			<input type="text" placeholder="Курс атауын іздеп көріңіз">
			<div class="btn"><i class="far fa-search"></i></div>
		</div>
	</div>

	<?php if (mysqli_num_rows($my_cours) != 0): ?>
		
		<div class="bl_c">
			<div class="bl_cours_my">
				<div class="bl_cours_head">
					<h5 class="bl_ch_h">Менің курстарым</h5>
					<!-- <a href="#"><div class="bl_ch_b"><i class="fal fa-chevron-circle-right"></i></div></a> -->
				</div>
				<div class="bl_cours_c">
					<div class="swiper-container slide_min">
					    <div class="swiper-wrapper">
					    	<?php
						      while($ana = mysqli_fetch_array($my_cours)){
			        				$id = $ana['cours_id'];
	            					$data_i = mysqli_fetch_array(db::query("select * from cours where id = '$id' and status_id != 7"));
	            					if ($data_i) {
							    			echo '
										      	<div class="swiper-slide bl_cc_i">
											      	<a href="/cours/?id='.$data_i[id].'">
											    		<div class="bl_cc_img">
											    			'.($data_i[img]!=null?'<span class="lazy_img" data-src="/assets/img/cours/'.$data_i[img].'"></span>':'<div>'.$data_i[logo_txt].'</div>').'
											    		</div>
											    		<div class="bl_cc_txt">'.$data_i[name].'</div>
											      	</a>
										      	</div>
								    			';
	            					}
					    		}
					    	?>
					    </div>
						<div class="swiper-pagination slide_min_pag"></div>
					</div>
				</div>
			</div>
		</div>

	<?php endif ?>


<!--  -->
	<div class="bl_c">
		<div class="home_cours_top">
			<div class="bl_cours_head">
				<h5 class="bl_ch_h">Барлық курстар</h5>
				<a href="/panel/search/"><div class="bl_ch_b"><i class="fal fa-chevron-circle-right"></i></div></a>
			</div>

			<div class="bl_cours_c2">
		    	<?php
		    		$sql = db::query("select * from cours where status_id != 7 ORDER BY date DESC limit 6");
			      while($ana = mysqli_fetch_array($sql)){
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

	<div class="bl_raz_phone"></div>

<?php include "../block/footer.php"; ?>