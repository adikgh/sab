<!DOCTYPE html>
<html lang="kz">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

	<style>
		*{
			margin: 0;
			padding: 0;
		}
		body{
			background: #111017;
			color: #DCC580;
			font-family: 'Montserrat', sans-serif;
			font-weight: 800;
		}
		a{
			text-decoration: none;
		}
		.bl_c{
			max-width: 800px;
			width: calc(100% - 20px);
			margin: auto;
		}
		.play{
			max-width: 800px;
			width: 100%;
			margin: auto;
			position: relative;
		}
		.play iframe{
			width: 100%;
			height: 240px;
		}
		.header{
			text-transform: uppercase;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 34px;
			padding: 15px 0;
		}

		.timer{
			display: flex;
			justify-content: center;
			margin-top: 10px;
			font-size: 32px;
			transition: .5s;
			opacity: 0;
		}
		.txt{
			width: 100%;
			text-align: center;
			margin-top: 30px;
			color: red;
			font-size: 20px;
			transition: .5s;
			opacity: 0;
		}

		.btn_c, .btn_l{
			display: flex;
			justify-content: center;
			margin-top: 30px;
			transition: .5s;
			opacity: 0;
		}
		.btn{
			position: relative;
		   	font-weight: 500;
		   	transition: var(--tm);
		   	margin: auto;
		   	padding:0 30px;
		   	height: 54px;
		   	border-radius: 16px;
		   	display: inline-flex;
			justify-content: center;
			align-items: center;
		   	cursor: pointer;
			background: #DCC580;
			color: #000;
			box-shadow: 0 0 10px 0 #DCC580;
		   	user-select: none;
		   	font-size: 20px;
		   	margin-bottom: 30px;
		}
		.dfg{
			opacity: 0;
		}
		.o1, .btn_l{
			opacity: 1;
		}
		.ttt{
			text-align: center;
			color: #fff;
			padding: 15px 0;
			font-size: 20px;
		}
		
	</style>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Yandex.Metrika counter -->
	<script type="text/javascript" >
	   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
	   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
	   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	   ym(67886602, "init", {
	        clickmap:true,
	        trackLinks:true,
	        accurateTrackBounce:true,
	        webvisor:true
	   });
	</script>
	<noscript><div><img src="https://mc.yandex.ru/watch/67886602" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
	<!-- /Yandex.Metrika counter -->
</head>
<body>
	
	<div class="bl_c">
		<div class="header">
			рахмет!
		</div>
	</div>
	<div class="bl_c">
		<div class="ttt">
			Менің парақшама тіркелгенің үшін рахмет!
		</div>
		<div class="ttt">
			<span style="color: #DCC580">INSTA-MONEY онлайн курсын</span> қалай тегін алу керектігін видеода айтылған!
		</div>
	</div>

	<div class="play">
		<iframe frameborder="0" src="https://www.youtube.com/embed/LWQ7TjsBoGM?showinfo=0&amp;rel=0&amp;playsinline=0&amp;autoplay=1&amp;autohide=1" allowfullscreen="allowfullscreen" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"></iframe>
	</div>
	<div class="bl_c">
		<div class="ttt dfg">
			Жеңілдіктің бітуіне
		</div>
		<div class="timer">
			<div class="min">20</div>
			<span>:</span>
			<div class="sec">00</div>
		</div>
		<div class="txt">Бар болғаны 990 тг</div>
		<a href="https://taplink.cc/bakytbay_sabyrbekov/p/3b5b20/" type="button" onclick="ym(67886602,'reachGoal','pere'); return true;"><div class="btn_c">		
			<div class="btn">Бонусты алу</div>
		</div></a>
	</div>

	<script>

		var doUpdate = function() {
		    var count = Number($('.sec').html());
		    var count2 = Number($('.min').html());

		    if (count != 0) {
		        if (count < 10) {
		            $('.sec').html('0' + (count - 1));
		        } else {
		            $('.sec').html(count - 1);
		        }
		    } else if (count2 != 0) {
		        $('.sec').html(59);
		        if (count2 < 10) {
		            $('.min').html('0' + (count2 - 1));
		        } else {
		            $('.min').html(count2 - 1);
		        }
		    } else {
		    	clearInterval(st);
		    }
		}

		setTimeout(function(){
			$('.timer').addClass('o1')
			$('.dfg').addClass('o1')
			var st = setInterval(doUpdate, 1000);
			$('.txt').addClass('o1')
			$('.btn_c').addClass('o1')
		}, 30000)

	</script>
</body>
</html>