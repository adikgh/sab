<?php 

	$url = '';

	$site = array(
		'name' => 'Кітапшаны алу',
		'site' => 'sab.marketing'.$url,
		'title' => 'Кітапшаны алу',
		'disc' => 'Кітапшаны алу',
		'keyw' => 'NNN',
		'color' => '#008CFF'
	)

?>
<?php include "block/header.php"; ?>

	<style>
		:root{
			--cl: #008CFF;
		}
	</style>
	
	<div class="pric">
		<div class="bl_c">
			<div class="pric_tx">Кітапшаны алуға аз қалды</div>
			<div class="pric_c">
				<div class="pric_cl">
					<span>0</span>%
				</div>
			</div>
		</div>
	</div>
	<div class="bl_c">
		<div class="offer">
			<span>Кітапшаны алу үшін <br>төмендегі видеоны көр</span>
		</div>
		<div class="video">
			<div class="container">
				<div class="player" data-plyr-provider="youtube" data-plyr-embed-id='5XQbB4bvoI4'></div>
			</div>
		</div>
		<div class="block12">
			<div class="title">
				Егер сіз:
			</div>
			<div class="nm_site">
				<div class="nm_sitei">Онлайн курсыңызды көпке сата алмай жүрсеңіз</div>
				<div class="nm_sitei">Айына кемі 3 млн тг табысқа шыға алмасаңыз</div>
				<div class="nm_sitei">Онлайн курстарды қайта, қайта өз парақшаңызда сатудан шаршасаңыз</div>
				<div class="nm_sitei">Автомттандырылған воронка жүйесін қойғыңыз келсе</div>
			</div>
			<div class="offer">
				Онлайн курстың сатылымын <span>7 күнде 70% өсіретін 4 воронка</span>
			</div>
			<div class="time">
				<div class="site_txt_nj">
					Жеңілдіктің бітуіне:
				</div>
				<div class="countdown__bar" data-time="1800" data-page-id="sn1">
					<div class="countdown__bar-animated"></div>
					<div class="countdown__bar-time">00:00</div>
				</div>				
			</div>

			<div class="time">
				<div class="site_txt_nj">
					Қалған орындар саны:
				</div>
				<div class="sany">
					28 / 300
				</div>
			</div>

			<div class="title">
				Онлайн вебинар
			</div>
			<div class="site_btn">
				<a href="http://info-business.kz?ot=sabm">
					<div class="btn">96,7% жеңілдікпен қатысамын</div>
				</a>
			</div>
			<div class="site_btn">
				<a href="http://info-business.kz?ot=sabm">
					<div class="btn">Өз бағасына қатысамын</div>
				</a>
			</div>

			<div class="bgh">
				Дәл қәзір осы сайтта 42 адам отыр
			</div>

		</div>

	</div>


<?php include "block/footer.php"; ?>

	<!-- Yandex.Metrika counter -->
	<script type="text/javascript" >
	   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
	   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
	   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	   ym(69928417, "init", {
	        clickmap:true,
	        trackLinks:true,
	        accurateTrackBounce:true,
	        webvisor:true
	   });
	</script>
	<noscript><div><img src="https://mc.yandex.ru/watch/69928417" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
	<!-- /Yandex.Metrika counter -->

	<script>
		const player = new Plyr(".player", {});
	   player.on("play", function() {
	   	setTimeout(function(){
	   		$(".block12").css({
	   			visibility: 'visible',
	   			opacity: '1'
	   		});
	   	}, 1000 * 15)
	   });
	</script>

	<script>
		document.querySelector(".site_btn a").onclick = function(){
			ym(69928417,'reachGoal','clc')
		}
	</script>