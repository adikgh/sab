// 
$(document).ready(function() {

	// preloader
	// const psx_load = new Audio("/assets/audio/172779__chriskalos__impact.wav")
	setTimeout(function() {
		$('.main_fader').addClass('main_fader_act')
		$('html').removeClass('ovr_h')
	}, 1000)






	// phone mask
	$('.pn_mask').inputmask("+7 (999) 999 - 99 - 99")
	$('.pn_code').inputmask("99 - 99")




	// регистрация
	$('.reg_clc').on('click', function() {
		$('.reg_sm').addClass('bl_spl_act')
		$('html').addClass('ovr_h')
	}) 
	$('.reg_zakr').on('click', function() {
		$('.reg_sm').removeClass('bl_spl_act')
		$('html').removeClass('ovr_h')
	})


	// забыл пароль
	$('.pass_clc').on('click', function() {
		$('.pass_sm').addClass('bl_spl_act')
		$('html').addClass('ovr_h')
	}) 
	$('.pass_zakr').on('click', function() {
		$('.pass_sm').removeClass('bl_spl_act')
		$('html').removeClass('ovr_h')
	})




	// 
	$('.frc_bl input').on('blur', function() {
		if ($(this).val().length == 0) {
			$(this).parent().removeClass('frc_bl_act')
		}
	})
	$('.frc_bl input').on('focus', function(){
		$(this).parent().addClass('frc_bl_act')
	})

	// 
	$('.frc_bl input').on('input', function(){
		if ($(this).hasClass('pn_mask') == true || $(this).hasClass('pn_code') == true) {
			var pn_mask = $(this).val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')
			if (pn_mask.length >= $(this).attr('data-lenght')) {
				$(this).parent().removeClass('frc_bl_x')
				$(this).parent().addClass('frc_bl_y')
			} else {
				$(this).parent().addClass('frc_bl_x')
				$(this).parent().removeClass('frc_bl_y')
			}
		} else {
			if ($(this).val().length >= $(this).attr('data-lenght')) {
				$(this).parent().removeClass('frc_bl_x')
				$(this).parent().addClass('frc_bl_y')
			} else {
				$(this).parent().addClass('frc_bl_x')
				$(this).parent().removeClass('frc_bl_y')
			}
		}
	})







	// 
	$(".etp1").click(function(){

		var name  = $('.bl_reg').children().children('.name')
		var phone = $('.bl_reg').children().children('.phone')
		var ph = phone.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')

		$.ajax({
			url: "/user/reg.php?etp1",
			type: "POST",
			dataType: "html",
			data: ({name: name.val(), phone: ph}),
			success: function(data){
				if(data == 'live') {
					console.log(data)
					$('.bl_reg .frc_err').removeClass('dsp_n')
				} else if(data == 'success'){
					$('.bl_reg .frc_err').addClass('dsp_n')
					$(".etp1").parent().addClass('dsp_n')
					$(".etp2").parent().removeClass('dsp_n')
					$('.pn_code').parent().removeClass('dsp_n')
				} else {
					console.log("Ошибка. Обновите страницу и Повторите попытку.")
				}
			},
			beforeSend: function(data){
				console.log("Отправка...")
			},
			error: function(data){
				console.log(data)
			}
		})
	})

	$(".etp2").click(function(){

		var phone 	= $('.bl_reg').children().children('.phone')
		var ph 		= phone.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')
		var code 	= $('.bl_reg .pn_code')
		var pn_code = code.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'')

		$.ajax({
			url: "/user/reg.php?etp2",
			type: "POST",
			dataType: "html",
			data: ({code: pn_code, phone: ph}),
			success: function(data){
				if(data == 'error') {
					console.log(data)
					$('.bl_reg .frc_err2').removeClass('dsp_n')
				} else if(data == 'success'){
					$('.bl_reg .frc_err2').addClass('dsp_n')
					$(".etp2").parent().addClass('dsp_n')
					$(".etp3").parent().removeClass('dsp_n')
					$('.password').parent().removeClass('dsp_n')
				} else {
					console.log("Ошибка. Обновите страницу и Повторите попытку.")
				}
			},
			beforeSend: function(data){
				console.log("Отправка...")
			},
			error: function(data){
				console.log(data)
			}
		})
	})


	$(".etp3").click(function(){

		var phone 	= $('.bl_reg').children().children('.phone')
		var ph 		= phone.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')
		var password= $('.bl_reg').children().children('.password')

		$.ajax({
			url: "/user/reg.php?etp3",
			type: "POST",
			dataType: "html",
			data: ({password: password.val(), phone: ph}),
			success: function(data){
				if(data == 'error') {
					console.log(data)
				} else if(data == 'success'){
					$(location).attr('href', '/user/')
				} else {
					console.log("Ошибка. Обновите страницу и Повторите попытку.")
				}
			},
			beforeSend: function(data){
				console.log("Отправка...")
			},
			error: function(data){
				console.log(data)
			}
		})
	})




	// 
	$('.bl_aut input').on('input', function() {
		$('.bl_aut .frc_err').addClass('dsp_n')
	})

	$(".btn_aut").click(function(){

		var phone		= $('.bl_aut').children().children('.phone')
		var password	= $('.bl_aut').children().children('.password')
		var pn_mask 	= phone.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')

		if (pn_mask.length < phone.attr('data-lenght') || password.val().length < password.attr('data-lenght')) {

			$('.bl_aut').children().children('input').each(function() {
				if ($(this).val().length < $(this).attr('data-lenght')) {
					$(this).parent().addClass('frc_bl_x')
					$(this).parent().removeClass('frc_bl_y')
				}
			})

		} else {
			$.ajax({
				url: "/user/aut.php?btn_aut",
				type: "POST",
				dataType: "html",
				data: ({password: password.val(), phone: pn_mask}),
				success: function(data){
					if(data == 'none') {
						console.log(data)

						$('.bl_aut .frc_err').removeClass('dsp_n')
					} else if(data == 'success'){

						$(location).attr('href', '/user/')

					} else {
						console.log("Ошибка. Обновите страницу и Повторите попытку.")
						console.log(data)

						$('.bl_aut .frc_err').removeClass('dsp_n')
					}
				},
				beforeSend: function(data){
					console.log("Отправка...")
				},
				error: function(data){
					console.log(data)
				}
			})
		}
	})



	// password unset
	$('.bl_pass .pn_mask').on('input', function(){
		var pn_mask = $(this).val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')
		if (pn_mask.length == $(this).attr('data-lenght')) {
			$('.btn_pass').removeClass('btn_dis')
			btn_pasn = 1
		} else {
			$('.btn_pass').addClass('btn_dis')
			btn_pasn = false
		}
		$('.bl_pass .frc_err').addClass('dsp_n')
	})
	$('.bl_pass .pn_code').on('input', function(){
		var pn_code = $(this).val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'')
		if (pn_code.length == $(this).attr('data-lenght')) {
			$('.btn_pass').removeClass('btn_dis')
			btn_pasn = 2
		} else {
			$('.btn_pass').addClass('btn_dis')
			btn_pasn = 1
		}
		$('.bl_pass .frc_err').addClass('dsp_n')
	})
	$('.bl_pass .password').on('input', function(){
		if ($(this).val().length >= $(this).attr('data-lenght')) {
			$('.btn_pass').removeClass('btn_dis')
			btn_pasn = 3
		} else {
			$('.btn_pass').addClass('btn_dis')
			btn_pasn = 2
		}
		$('.bl_pass .frc_err').addClass('dsp_n')
	})



	var btn_pasn = false
	$('.btn_pass').on('click', function() {
		var phone 		= $('.bl_pass .pn_mask ')
		var pn_mask 	= phone.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'').replace('(','').replace(')','').replace('+','')
		var code 		= $('.bl_pass .pn_code')
		var pn_code 	= code.val().replace(/_/g,'').replace(/-/g,'').replace(/ /g,'')
		var password 	= $('.bl_pass .password')

		if (btn_pasn == 1) {
			$.ajax({
				url: "/user/pass.php?btn_pass1",
				type: "POST",
				dataType: "html",
				data: ({phone: pn_mask}),
				success: function(data){
					if(data == 'yes') {
						console.log(data)

						$('.btn_pass').html('Проверить код')
						$('.btn_pass').addClass('btn_dis')
						code.parent().removeClass('dsp_n')
					} else {
						console.log(data)

						$('.bl_pass .frc_err').removeClass('dsp_n')
						$('.bl_pass .frc_err span').html('введите другой номер')
					}
				},
				beforeSend: function(data){
					console.log("Отправка...")
				},
				error: function(data){
					console.log(data)
				}
			})

		} else if (btn_pasn == 2) {

			$.ajax({
				url: "/user/pass.php?btn_pass2",
				type: "POST",
				dataType: "html",
				data: ({phone: pn_mask, code: pn_code}),
				success: function(data){
					if(data == 'success') {
						console.log(data)

						$('.btn_pass').html('Изменить пароль')
						$('.btn_pass').addClass('btn_dis')
						password.parent().removeClass('dsp_n')
					} else if (data == 'error'){
						console.log('неверный код')

						$('.bl_pass .frc_err').removeClass('dsp_n')
						$('.bl_pass .frc_err span').html('неверный код')
					} else {
						console.log(data)
					}
				},
				beforeSend: function(data){
					console.log("Отправка...")
				},
				error: function(data){
					console.log(data)
				}
			})

		} else if (btn_pasn == 3) {

			$.ajax({
				url: "/user/pass.php?btn_pass3",
				type: "POST",
				dataType: "html",
				data: ({phone: pn_mask, code: pn_code, password: password.val()}),
				success: function(data){
					if(data == 'success') {
						console.log(data)

						$(location).attr('href', '/user/')
					} else {
						console.log(data)

						$('.bl_pass .frc_err').removeClass('dsp_n')
						$('.bl_pass .frc_err span').html('Ошибка. Обновите страницу')
					}
				},
				beforeSend: function(data){
					console.log("Отправка...")
				},
				error: function(data){
					console.log(data)
				}
			})
		}
	})





})


	// // 
	// let scroll = $(window).scrollTop()
	// if (scroll > 80) {
	// 	$('.header').addClass('header_fix')
 	//    } else {
 	//    	$('.header').removeClass('header_fix')
 	//    }
	// $(window).scroll(function() {
 	//    	scroll = $(window).scrollTop()
	// 	if (scroll > 80) {
	// 		$('.header').addClass('header_fix')
	//     } else {
	//     	$('.header').removeClass('header_fix')
	//     }
	// })
	// 
	// 
	// 
	// 
	// 
	// 
	// 	// 
	// $('.clc_top').click(function () {
	// 	$('body,html').animate({
	//         scrollTop: 0
	//     }, 1000)
	// })
	// 
	// 
	// 
	// 	// $('.form_passs i').click(function(){
	// 	if ($(this).hasClass('fa-eye') == true) {
	// 		$(this).removeClass('fa-eye')
	// 		$(this).addClass('fa-eye-slash')
	// 		$(this).siblings('input').attr('type','password')
	// 	} else {
	// 		$(this).addClass('fa-eye')
	// 		$(this).removeClass('fa-eye-slash')
	// 		$(this).siblings('input').attr('type','text')
	// 	}
	// })