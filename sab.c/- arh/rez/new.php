<?php include "user_setting.php";
	
	$u_menu = 'new';
	$_SESSION[cours] = $url;
	$_SESSION[cours2] = null;
?>
<?php include "../block/header.php"; ?>

	<div class="top_head">
		<div class="top_head_name">
			<h5>Басты</h5>
		</div>
	</div>

	<div class="search_bl">
		<input type="text" placeholder="Курс атауын іздеп көріңіз">
		<div class="btn"><i class="far fa-search"></i></div>
	</div>

	<div class="bl_c">
		<div class="home_cours_cat">
			<div class="bl_cours_head">
				<div class="bl_ch_h">Курс түрлері</div>
			</div>

			<div class="swiper-container home_cours_cat_c">
				<div class="swiper-wrapper">
					<div class="swiper-slide home_cours_cat_i">
						<div class="home_cours_cat_img"><i class="fal fa-laptop-code"></i></div>
						<div class="home_cours_cat_txt">Бағдарламалау</div>
					</div>
					<div class="swiper-slide home_cours_cat_i">
						<div class="home_cours_cat_img"><i class="fal fa-briefcase"></i></div>
						<div class="home_cours_cat_txt">Бизнес</div>
					</div>
					<div class="swiper-slide home_cours_cat_i">
						<div class="home_cours_cat_img"><i class="fal fa-bullhorn"></i></div>
						<div class="home_cours_cat_txt">Маркетинг</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="bl_c">
		<div class="home_cours_top">
			<div class="bl_cours_head">
				<div class="bl_ch_h">Топ курстар</div>
				<div class="bl_ch_b"><i class="fal fa-chevron-circle-right"></i></div>
			</div>

			<div class="bl_cours_c2">
		    	<?php
		    		$sql = db::query("select * from cours where status_id != 6 limit 3");
			        while($ana = mysqli_fetch_array($sql)){
		    			echo '
					      	<div class="bl_cc_i2 href" data-href="/user/item.php?id='.$ana[id].'">
					      		<div class="lazy_img bl_cc_i3" data-src="/assets/img/cours/'.$ana[img].'">
					      			<div class="bl_cc_i4">
							    		<div class="bl_cc_img2" >
							    			'.($ana[logo]!=null?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$ana[logo].'"></span>':'<div>'.$ana[logo_txt].'</div>').'
							    		</div>
							    		<div class="bl_cc_info">
								    		<div>
								    			<div class="bl_cc_name">'.$ana[name].'</div>
								    			<div class="bl_cc_autor">'.($ana[user_id]==null?$ana[autor_name]:db::autor_name($ana[user_id])).'</div>
								    		</div>
								    		<div>
								    			<i class="fal fa-chevron-circle-right"></i>
								    		</div>
							    		</div>
					      			</div>
					      		</div>
					      	</div>
			    		';
		    		} 
		    	?>
			</div>
		</div>
	</div>

	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>

	<div class="bl_c">
		<div class="bl_cours">
			<div class="bl_cours_head bl_cours_head3 href" data-href="/user/cours_all.php">
				<div class="bl_ch_h">Жаңа курстар</div>
				<div class="bl_ch_b"><i class="fal fa-chevron-circle-right"></i></div>
			</div>
		</div>
	</div>
	<div class="swiper-container slide_max">
    	<div class="swiper-wrapper">
	    	<?php
	    		$sql = db::query("select * from cours where status_id != 6 limit 10");
		        while($ana = mysqli_fetch_array($sql)) {
	    			echo '
				      	<div class="swiper-slide slm_item href" data-href="/user/item.php?id='.$ana[id].'">
				      		<div class="lazy_img bl_cc_i3" data-src="/assets/img/cours/'.$ana[img].'">
				      			<div class="bl_cc_i4">
						    		<div class="bl_cc_img2" >
						    			'.($ana[logo]!=null?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$ana[logo].'"></span>':'<div>'.$ana[logo_txt].'</div>').'
						    		</div>
						    		<div class="bl_cc_info">
							    		<div>
							    			<div class="bl_cc_name">'.$ana[name].'</div>
							    			<div class="bl_cc_autor">'.($ana[user_id]==null?$ana[autor_name]:db::autor_name($ana[user_id])).'</div>
							    		</div>
							    		<div>
							    			<i class="fal fa-chevron-circle-right"></i>
							    		</div>
						    		</div>
				      			</div>
				      		</div>
				      	</div>
		    		';
	    		}
    		?>
    		<div class="swiper-slide slm_item_pust"></div>
    	</div>
	</div>

<?php include "../block/footer.php"; ?>