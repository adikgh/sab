<?php include "../config/core.php";

	if (!$user_id) header('location: log.php');
	
	$my_cours = db::query("select * from cours_sub where user_id = '$user_id' and status_id != 4");

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
			<h5>Менің курстарым</h5>
		</div>
	</div>

	<div class="bl_c">
		<div class="bl_cours_c2">
			<?php if (mysqli_num_rows($my_cours) == 0): ?>
				ERROR
			<?php endif ?>
	    	<?php while($ana = mysqli_fetch_array($my_cours)){
		        	$id = $ana['cours_id'];
            		$data_i = mysqli_fetch_array(db::query("select * from cours where id = '$id' and status_id != 6"));
            		$autor = db::autor($data_i[autor_id]);
            		if ($data_i) {
		    			echo '
					      	<div class="bl_cc_i2">
						      	<a href="/cours.php?id='.$data_i[id].'">
						      		<div class="bl_cc_c3">
						      			<div class="lazy_img bl_cc_i3" data-src="/assets/img/cours/'.$data_i[img].'"></div>
						      		</div>
						      	</a>
					    		<div class="bl_cc_info">
					    			<div class="bl_cc_name">'.$data_i[name].'</div>
						    		<div class="bl_cc_autor">
							    		<div class="bl_cc_img2">
							    			'.($autor[logo]?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$autor[logo].'"></span>':$autor[logo_txt]).'
							    		</div>
							    		<div class="bl_cc_autor2">'.$autor[autor_name].'</div>
						    		</div>
							    	<div class="bl_cc_in">
						    			<div class="bl_cc_ini">
						    				<i class="fal fa-eye"></i>
						    				<span>'.($data_i[view]<999?$data_i[view]:substr_replace($data_i[view], '.', -3, 0)).' қаралым</span>
						    			</div>
						    			<div class="bl_cc_ini">
						    				<i class="fal fa-play-circle"></i>
						    				<span>'.$data_i[item].' сабақ</span>
						    			</div>
						    			'.($data_i[item]?'<div class="bl_cc_ini"><i class="fal fa-clock"></i><span>'.$data_i[time].'</span></div>':'').'
						    		</div>
					    		</div>
					      	</div>
			    		';
            		}
	    		} 
	    	?>
		</div>
	</div>

	<div class="bl_raz_phone"></div>

<?php include "../block/footer.php"; ?>