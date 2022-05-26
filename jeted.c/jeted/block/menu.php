<?php 
	$url = $_SERVER['REQUEST_URI'];
	$url = explode('?', $url);
	$url = $url[0];
?>

<div class="header">
	<div class="header_con">
		<div class="logo">
			<div class="logo_con" style="background-image: url(/jeted/assets/img/jetoo.jpg)"></div>
		</div>
		<div class="header_pj">
			<a href="<?=$url?>?lang=<?=($lang=='ru'?'kz':'ru')?>">
				<div class="header_lang">
					<div class="bl_lang <?=($lang=='kz'?'bl_lang_act':'')?>">
						<div class="bl_langm">ҚАЗ</div>
					</div>
					<div class="bl_lang <?=($lang=='ru'?'bl_lang_act':'')?>">
						<div class="bl_langm">РУС</div>
					</div>
				</div>
			</a>
		</div>
	</div>
</div>