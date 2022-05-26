<?php include "../config/core.php"; 

	if (!isset($_GET['name']) || $_GET['name'] == '') {
		header('location: /404.php');
	} else {
		$autor_name = $_GET['name'];
		$date = date("Y-m-d", time());
		$autor = db::query("select * from autor where name = '$autor_name'");
		if (mysqli_num_rows($autor) == 0) {
			header('location: /404.php');
		} else {
			$autor = mysqli_fetch_array($autor);
			$autor_id = $autor[id];
			$file = db::query("select * from autor_file where autor_id = '$autor_id'");

			if (!isset($_GET['sab']) || $_GET['sab'] == '') {
				header('location: /autor/?name='.$autor_name.'&sab=1');
			} else {
				$file_sab = $_GET['sab'];
				$file_s = db::query("select * from autor_file where autor_id = '$autor_id' and sab = $file_sab");
				if (mysqli_num_rows($file_s) == 0) header('location: /autor/?name='.$autor_name.'&sab=1');
				$file_s = mysqli_fetch_array($file_s);
				if ($date<$file_s[date])header('location: /autor/?name='.$autor_name.'&sab=1');
			}
		}
	}

	$nn = $file_s[sab];
	$_SESSION[sab][$nn] = true;
?>
<?php include "header.php"; ?>

	<style>
		:root{
			--bag: <?=$autor[bag]?>;
			--cl: <?=$autor[cl]?>;
			--cm: <?=$autor[cm]?>;
		}
	</style>

	<div class="bl_c">
		<div class="sab">

			<?php if ($file_s[style] == 'date'): ?>
				
				<div class="menu">
					<div class="menu_c">
						<?php 
							while ($sql = mysqli_fetch_array($file)) {
							    echo '
									<div class="menu_i '.($file_sab==$sql[sab]?'menu_act':'').'">
										<a href="'.($date>=$sql[date]?'/autor/?name='.$autor_name.'&sab='.$sql[sab]:'#').'">
											<div class="menu_time">
												Сабақ '.$sql[sab].'
											</div>
											<div class="menu_head">
												'.$sql[header].'
											</div>
											<div class="menu_img">
												<div class="menu_img_c">
													<img src="assets/img/'.$sql[img].'">
												</div>
												<div class="menu_play">
													'.($date>=$sql[date]?'<i class="fas fa-play"></i>':'<i class="fas fa-lock"></i>').'
												</div>
											</div>
										</a>
									</div>
							    ';
							}
						?>
					</div>
				</div>

			<?php elseif ($file_s[style] == 'click'): ?>

				<div class="menu">
					<div class="menu_c">
						<?php 
							while ($sql = mysqli_fetch_array($file)) {
								$nn = $sql[sab];
							    echo '
									<div class="menu_i '.($file_sab==$sql[sab]?'menu_act':'').'">
										<a href="'.($file_s[sab]<$sql[sab]&&!$_SESSION[sab][$nn]?'#':'/autor/?name='.$autor_name.'&sab='.$sql[sab]).'">
											<div class="menu_time">
												Сабақ '.$sql[sab].'
											</div>
											<div class="menu_head">
												'.$sql[header].'
											</div>
											<div class="menu_img">
												<div class="menu_img_c">
													<img src="assets/img/'.$sql[img].'">
												</div>
												<div class="menu_play">
													'.($file_s[sab]<$sql[sab]&&!$_SESSION[sab][$nn]?'<i class="fas fa-lock"></i>':'<i class="fas fa-play"></i>').'
												</div>
											</div>
										</a>
									</div>
							    ';
							}
						?>
					</div>
				</div>

			<?php endif ?>


			<div class="content_c">
				<div class="content_i">
					<div class="video">
						<div class="container">
							<div id="player" data-plyr-provider="youtube" data-plyr-embed-id="<?=$file_s[video]?>"></div>
						</div>
						<script>
							const player = new Plyr('#player', {});
							window.player = player;
						</script>
					</div>
				</div>
				<div class="content_i">
					<div class="conttent_sab">
						Сабақ <?=$file_s[sab]?>
					</div>
					<div class="conttent_name">
						<?=$file_s[header]?>
					</div>
					<div class="conttent_info">
						<?=$file_s[txt]?>
					</div>
				</div>
			</div>

		</div>
	</div>

<?php include "footer.php"; ?>