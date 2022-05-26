$(document).ready(function() {

	$('.lazy_img').lazy({
      effect: "fadeIn",
      effectTime: 300,
      threshold: 0
    })

	// 
	$('.fb_zap').on('click', function() {

		if ($(this).attr('data-btn') == 1) {
			f_phone = $(this).parent().siblings().children('.f_phone')
			f_name 	= $(this).parent().siblings().children('.f_name')
		} else {
			f_phone = $(this).parent().siblings('.form_mn').children().children('.f_phone')
			f_name 	= $(this).parent().siblings('.form_mn').children().children('.f_name')
		}
		
		f_ph = f_phone.val().replace(/ /g, '').replace(/\+/g, '').replace(/\)/g, '').replace(/\(/g, '').replace(/-/g, '').replace(/_/g, '')

		if ((f_ph.length != f_phone.attr('data-lenght')) || (f_name.length && f_name.val().length <= f_name.attr('data-lenght'))) {

			if (f_ph.length != f_phone.attr('data-lenght')) {
				f_phone.parent().addClass('form_pr_nm')
				f_phone.parent().addClass('form_pr_n')
			}
			if (f_name.length && f_name.val().length <= f_name.attr('data-lenght')) {
				f_name.parent().addClass('form_pr_nm')
				f_name.parent().addClass('form_pr_n')
			}

		} else {

			if (!f_name.length) {
				f_nm = 0
			} else {
				f_nm = f_name.val()
			}

			$.ajax({
				url: "/send/?mess",
				type: "POST",
				dataType: "html",
				data: ({f_phone: f_phone.val(), f_name: f_nm}),
				success: function(data){
					if (data == 'yes') {
						mess(bl_yes)
						f_phone.parent().removeClass('form_pr_y')
						f_phone.val('')
						f_name.parent().removeClass('form_pr_y')
						f_name.val('')
					}
				},
				beforeSend: function(){
					mess('Жіберуде..')
				},
				error: function(data){
					mess('Қате..')
				}
			})
		}
	})



	// Блок косу
	$('.btn_block_plus').on('click', function(){
		$('.spl_block_plus').removeClass('dsp_n');
		$('.spl_block_plus').attr('data-cours', $(this).attr('data-cours'));
		$('.spl_block_plus').attr('data-number', $(this).attr('data-number'));
	})	
	$('.zak_block_plus').on('click', function(){
		$('.spl_block_plus').addClass('dsp_n');
	})

	$('.btn_block_save').on('click', function(){
		var name = $(this).parent().siblings('.spl_con').children().children('.name')
		var cours_id = $('.spl_block_plus').attr('data-cours')
		var number = $('.spl_block_plus').attr('data-number')
		if (name.val().length != 0) {
			$.ajax({
				url: "/panel/cours/get.php?block_plus",
				type: "POST",
				dataType: "html",
				data: ({name: name.val(), cours_id: cours_id, number: number}),
				success: function(data){
					if (data == 'yes') {
						location.reload();
					} else {console.log(data)}
				},
				beforeSend: function(){},
				error: function(data){console.log(data)}
			})
		}
	})


	// Сабақ қосу
	$('.btn_sab_plus').on('click', function(){
		$('.spl_sab_plus').removeClass('dsp_n');
		$('.spl_sab_plus').attr('data-cours', $(this).attr('data-cours'));
		$('.spl_sab_plus').attr('data-block', $(this).attr('data-block'));
		$('.spl_sab_plus').attr('data-number', $(this).attr('data-number'));
	})	
	$('.zak_sab_plus').on('click', function(){
		$('.spl_sab_plus').addClass('dsp_n');
	})

	$('.btn_sab_save').on('click', function(){
		var name = $(this).parent().siblings('.spl_con').children().children('.name')
		var cours_id = $('.spl_sab_plus').attr('data-cours')
		var block_id = $('.spl_sab_plus').attr('data-block')
		var number = $('.spl_sab_plus').attr('data-number')
		if (name.val().length != 0) {
			$.ajax({
				url: "/panel/cours/get.php?item_plus",
				type: "POST",
				dataType: "html",
				data: ({name: name.val(), cours_id: cours_id, block_id: block_id, number: number}),
				success: function(data){
					if (data == 'yes') {
						location.reload();
					} else {console.log(data)}
				},
				beforeSend: function(){},
				error: function(data){console.log(data)}
			})
		}
	})


	// Студент қосу
	$('.btn_student_plus').on('click', function(){
		$('.spl_student_plus').removeClass('dsp_n');
		$('.spl_student_plus').attr('data-cours', $(this).attr('data-cours'));
	})	
	$('.zak_student_plus').on('click', function(){
		$('.spl_student_plus').addClass('dsp_n');
	})

	$('.btn_student_save').on('click', function(){
		var phone = $(this).parent().siblings('.spl_con').children().children('.phone')
		var cours_id = $('.spl_student_plus').attr('data-cours')
		if (phone.attr('data-sel') == 1) {
			$.ajax({
				url: "/cours/get.php?student_plus",
				type: "POST",
				dataType: "html",
				data: ({phone: phone.attr('data-val'), cours_id: cours_id}),
				success: function(data){
					if (data == 'plus') {
						location.reload();
					} else if (data == 'yes') {
						alert('Бұл адамда уже доступ бар')
					} else {console.log(data)}
				},
				beforeSend: function(){},
				error: function(data){console.log(data)}
			})
		}
	})

	// 
	$('.btn_student_save2').on('click', function(){
		var phone = $(this).parent().siblings('.spl_con').children().children('.phone')
		var cours_id = phone.attr('data-cours')
		if (phone.attr('data-sel') == 1) {
			$.ajax({
				url: "/cours/get.php?student_plus2",
				type: "POST",
				dataType: "html",
				data: ({phone: phone.attr('data-val'), cours_id: cours_id}),
				success: function(data){
					if (data == 'plus') {
						location.reload();
					} else if (data == 'yes') {
						alert('Бұл адамда уже доступ бар')
					} else {console.log(data)}
				},
				beforeSend: function(){},
				error: function(data){console.log(data)}
			})
		}
	})





	// Студент доступ
	$('.coursls_st_sn').on('click', function(){
		$('.spl_student_dost').removeClass('dsp_n');
		$('.spl_student_dost').attr('data-user', $(this).attr('data-user'));
	})	
	$('.zak_student_dost').on('click', function(){
		$('.spl_student_dost').addClass('dsp_n');
	})

	$('.btn_student_dost').on('click', function(){
		var dost = $(this).parent().siblings('.spl_con').children().children('.dost')
		var cours_id = $('.spl_student_dost').attr('data-cours')
		var user_id = $('.spl_student_dost').attr('data-user')

		$.ajax({
			url: "/cours/get.php?student_dost",
			type: "POST",
			dataType: "html",
			data: ({status_id: dost.val(), cours_id: cours_id, user_id: user_id}),
			success: function(data){
				if (data == 'yes') {
					location.reload();
				} else {console.log(data)}
			},
			beforeSend: function(){},
			error: function(data){console.log(data)}
		})
	})


	// Видео қосу
	$('.btn_video_plus').on('click', function(){
		$('.spl_video_plus').removeClass('dsp_n');
		$('.spl_video_plus').attr('data-item', $(this).attr('data-item'));
	})	
	$('.zak_video_plus').on('click', function(){
		$('.spl_video_plus').addClass('dsp_n');
	})

	$('.btn_video_save').on('click', function(){
		var video = $(this).parent().siblings('.spl_con').children().children('.video')
		var item_id = $('.spl_video_plus').attr('data-item')
		$.ajax({
			url: "/cours/get.php?video_plus",
			type: "POST",
			dataType: "html",
			data: ({video: video.attr('data-val'), item_id: item_id}),
			success: function(data){
				if (data == 'plus') {
					location.reload();
				} else {console.log(data)}
			},
			beforeSend: function(){},
			error: function(data){console.log(data)}
		})
	})




	// айнымалы
	let bl_yes = '<div class="preloader_mess"><div class="ms_circle"><i class="fal fa-check"></i></div><div class="ms_text">Сәтті жіберілді</div></div>'

	// function
	function mess(e) {
		$('.bl_mess').addClass('bl_mess_zak')
		$('.bl_mess_sam').html(e)

		setTimeout(function(){
			$('.bl_mess').removeClass('bl_mess_zak')
		}, 3000)
	}

	$('.bl_mess').on('click', function() {
		$(this).removeClass('bl_mess_zak')
	})



	

	var slide_min = new Swiper('.slide_min', {
      	slidesPerView: 'auto',
      	pagination: {
	        el: '.slide_min_pag',
	        type: 'progressbar',
		},
    });
    var slide_max = new Swiper('.slide_max', {
      	slidesPerView: 'auto',
      	pagination: {
	        el: '.slide_max_pag',
	        type: 'progressbar',
		},
		navigation: {
			nextEl: '.slide_max_next',
			prevEl: '.slide_max_prev',
		},
    });
    var home_cours_cat_c = new Swiper('.home_cours_cat_c', {
      	slidesPerView: 'auto',
      	pagination: {
	        el: '.home_cours_cat_c_pag',
	        type: 'progressbar',
		},
    });



	// var galleryThumbs = new Swiper('.gallery-thumbs', {
	//     slidesPerView: 'auto',
	//     freeMode: true,
	//     watchSlidesVisibility: true,
	//     watchSlidesProgress: true,
 //    });
 //    var galleryTop = new Swiper('.gallery-top', {
 //    	autoHeight: true,
	// 	loop:true,
 //      	thumbs: { swiper: galleryThumbs }
 //    });


    // кaрусел
	// var galleryThumbs = new Swiper('.gallery-thumbs', {
	// 	loop:true,
	// 	slidesPerView: 3,
	// 	allowTouchMove: false,
	// 	freeMode: true,
	// 	watchSlidesVisibility: true,
	// 	watchSlidesProgress: true,
	// 	breakpoints: {
	//         360: {
	//           	slidesPerView: 2,
	// 			allowTouchMove: true,
	//         },
	//     }
	// })
	// var galleryTop = new Swiper('.gallery-top', {
	// 	autoplay: {
	//     	delay: 5000,
	//   	},
	//   	speed: 500,
	// 	loop:true,
	// 	navigation: {
	// 		nextEl: '.swiper-button-next',
	// 		prevEl: '.swiper-button-prev',
	// 	},
	// 	thumbs: {
	// 		swiper: galleryThumbs,
	// 	},
	// })






})