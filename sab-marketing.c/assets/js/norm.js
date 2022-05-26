// start jquery
$(document).ready(function() {

	// lazy load
	$('.lazy_img').lazy({
      effect: "fadeIn",
      effectTime: 500,
      threshold: 0
    })


	// timer
	function progress(timeleft, timetotal, $element) {
		var progressBarWidth = timeleft * $element.width() / timetotal;
		$element.find('.countdown__bar-animated').animate({ width: progressBarWidth }, 500);
		var minutes = ("0" + Math.floor(timeleft/60)).slice(-2);
		var seconds = ("0" + timeleft%60).slice(-2);
		if (timeleft > 0) {
	 		$element.find('.countdown__bar-time').html(minutes + ":"+ seconds);
		} else {
	 		$element.find('.countdown__bar-time').html("00:00");
		}
		if(timeleft > 0) {
		   setTimeout(function() {
		      progress(timeleft - 1, timetotal, $element);
		   }, 1000);
		}
	};

	var timerBar = $('.countdown__bar');
	var timerTime = timerBar.data('time');
	var pageID = timerBar.data('page-id');
	var visitStart = localStorage.getItem(pageID);
	if(visitStart === null) {
		var visitStart = Date.parse(new Date());
		localStorage.setItem(pageID, Date.parse(new Date()));
	}
	var visitEnd = +visitStart + timerTime*1000;
	var timeleft = (visitEnd - Date.parse(new Date())) / 1000;
	progress(timeleft, timerTime, timerBar);


	//
	var san = 0;
	var pric_cl = setInterval(function() {
		if (san != 91) {
			$('.pric_cl span').html(san)
			san++
		}
	}, 20)

}) // end jquery