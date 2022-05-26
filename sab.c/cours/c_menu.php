<div class="cours_list">
	<div class="coursl_i">
		<a href="#">
			<i class="far fa-books"></i>
			<span>Курс жайлы</span>
		</a>
	</div>
	<div class="coursl_i <?=($cs['menu']=='list'?'coursl_act':'')?>">
		<a href="/cours/?id=<?=$cours_id?>">
			<i class="far fa-clipboard-list-check"></i>
			<span>Курс сабақтары</span>
		</a>
	</div>

	<?php if ($cs['mn'] == 'cours'): ?>
		<div class="coursl_i">
			<a href="#">
				<i class="far fa-comment-alt-smile"></i>
				<span>Пікірлер</span>
			</a>
		</div>
		<?php if ($user['right'] == 1): ?>
			<div class="coursl_i">
				<a href="#">
					<i class="far fa-cog"></i>
					<span>Үй жұмысы</span>
				</a>
			</div>
			<div class="coursl_i">
				<a href="#">
					<i class="far fa-cog"></i>
					<span><?=$cs['info']?> баптауы</span>
				</a>
			</div>
			<div class="coursl_i <?=($cs['menu']=='student'?'coursl_act':'')?>">
				<a href="/cours/student.php?id=<?=$cours_id?>">
					<i class="far fa-users-class"></i>
					<span>Студенттер</span>
				</a>
			</div>
			<div class="coursl_i">
				<a href="#">
					<i class="far fa-user-graduate"></i>
					<span>Куратор</span>
				</a>
			</div>
			<div class="coursl_i">
				<a href="#">
					<i class="far fa-user-graduate"></i>
					<span>Аналитика</span>
				</a>
			</div>
		<?php endif ?>
	<?php endif ?>

	<?php if ($cs['menu'] == 'item'): ?>
		<div class="coursl_i coursl_act">
			<a href="#">
				<i class="far fa-book-reader"></i>
				<span>Сабақ</span>
			</a>
		</div>
	<?php endif ?>

</div>

<?php if ($cs['mn'] == 'cours'): ?>
	<?php if ($user['right'] == 1): ?>
		<div class="cours_list">
			<?php
				$sql = db::query("select * from cours where status_id != 7 ORDER BY date DESC");
		        while($ana = mysqli_fetch_array($sql)){
	    			echo '
				      	<div class="coursl_i '.($ana['id']==$cours_id?'coursl_act':'').'">
							<a href="/cours/?id='.$ana['id'].'">
								'.($ana['id']==$cours_id?'<i class="far fa-book-open"></i>':'<i class="far fa-book"></i>').'
								<span>'.$ana['name'].'</span>
							</a>
						</div>
		    		';
	    		}
	    	?>
		</div>
	<?php else: ?>
		<?php $my_cours = db::query("select * from cours_sub where user_id = '$user_id' and status_id != 4 ORDER BY date DESC"); ?>
		<?php if (mysqli_num_rows($my_cours) != 0): ?>
			<div class="cours_list">
				<?php
			      while($ana = mysqli_fetch_array($my_cours)){
						$id = $ana['id'];
						$data_i = mysqli_fetch_array(db::query("select * from cours where id = '$id' and status_id != 7"));
						if ($data_i) {
			    			echo '
							      <div class="coursl_i '.($data_i['id']==$cours_id?'coursl_act':'').'">
										<a href="/cours/?id='.$data_i['id'].'">
											'.($data_i['id']==$cours_id?'<i class="far fa-book-open"></i>':'<i class="far fa-book"></i>').'
											<span>'.$data_i['name'].'</span>
										</a>
									</div>
					    		';
						}
		    		}
		    	?>
			</div>
		<?php endif ?>
	<?php endif ?>
<?php elseif ($cs['menu'] == 'item'): ?>
	<div class="cours_list cours_list_sab">
		<?php
			$cours_item = db::query("select * from cours_item where cours_id = '$cours_id'");
			$number_prev = $item['number'] - 1;
			$number_next = $item['number'] + 1;
			while ($item_s = mysqli_fetch_assoc($cours_item)) {
				echo '
			      	<div class="coursl_i '.($item_s['id']==$item_id?'coursl_act':'').'">
						<a href="/cours/item/?id='.$item_s['id'].'">
							'.($item_s['id']==$item_id?'<i class="far fa-book-open"></i>':'<i class="far fa-book"></i>').'
							<span>'.$item_s['number'].'. '.$item_s['name'].'</span>
						</a>
					</div>
	    		';
	    		if ($item_s['number'] == $number_prev) $item_prev_id = $item_s['id'];
	    		if ($item_s['number'] == $number_next) $item_next_id = $item_s['id'];
			}
		?>
	</div>
<?php endif ?>
