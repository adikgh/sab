$(document).ready(function() {


	// music bacg
	const psx_bacg = new Audio("/assets/audio/TheQLon_-_Future_Bass_Music.mp3")
	psx_bacg.volume = 0.1
	setTimeout(function() {
		// psx_bacg.play()
	}, 7000)


	// menu
	const psx_aud = new Audio("/assets/audio/0b88938952f73a4.mp3")
	$('.psx_ph_menu_i').click(function() {
		
	  	// psx_aud.play()
	  	
	  	if ($(this).hasClass('psx_ph_menu_a') != true) {
	  		$('.psx_ph_menu_i').removeClass('psx_ph_menu_a')
			$(this).addClass('psx_ph_menu_a')
		  	var url = $(this).attr('data-href')
		  	setTimeout(function(){
				$(location).attr('href',url);
		  	}, 500)
	  	}
	})




	// заказать
	$(".orderSend").click(function(){
		var tel	= $(this).parent().siblings('.form_im').children('.tel')
		var nm 	= $(this).parent().siblings('.form_im').children('.nm')

		if (!tel.val() || !nm.val()) {
			tel.css('borderColor','red')
			nm.css('borderColor','red')
		} else {
			tel.css('borderColor','var(--cl)')
			nm.css('borderColor','var(--cl)')

			$.ajax({
				url: "/mail.php?orderSend",
				type: "POST",
				dataType: "html",
				data: ({tel: tel.val(), nm: nm.val()}),
				success: function(data){
					if(data == 'Success')
					{
						tel.val("")
						nm.val("")

						setTimeout(function() {
							$('.otp_jj').css('display', 'flex')
							$('.otp_ss').css('display', 'none')
							setTimeout(function() {
								$('.otp_sec').animate({
									opacity : 1
								}, 300, function(){
									$('.otp_sec').css('display', 'none')
									$('.otp_ss').css('display', 'none')
									$('.otp_jj').css('display', 'none')
								})
							}, 500)
						}, 500)
					} else if(data == 'Error') {
						console.log("Ошибка.")
					} else {
						console.log("Ошибка. Обновите страницу и Повторите попытку.")
					}
				},
				beforeSend: function(data){
					console.log("Отправка...")
					$('.otp_sec').css('display', 'flex')
					$('.otp_ss').css('display', 'flex')
					$('.otp_sec').animate({
						opacity : 1
					}, 300)
				},
				error: function(data){
					console.log(data)
				}
			})
		}
	})
})