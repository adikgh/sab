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



	<div class="btn_razn_c">
		<i class="far fa-search"></i>
	</div>




		<div class="bl_raz"></div>

	<div class="bl_c">
		<div class="bl_cours">
			<div class="bl_cours_head" data-href="">
				<div class="bl_ch_h">Біздің ұсынысымыз</div>
				<div class="bl_ch_b"><i class="fal fa-chevron-circle-right"></i></div>
			</div>

			<div class="bl_cours_c">
				<div class="swiper-container slide_min">
				    <div class="swiper-wrapper">

				    	<?php
				    		$sql = db::query("select * from cours where status_id != 6 and offer = 1 limit 6");
					        while($ana = mysqli_fetch_array($sql)){
				    			echo '
							      	<div class="swiper-slide bl_cc_i">
							    		<div class="bl_cc_img href" data-href="/user/item.php?id='.$ana[id].'">
							    			'.($ana[logo]!=null?'<span class="lazy_img" data-src="/assets/img/cours/logo/'.$ana[logo].'"></span>':'<div>'.$ana[logo_txt].'</div>').'
							    		</div>
							      	</div>
					    		';
				    		} 
				    	?>

				    </div>
				</div>
			</div>
		</div>
	</div>






<!--  -->
	'.($user[right]==1?'<div class="bli_sett"><div class="bli_settc"><div class="bli_seti bli_setib1"><i class="fal fa-ellipsis-v"></i></div><div class="bli_seti"><i class="fal fa-pen"></i></div><div class="bli_seti"><i class="fal fa-trash-alt"></i></div></div></div>':'').'







	<!--  -->

		<div class="bl_c">
		<div>
			<h4>Курсты таңдау:</h4>
			<select name="">
				<?php 
					$cours = db::query("select * from cours");
					while($cours_d = mysqli_fetch_assoc($cours)) {
						echo '
							<option value="" '.($cours_d[id]==$cours_id?'selected':'').'>'.$cours_d[name].'</option>
						';
					}
				?>
			</select>
		</div>
		<div>
			<h4>Блок таңдау:</h4>
			<select name="">
				<?php 
					$block_id = $product['block_id'];
					$block = db::query("select * from cours_block where cours_id = '$cours_id'");
					while($block_d = mysqli_fetch_assoc($block)) {
						echo '
							<option value="" '.($block_d[id]==$block_id?'selected':'').'>'.$block_d[name].'</option>
						';
					}
				?>
			</select>
		</div>
		<div>
			<h4>Сабақтың аты:</h4>
			<input type="text" value="<?=$product['name']?>">
		</div>
		<div>
			<h4>Лого</h4>
			<div>
				<div>
					<input type="file" name="" value="">
					<img src="/assets/img/cours/item_logo/<?=$product[logo]?>" alt="">
				</div>
				<div>
					<?=$product[logo_txt]?>
				</div>
			</div>
		</div>
	</div>