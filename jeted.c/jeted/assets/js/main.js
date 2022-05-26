$(document).ready(function() {

	// setting input
	$(".phone").inputmask("+7 (999) 999-99-99");
	// form - input
	$('input').on('input', function(){
		if ($(this).attr('type') == 'tel') {
			in_rez = $(this).val().replace(/ /g, '').replace(/\+/g, '').replace(/\)/g, '').replace(/\(/g, '').replace(/-/g, '').replace(/_/g, '')
			if (in_rez.length < $(this).attr('data-lenght')) {
				$(this).attr('data-pr', 0)
			} else {
				$(this).attr('data-pr', 1)
				$(this).attr('data-val', in_rez)
			}
		} else if ($(this).attr('type') == 'text') {
			if ($(this).val().length < $(this).attr('data-lenght')) {
				$(this).attr('data-pr', 0)
			} else {
				$(this).attr('data-pr', '1')
				$(this).attr('data-val', $(this).val())
			}
		} else {
			if ($(this).is(':checked')){
				$(this).attr('data-pr', '1')
			} else {
				$(this).attr('data-pr', '0')
			}
		}
	})



	// 
	$('.orderSend').on('click', function() {

		var name 	= $(this).parent().siblings().children('.name')
		var mail 	= $(this).parent().siblings().children('.mail')
		var phone 	= $(this).parent().siblings().children('.phone')
		var ch 		= $(this).parent().siblings().children('.checkbox')

		if (name.attr('data-pr') != 1 || mail.attr('data-pr') != 1 || phone.attr('data-pr') != 1 || ch.attr('data-pr') != 1) {
			alert('Введите свой данный')
		} else {
			$.ajax({
				url: "/jeted/offer/send.php?us",
				type: "POST",
				dataType: "html",
				data: ({name: name.val(), mail: mail.val(), phone: phone.val()}),
				success: function(data){
					if (data == 'yes') { 
						$(location).attr('href', '/jeted/offer/thanks.php');
					} else {
						alert('Пожалуйста, перезагрузите сайт <br>и попробуйте еще раз');
					}
				},
				beforeSend: function(){ console.log('Отправка..') },
				error: function(data){ console.log('Ошибка..') }
			})
		}
	})


	// 
	$('.zabr_back').click(function(){
		$('.zabr_nom').removeClass('zabr_nom_act')
	})
	$('.disb_zab').click(function() {
		$('.zabr_nom').addClass('zabr_nom_act')
	})

})