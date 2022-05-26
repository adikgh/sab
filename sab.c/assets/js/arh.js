	// lazy img
	$(function() {
        $('.lazy').lazy({
          effect: "fadeIn",
          effectTime: 300,
          threshold: 0
        })
    })

    

	// на внизу
	$('.na_vniz').on('click', function() {
	    $('body,html').animate({
	        scrollTop: $(window).height() - 20
	    }, 500)
	})




// alert(window.location.href);
// alert(window.location.hash);
// 

// $('.callback-bt').click(function(){
// 	location.href = 'tel:87007209292';
// })
// $('.callback-btw').click(function(){
// 	location.href = 'https://wa.me/77007209292?text=Я%20заинтересован%20по%20поводу%20санаторий%20...';
// })