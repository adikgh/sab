<?php include "../config/core.php"; 

	$_SESSION[cours2] = $url;
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
		<div class="bl_cours_c2">
	    	<?php
	    		$sql = db::query("select * from cours where status_id != 6");
		        while($ana = mysqli_fetch_array($sql)){
		        	$autor = db::autor($ana[autor_id]);
	    			echo '
				      	<div class="bl_cc_i2">
					      	<a href="/cours/product.php?id='.$ana[id].'">
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

	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>
	<div class="bl_raz"></div>

<?php include "../block/footer.php"; ?>