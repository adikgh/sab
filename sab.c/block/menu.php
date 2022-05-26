<!-- header_menu -->
<div class="header <?=($user_id || $setting['header'] == true ?'header_full':'')?>">
	<div class="header_fix">
		<div class="bl_c header_con">
			<div class="header_fl">
				<div class="logo">
					<a href="/"><div class="logo_img"></div></a>
				</div>
				<nav class="menu">
				    <ul>
				        <li class="menu_n1">
				        	<a href="/panel/">
				        		<span>Курстар</span>
				        		<i class="far fa-angle-down"></i>
				        	</a>
				        	<div class="pod_menu">
				        		<ul>
				        			<?php
							    		$sql = db::query("select * from category");
								        while($ana = mysqli_fetch_array($sql)) {
							    			echo '
							    				<li>
							        				<a href="/panel/search/?cat='.$ana['id'].'">
							        					'.$ana['logo'].'
							        					<span>'.$ana['name'].'</span>
							        				</a>
							        				<ul class="pod_pod_menu">
							        		';
						        			$id = $ana['id'];
											$snl = db::query("select * from cours where category_id = '$id'");
									        while($san = mysqli_fetch_array($snl)) {
								    			echo 	'<li>
								    						<a href="/panel/cours/?id='.$san['id'].'">
							        							<span>'.$san['name'].'</span>
							        						</a>
								    					</li>
													';
											}
							        		echo '
							        				</ul>
							        			</li>
							    			';
							    		}
						    		?>
				        			
				        		</ul>
				        	</div>
				        </li>
				        <li><a href="#">Жаңалықтар</a></li>
				        <li><a href="#">Вебинарлар</a></li>
				        <li><a href="/about/">SAB жайлы</a></li>
				    </ul>
				</nav>
			</div>
			<div class="header_fl2">
				<nav class="menu">
					<ul>
				      <li><p><span>KZ</span><i class="far fa-angle-down"></i></p></li>
				      <li><p><i class="fas fa-bell"></i></p></li>
						<?php if ($user_id): ?>
					      <li class="logo_user_n">
					        	<div class="logo_user_c">
						        	<span><?=$user['name']?></span>
						        	<div class="logo_user">
						        		<div class="logo_user_img">
						        			<i class="fas fa-user"></i>
						        		</div>
						        	</div>
					        	</div>
					        	<ul class="pod_user">
					        		<li>
					        			<a href="/panel/course_my.php">
					        				<i class="fal fa-user-astronaut"></i>
											<span>Менің курстарым</span>
					        			</a>
					        		</li>
					        		<li>
					        			<a href="#">
					        				<i class="fal fa-user-circle"></i>
											<span>Жеке деректер</span>
					        			</a>
					        		</li>
					        		<li>
					        			<a href="#">
					        				<i class="fal fa-cog"></i>
											<span>Настройка</span>
					        			</a>
					        		</li>
					        		<li>
					        			<a href="/user/exit.php">
					        				<i class="fal fa-sign-out"></i>
											<span>ШЫҒУ</span>
					        			</a>
					        		</li>
					        	</ul>
					        </li>
						<?php else: ?>
							<li>
								<a href="/user/acc.php">
									<i class="fas fa-sign-in"></i>
									<span>Сайтқа кіру</span>
								</a>
							</li>
						<?php endif ?>
				    </ul>
				</nav>
			</div>
		</div>
	</div>
</div>


<!-- menu -->
<?php if ($setting['menu']): ?>
	<div class="ph_menu <?=(!$user_id?'ph_menu_1':'ph_menu_4')?> <?=(!$u_menu?'ph_menu_full':'')?>">
		<div class="ph_menu_c">		
			<?php if ($user_id): ?>
				<div class="ph_mi <?=($u_menu == 'home'?'ph_act':'')?>" data-href="/">
					<i class="far fa-home"></i>
					<span>Басты</span>
				</div>
				<div class="ph_mi <?=($u_menu == 'panel'?'ph_act':'')?>" data-href="/panel/">
					<i class="far fa-book"></i>
					<span>Курстар</span>
				</div>
			<?php endif ?>
			<div class="ph_mi <?=($u_menu == 'acc'?'ph_act':'')?>" data-href="/user/acc.php">
				<i class="far fa-user"></i></a>
				<span class="user_nm_lgh"><?=$user['name']?></span>
			</div>
		</div>
	</div>
<?php endif ?>