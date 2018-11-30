$(window).resize(function () {

	cloneElems('.canhcam-header-1 .logo-wrap');
	cloneElems('.canhcam-header-1 .language');
	cloneElems('.canhcam-header-1 .facebook');
	cloneElems('.canhcam-header-1 .sound-icon');
	toggleMenu();
});

$(document).ready(function () {

	if ($(window).width() < 992) {
		$('.canhcam-home-1 video').remove()
	} else {
		$('.canhcam-home-2-mobile .block-video video').remove()
	}

	cloneElems('.canhcam-header-1 .logo-wrap');
	cloneElems('.canhcam-header-1 .language');
	cloneElems('.canhcam-header-1 .facebook');
	cloneElems('.canhcam-header-1 .sound-icon');
	if ($(window).width() < 992) {
		toggleMenu();
	}


	$(".canhcam-room-1 .item .view-img .img-normal a").fancybox({
		download: false,
		startClass: '',
		keyboard: true,
		speed: 500,
		fade: true,
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
	});

	$('.canhcam-room-1 .item .view-img').each(function () {
		$(this).click(function () {
			$(this).parent().find('.img-normal a:first-child').trigger('click')
		})
	});

	$('.canhcam-gallery-2 .video-list').owlCarousel({
		items: 1,
		center: true,
		loop: true,
		margin: 30,
		navText: ['<span class="lnr lnr-chevron-left"></span>', '<span class="lnr lnr-chevron-right"></span>'],
		nav: true,
		smartSpeed: 700,
		responsive: {
			576: {
				items: 2
			}
		}
	});

	var x = $(document).find('#multiscroll')
	if (x.length === 1 && $(window).width() >= 992) {
		$('#multiscroll-nav a').click(function (e) {
			e.preventDefault();
			e.stopPropagation();
		})
		$('#multiscroll').multiscroll({
			verticalCentered: true,
			scrollingSpeed: 700,
			menu: true,
			navigation: true,
		});
	}
	$('.canhcam-home-2-mobile .block-room .item .text').kAnimation({
		ClassName: 'animated',
		Animation: 'fadeInRight',
		Delay: 0,
		ScrollLoop: false,
		Type: 'Scroll'
	});
	$('.canhcam-home-2-mobile .block-room .item .img').kAnimation({
		ClassName: 'animated',
		Animation: 'fadeInLeft',
		Delay: 0,
		ScrollLoop: false,
		Type: 'Scroll'
	});
	fixHeight();
})
$(window).on('resize', function(){
	fixHeight();
})
function fixHeight(){
	$('.canhcam-room-1 .item .img').outerHeight($('.canhcam-room-1 .item .img').outerWidth() / 4 * 3)
}
function cloneElems(className) {
	let html = $(className).html()
	let setHtml = $(className).attr('map-to');
	if ($(window).width() < 992) {
		$(setHtml).html(html)
	} else {
		$(setHtml).text()
	}
}

function toggleMenu() {
	$('.canhcam-header-1 .menu-toggle').on('click', function () {
		$('.canhcam-header-1 .mobile-menu').toggleClass('active');
		$('#language').toggleClass('active');
		$('#facebook').toggleClass('active');
		$('#sound-icon').toggleClass('active');
	})
}
let musicButton = document.querySelector('.sound-icon-toggle')
let musicButton2 = document.getElementById('sound-icon')
var cMusic = 0;

musicButton.onclick = function() {
	if (cMusic === 0) {
		document.getElementById('audio').play()
		cMusic = 1;
	} else {
		document.getElementById('audio').pause()
		cMusic = 0;
	}
}
musicButton2.onclick = function() {
	if (cMusic === 0) {
		document.getElementById('audio').play()
		cMusic = 1;
	} else {
		document.getElementById('audio').pause()
		cMusic = 0;
	}
}