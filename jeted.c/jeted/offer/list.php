<?php include "../config/core.php"; ?>
<?php include "../block/header.php"; ?>

<div class="bl_c">
	<div class="body">
		
		<div class="table">
			<table style="min-width: 800px">
				<tr>
					<th>ID</th>
					<th>ФИО</th>
					<th>Почта</th>
					<th>Телефон</th>
					<th>Дата</th>
				</tr>

				<?php 
					$sql = db::query("select * from `user`");
					while ($d = mysqli_fetch_assoc($sql)) {
						echo '
							<tr>
								<td>'.$d[id].'</td>
								<td class="td">'.$d[name].'</td>
								<td class="td">'.$d[mail].'</td>
								<td class="td">'.$d[phone].'</td>
								<td class="td">'.$d[date].'</td>
							</tr>
						';
					}
				?>
			</table>
		</div>

	</div>
</div>

<?php include "../block/footer.php"; ?>