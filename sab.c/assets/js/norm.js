// window.onload =()=> {

// 	setTimeout(function(){
// 		$('.preloader').addClass('preloader_ts')

// 	    setTimeout(function(){
// 	    	$('.header').addClass('header_top')
// 	    	$('html').removeClass('ovr_h')
// 	    }, 1000)

// 	    setTimeout(function(){
// 	    	$('.conti_nnf .form_c').removeClass('dsp_n')
// 	    	$('.conti_nnf .form_c').addClass('animate__animated animate__zoomInUp')
// 	    }, 400)
// 	}, 500)
// }


// start jquery
$(document).ready(function() {

	$('.href').on('click', function() {
		var src = $(this).attr('data-href')
		$(location).attr('href', src);
	});

	$('.ph_menu_1').on('click', function() {
		$('#html').addClass('ovr_h')
		$(this).addClass('ph_menu_1_act')
		$(this).animate({
			bottom: '-170px',
			left: '-30px'},
			300, function() {
				$(this).animate({
					bottom: '-240px',
					left: '-100px'
				}, 500);
				$('.md_logc').removeClass('dsp_n')
				$('.md_logc .modal_bl').animate({opacity: 1}, 500);
			}
		);
	});

	$('.md_logx').on('click', function() {
		$('.md_logc .modal_bl').animate({opacity: 0}, 500, function(){
			$('.md_logc').addClass('dsp_n')
		});
		$('.ph_menu_1').animate({
			bottom: '-170px',
			left: '-30px'
		}, 500, function() {
				$('.ph_menu_1').animate({
					bottom: '-180px',
					left: '-40px'
				}, 300);
				$('.ph_menu_1').removeClass('ph_menu_1_act')
				$('#html').removeClass('ovr_h')
			}
		);
	});


	$('.ph_menu_4 .ph_mi').on('click', function() {
		if ($(this).hasClass('ph_act') != true) {
			$(this).siblings().removeClass('ph_act');
			$(this).parent().removeClass('ph_menu_full');
			$(this).addClass('ph_act');
			var url = $(this).attr('data-href')
		  	setTimeout(function(){
				$(location).attr('href', url);
		  	}, 500)
		}
	})








	// скрол
	let scroll = $(window).scrollTop()
	if (scroll > 80) {
		$('.header_fix').addClass('header_fx')
    } else {
    	$('.header_fix').removeClass('header_fx')
    }
	if (scroll > 600) {
		$('.posmz').addClass('posmz_act')
    } else {
		$('.posmz').removeClass('posmz_act')
    }
	$(window).scroll(function() {
    	scroll = $(window).scrollTop()
		if (scroll > 80) {
			$('.header_fix').addClass('header_fx')
	    } else {
	    	$('.header_fix').removeClass('header_fx')
	    }
		if (scroll > 600) {
			$('.posmz').addClass('posmz_act')
	    } else {
			$('.posmz').removeClass('posmz_act')
	    }
	})


	// 
	if ($('span').hasClass('user_nm_lgh') == true) {
		if ($('.user_nm_lgh').html().length > 7) {
			$('.user_nm_lgh').css('fontSize', '13px');
		}
	}


	// на верх
	$('.clc_top').on('click', function () {
		$('body,html').animate({
	        scrollTop: 0
	    }, 500)
	})


	// 
	$('.cala_btn').hover(function() {
		$(this).children('i').addClass('fa-dove')
		$(this).children('i').removeClass('fa-feather-alt')
	}, function() {
		$(this).children('i').removeClass('fa-dove')
		$(this).children('i').addClass('fa-feather-alt')
	})



	// 
	$('.btn_prob').on('click', function(){
		$('.bl_obrf').removeClass('dsp_n')
		$('html').addClass('ovr_h')
		setTimeout(function(){
			$('.bl_obrf').addClass('bl_obrf_act')
		}, 100)
	})
	$('.btn_prob_zk').on('click', function(){
		$('.bl_obrf').removeClass('bl_obrf_act')
		setTimeout(function(){
			$('.bl_obrf').addClass('dsp_n')
			$('html').removeClass('ovr_h')
		}, 500)
	})






	// 
	$('.btn_lc_log').on('click', function() {

		phone = $(this).parent().siblings().children('.phone');
		form_sms = $(this).parent().siblings().children('.form_sms');
		num = '';
		$('.form_cn_code2 input').each(function() {
			num += $(this).attr('data-val')
		});
		
		if (phone.attr('data-sel') != 1 || num.length != 4) {
			phone.parent().addClass('form_pust')
			form_sms.html(form_sms.attr('data-code-pust'))
			form_sms.parent().removeClass('dsp_n')
		} else {
			$.ajax({
				url: "/user/get.php?ls_aut",
				type: "POST",
				dataType: "html",
				data: ({phone: phone.attr('data-val'), code: num}),
				success: function(data){
					if (data == 'yes') {
						location.reload();
					} else if (data == 'none') {
						form_sms.parent().removeClass('dsp_n')
						form_sms.html(form_sms.attr('data-code'))
					} else {console.log(data)}
				},
				beforeSend: function(){},
				error: function(data){console.log(data)}
			})
		}

	});






	// aut - reg
	$('.btn_fdal').on('click', function() {

		if ($(this).parent().attr('data-type') == 'aut') {
			if ($('.phone').attr('data-sel') != 1) {
				$('.phone').parent().addClass('form_pust')
			} else {
				var phone = $('.phone').attr('data-val');
				$.ajax({
					url: "/user/get.php?aut",
					type: "POST",
					dataType: "html",
					data: ({phone: phone}),
					success: function(data){
						if (data == 'yes') {
							$('.btn_fdal').parent().addClass('form_btn_flex')
							$('.btn_fback').removeClass('dsp_n')
							$('.form_cn_code').parent().removeClass('dsp_n')
							$('.phone').parent().addClass('dsp_n')
							$('.code_ret').parent().removeClass('dsp_n')
							$('.lg_top_head p').html($('.lg_top_head p').attr('data-code-lg'))
							$('.lg_top_head h5').html($('.lg_top_head h5').attr('data-code'))
							$('.num_1').focus()
							$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-aut2'))
							$('.btn_fdal').parent().attr('data-type', 'aut2')
						} else if (data == 'none') {
							$('.form_sms').parent().removeClass('dsp_n')
							$('.form_sms').html($('.form_sms').attr('data-phone'))
							$('.lg_top_head > *').each(function() {$(this).html($(this).attr('data-reg'))})
							$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-reg-info'))
							$('.btn_fdal').parent().attr('data-type', 'reg_info')
						} else {console.log(data)}
					},
					beforeSend: function(){},
					error: function(data){console.log(data)}
				})
			}
		} else if ($(this).parent().attr('data-type') == 'aut2') {

			num = ''
			$('.form_cn_code input').each(function() {
				num += $(this).attr('data-val')
			});

			if (num.length != 4) {
				$('.form_sms').html($('.form_sms').attr('data-code-pust'))
				$('.form_sms').parent().removeClass('dsp_n')
			} else {
				var phone = $('.phone').attr('data-val');
				$.ajax({
					url: "/user/get.php?aut2",
					type: "POST",
					dataType: "html",
					data: ({phone: phone, code: num}),
					success: function(data){
						if (data == 'yes') {
							location.reload();
						} else if (data == 'none') {
							$('.form_sms').parent().removeClass('dsp_n')
							$('.form_sms').html($('.form_sms').attr('data-code'))
						} else {console.log(data)}
					},
					beforeSend: function(){},
					error: function(data){console.log(data)}
				})
			}
		} else if ($(this).parent().attr('data-type') == 'reg_info') {
			$('.name').parent().removeClass('dsp_n')
			$('.form_cn_ch').removeClass('dsp_n')
			$('.phone').parent().addClass('dsp_n')
			$('.form_sms').parent().addClass('dsp_n')
			$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-code'))
			$('.btn_fdal').parent().attr('data-type', 'reg_code')
			$('.btn_fdal').parent().addClass('form_btn_flex')
			$('.btn_fback').removeClass('dsp_n')
		} else if ($(this).parent().attr('data-type') == 'reg_code') {
			if ($('.name').attr('data-sel') != 1) {
				$('.name').parent().addClass('form_pust')
			} else {
				var phone = $('.phone').attr('data-val');
				var name = $('.name').val();
				$.ajax({
					url: "/user/get.php?reg_code",
					type: "POST",
					dataType: "html",
					data: ({phone: phone, name: name}),
					success: function(data){
						if (data == 'yes') {
							$('.lg_top_head p').html($('.lg_top_head p').attr('data-code-reg'))
							$('.form_cn_code').parent().removeClass('dsp_n')
							$('.num_1').focus()
							$('.name').parent().addClass('dsp_n')
							$('.form_cn_ch').addClass('dsp_n')
							$('.code_ret').parent().removeClass('dsp_n')
							$('.code_ret').html($('.code_ret').attr('data-reg'))
							$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-reg'))
							$('.btn_fdal').parent().attr('data-type', 'aut2')
						} else {console.log(data)}
					},
					beforeSend: function(){},
					error: function(data){console.log(data)}
				})
			}
		}
	});


	$('.code_ret').on('click', function() {
		var phone = $('.phone').attr('data-val');
		$.ajax({
			url: "/user/get.php?rest",
			type: "POST",
			dataType: "html",
			data: ({phone: phone}),
			success: function(data){
				if (data == 'yes') {
					$('.lg_top_head p').html($('.lg_top_head p').attr('data-code-reg'))
					$('.num_1').focus()
					time_rest($('.code_ret'))
				} else {console.log(data)}
			},
			beforeSend: function(){},
			error: function(data){console.log(data)}
		})
	})


	$('.btn_fback').on('click', function() {
		if ($(this).parent().attr('data-type') == 'aut2') {
			$('.btn_fdal').parent().removeClass('form_btn_flex')
			$('.btn_fback').addClass('dsp_n')
			$('.form_cn_code').parent().addClass('dsp_n')
			$('.phone').parent().removeClass('dsp_n')
			$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-aut'))
			$('.btn_fdal').parent().attr('data-type', 'aut')
			$('.code_ret').parent().addClass('dsp_n')
			$('.code').val('');
		} else if ($(this).parent().attr('data-type') == 'reg_code') {
			$('.name').parent().addClass('dsp_n')
			$('.name').val('')
			$('.phone').parent().removeClass('dsp_n')
			$('.btn_fdal').parent().removeClass('form_btn_flex')
			$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-aut'))
			$('.btn_fdal').parent().attr('data-type', 'aut')
			$('.modal_head h4').html($('.modal_head h4').attr('data-aut'))
			$('.btn_fback').addClass('dsp_n')
			$('.form_cn_ch').addClass('dsp_n')
		} else if ($(this).parent().attr('data-type') == 'reg') {
			$('.code').val('');
			$('.code').parent().addClass('dsp_n')
			$('.name').parent().removeClass('dsp_n')			
			$('.code_ret').parent().addClass('dsp_n')
			$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-code'))
			$('.btn_fdal').parent().attr('data-type', 'reg_code')
		}
	})


	$('.phone').on('input', function() {
		if ($('.btn_fdal').parent().attr('data-type') == 'reg_info') {
			$('.btn_fdal').children('span').html($('.btn_fdal').attr('data-aut'))
			$('.btn_fdal').parent().attr('data-type', 'aut')
			$('.lg_top_head > *').each(function() {$(this).html($(this).attr('data-lg'))})
		}
	})




	$('.num_1').on('input', function() {
		if ($(this).val().length == $(this).attr('data-lenght')) {
			$(this).siblings('.num_2').focus()
		}
	});
	$('.num_2').on('input', function() {
		if ($(this).val().length == $(this).attr('data-lenght')) {
			$(this).siblings('.num_3').focus()
		}
	});
	$('.num_3').on('input', function() {
		if ($(this).val().length == $(this).attr('data-lenght')) {
			$(this).siblings('.num_4').focus()
		}
	});
	$('.num_4').on('input', function() {
		if ($(this).val().length == $(this).attr('data-lenght')) {
			$(this).siblings('.btn_fdal').focus()
		}
	});

	$('.code').on('focus', function() {
		$(this).val('')
	});




	// 
	$('input[type*="tel"]').on('input', function() {
		var val = $(this).val().replace(/_/g, '').replace(/ /g, '').replace(/-/g, '').replace(/\(/g, '').replace(/\)/g, '').replace(/\+/g, '')
		$(this).attr('data-val', val)
		if ($(this).attr('data-lenght') == val.length) {
			$(this).attr('data-sel', 1);
		} else {
			$(this).attr('data-sel', 0);
		}
	});
	$('input[type*="text"]').on('input', function() {
		if ($(this).attr('data-lenght') <= $(this).val().length) {
			$(this).attr('data-sel', 1);
		} else {
			$(this).attr('data-sel', 0);
		}
	});



	// mask form
	$('.fr_phone').inputmask("+7 (999) 999-99-99")
	$('.fr_code').inputmask("9")




	function time_rest(i) {
	   	var time = 60;
		var rs = setInterval(function() {
   			time -= 1 
			i.html(time)
			if (time == 0) {
				i.html(i.attr('data-code'))
				clearInterval(rs)
			}
		}, 1000)
	}





	// form - input 
	//
	// lenght
	$('.form_c input[type*="tel"]').on('input', function(){
		$(this).parent().removeClass('form_pust');
		in_rez = $(this).val().replace(/ /g, '').replace(/\+/g, '').replace(/\)/g, '').replace(/\(/g, '').replace(/-/g, '').replace(/_/g, '')
		if ($(this).attr('data-pr') == '1' && in_rez.length < $(this).attr('data-lenght')) {
			$(this).parent().removeClass('form_pr_y')
			$(this).parent().addClass('form_pr_n')
		} else if (in_rez.length < $(this).attr('data-lenght')) {
			$(this).parent().removeClass('form_pr_y')
		} else {
			$(this).parent().removeClass('form_pr_n')
			$(this).parent().removeClass('form_pr_nm')
			$(this).parent().addClass('form_pr_y')
			$(this).attr('data-pr', '1')
		}
	})
	$('.form_c input[type*="text"]').on('input', function(){
		$(this).parent().removeClass('form_pust');
		if ($(this).attr('data-pr') == '1' && $(this).val().length <= $(this).attr('data-lenght')) {
			$(this).parent().removeClass('form_pr_y')
			$(this).parent().addClass('form_pr_n')
		} else if ($(this).val().length <= $(this).attr('data-lenght')) {
			$(this).parent().removeClass('form_pr_y')
		} else {
			$(this).parent().removeClass('form_pr_n')
			$(this).parent().removeClass('form_pr_nm')
			$(this).parent().addClass('form_pr_y')
			$(this).attr('data-pr', '1')
		}
	})
	$('input[type*="url"]').on('input', function(){
		$(this).parent().removeClass('form_pust');
		in_rez = $(this).val().replace('https://', '').replace('www.', '').replace('youtube.com/watch?v=', '').replace('youtu.be/', '').replace(/\&.*/, '');
		$(this).attr('data-val', in_rez);
	})




	// 
	$('.form_cn input').focus(function() {
		$(this).parent().addClass('form_act');
	});
	$('.form_cn input').blur(function(){
		if ($(this).val().length <= 0) {
			$(this).parent().removeClass('form_act');
		}
	})
	$('.form_cn input').on('input', function(){
		$(this).parent().removeClass('form_pust');
		$('.form_sms').parent().addClass('dsp_n');
	})


	//
	$('.bli_setib1').on('click', function() {
		$('.bl_item').removeClass('bl_item_ac')
		$(this).parents('.bl_item').addClass('bl_item_ac')
	})









}) // end jquery