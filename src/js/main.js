import Loading from "./lib/Loading";

//Toggle menu mobile
const toggleMenuMobile = () => {
	$(".header-container__toggle-menu").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".header-container__main-nav").toggleClass("active");
		$("body").toggleClass("disabled");
	});
};

//Move nav-item
function moveNav() {
	if ($(window).width() <= 1024.98) {
		$('.language').appendTo('.header-container #div-mobile');
		$('.search').appendTo('.header-container #div-mobile')
	} else {
		$('.language').appendTo('.nav-item #language-desktop');
		$('.search').appendTo('.nav-item #search-desktop');
	}
}

//Header when scroll
const activeHeaderWhenScroll = () => {
	window.addEventListener("scroll", function() {
		if (window.pageYOffset > 0 && $(window).width() >= 1024) {
			document.querySelector("header").classList.add("header-croll-down");
			$('header').find('.logo').addClass('active')
			$('header').find('.hotline, #search__desktop, #language-desktop').appendTo('#scrolled');

		} else {
			document.querySelector("header").classList.remove("header-croll-down");
			$('header').find('.logo').removeClass('active');
			$('header').find('.hotline, #search__desktop, #language-desktop').appendTo('.top');
		}
	});
}

function megaMenu() {
	$('.tab-mega > li').on('click', function() {
		var $panel = $(this).closest('.drop-mega-menu');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').fadeOut(200, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).fadeIn(200, function() {
				$(this).addClass('active').fadeIn(200);
			});
		};

	});

}

//Slide apply on site
function dnnBannerSlide() {
	// Home banner
	var swiperhomebanner = new Swiper('.hinohome-banner__slide', {
		loop: true,
		speed: 1000,
		grabCursor: true,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		navigation: {
			nextEl: ".hinohome-banner__slide .swiper-button-next",
			prevEl: ".hinohome-banner__slide .swiper-button-prev"
		}

	});
	var hinohome1 = new Swiper('.hinohome1__slide .hinohome1__slide__product', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.hinohome1__slide .swiper-button-next',
			prevEl: '.hinohome1__slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 0,
			}
		},
	});

	var hinohome6 = new Swiper('.hinohome6__slide .hinohome6__slide__video', {
		slidesPerView: 3,
		spaceBetween: 20,
		autoplay: true,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.hinohome6__slide .swiper-button-next',
			prevEl: '.hinohome6__slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 15,
			}
		},
	});
	var thesameproduct = new Swiper('.dnn-detail__list .dnn-detail__list__slide', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.dnn-detail__list .swiper-button-next',
			prevEl: '.dnn-detail__list .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 0,
			}
		},
	});
	var otherproduct = new Swiper('.hino-detail4__other .hino-detail4__other__slide', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.hino-detail4__other .swiper-button-next',
			prevEl: '.hino-detail4__other .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 0,
			}
		},
	});

	var otherphutung = new Swiper('.hino-pt3__slide .hino-pt3__slide__other', {
		slidesPerView: 4,
		spaceBetween: 20,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.hino-pt3__slide .swiper-button-next',
			prevEl: '.hino-pt3__slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 0,
			}
		},
	});
	var swiper = new Swiper('.hinohome7__slide .hinohome7__slide__news', {
		slidesPerView: 1,
		loop: true,
		speed: 1000,
		spaceBetween: 30,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.hinohome7__slide .swiper-button-next',
			prevEl: '.hinohome7__slide .swiper-button-prev',
		},
	});
	var homepartner = new Swiper('.hinohome8__slide .hinohome8__slide__partner', {
		slidesPerView: 6,
		spaceBetween: 20,
		loop: true,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.hinohome8__slide .swiper-button-next',
			prevEl: '.hinohome8__slide .swiper-button-prev',
		},
		breakpoints: {
			767: {
				slidesPerView: 4,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			// 375: {
			// 	slidesPerView: 1,
			// 	spaceBetween: 20,
			// },
		},
	});
}

function history() {
	var galleryThumbs = new Swiper('.hino-about2__slide .hino-about2__slide__thumbs', {
		slidesPerView: 5,
		loop: true,
		loopedSlides: 5,
		slideToClickedSlide: true,
		breakpoints: {
			480: {
				slidesPerView: 4,
				spaceBetween: 0,
			}
		},
		navigation: {
			nextEl: '.hino-about2__slide__thumbs .swiper-button-next',
			prevEl: '.hino-about2__slide__thumbs .swiper-button-prev',
		},
	});
	var galleryTop = new Swiper('.hino-about2__slide .hino-about2__slide__content', {
		spaceBetween: 10,
		loop: true,
		thumbs: {
			swiper: galleryThumbs,
		},


	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop
}

//Slide prodcut detail
function detailThumbs() {
	var galleryThumbs = new Swiper('.hinohome2__slide__thumbs .hinohome2__slide__thumbs__video', {
		spaceBetween: 10,
		slidesPerView: 5,
		loop: true,
		slideToClickedSlide: true,
		breakpoints: {
			480: {
				slidesPerView: 3,
				spaceBetween: 5,
			}
		},
	});
	var galleryTop = new Swiper('.hinohome2__slide .hinohome2__slide__top', {
		spaceBetween: 10,
		loop: true,
		thumbs: {
			swiper: galleryThumbs,
		},


	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop
}

function phutungThumbs() {
	var galleryThumbs = new Swiper('.hino-pt1__slide .hino-pt1__slide__thumb', {
		direction: 'vertical',
		slidesPerView: 4,
		spaceBetween: 20,
		loop: true,
		slideToClickedSlide: true,
		navigation: {
			nextEl: '.hino-pt1__slide .swiper-button-next',
			prevEl: '.hino-pt1__slide .swiper-button-prev',
		},
	});
	var galleryTop = new Swiper('.hino-pt1__slide .hino-pt1__slide__top', {
		spaceBetween: 10,
		loop: true,
		thumbs: {
			swiper: galleryThumbs,
		},
	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop
}

//Slide project detail
function detailProjectThumbs() {
	var galleryThumbs = new Swiper('.hino-detail3__slide .hino-detail3__slide__thumb', {
		spaceBetween: 10,
		slidesPerView: 6,
		loop: true,
		slideToClickedSlide: true
	});
	var galleryTop = new Swiper('.hino-detail3__slide .hino-detail3__slide__top', {
		spaceBetween: 10,
		loop: true,
		speed: 2500,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.hino-detail3__slide .swiper-button-next',
			prevEl: '.hino-detail3__slide .swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},


	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop
}

//Click croll down in banner
function bannerCrollDown() {
	$('.crolldown').on('click', function(e) {
		e.preventDefault();
		$('html, body').animate({
			scrollTop: $($(this).attr('href')).offset().top
		}, 500, 'linear');
	});
}

//Counting number
function coutingNumber() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({
			countNum: $this.text()
		}).animate({
			countNum: countTo
		}, {
			duration: 3000,
			easing: 'linear',
			step: function() {
				$this.text(Math.floor(this.countNum));
			},
			complete: function() {
				$this.text(this.countNum);
			}

		});
	});
}
//Tabs detail description
function tabsDescription() {
	$('.tabs > li').on('click', function() {
		var $panel = $(this).closest('.tab-panels');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').fadeOut(300, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).fadeIn(300, function() {
				$(this).addClass('active').fadeIn(300);
			});
		};
	});

}

function hideTool() {
	$(window).scroll(function() {
		if($(window).width()<576){
			$("#block__tool").removeClass("active");
		}
		else {

			if ($(this).scrollTop() > 50) {
				$("#block__tool").addClass("active");
			} else {
				$("#block__tool").removeClass("active");
			}
		}
	});
}

function DataBG() {
	$('[data-bg]').each(function() {
		$(this).addClass('data-bg lazyload')
	})
}

function setBackground() {
	$("[setBackground]").each(function() {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function() {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "no-repeat",
		});
	});
}

//Move select fillter product
function moveSelect() {
	$('.fillter').appendTo('ul.nav #div');
	$('.fillter').each(function() {
		if (!$(this).text().match(/^\s*$/)) {
			$(this).insertBefore($(this).prev('.nav-item'));
		}
	});
	$('.wrap').appendTo('.content__sidebar #range');
}

//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const breadcrumb = $('.global-breadcrumb');
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");
	if ((mainBanner.length < 1) || (pagesBanner.length < 1)) {
		$('main').css('padding-top', heightHeader)
	}$('main').css('padding-top', heightHeader)
};

function listFilter() {
	$('.acc').find('.acc__panel:first').addClass('show');
	$('.acc__title').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
		$(this).removeClass('active');
		} else {
		$(this).closest('.acc').find('.acc__title.active').removeClass('active');
		$(this).addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});
}

//Read more article
function readMore() {
	$('#toggle').click(function() {
		var elem = $("#toggle").text();
		if (elem == "Xem thêm") {
			$("#toggle").text("Thu gọn");
			$('.ri-arrow-down-line').addClass('active')
			$(".panel").find('.article').addClass('active')
		} else {
			$("#toggle").text("Xem thêm");
			$('.ri-arrow-down-line').removeClass('active')
			$(".panel").find('.article').removeClass('active')
		}
	});
}

//Back top top
function showBackToTop() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 0) {
			$('#back-to-top').addClass('active');
		} else {
			$('#back-to-top').removeClass('active');
		}
	});

	$("#back-to-top").on("click", function(e) {
		e.preventDefault();
		$("html,body").animate({
			scrollTop: 0
		})
	})
}

function productListSort() {
	if ($(window).width() <= 767) {
		$('.dnn-list-pro2__content__left').find('.dnn-list-pro2__content__left__list').addClass('active');
		$('.dnn-list-pro2__content__left__title').on('click', function() {
			$('.dnn-list-pro2__content__left').find('.dnn-list-pro2__content__left__list').slideToggle('active');
		})
	} else {
		$('.dnn-list-pro2__content__left').find('.dnn-list-pro2__content__left__list').removeClass('active');
	}
}

function aboutMenu(){
	if($('.hino-about-menu').find('li').click()){
		$(window).scroll(function(){
			var heightSroll = ($('header').outerHeight()) + ($('#page-banner').outerHeight());
			if ($(this).scrollTop() > heightSroll){
				if ($('#srolled-about').find('.hino-about-menu').length>0) {
					var heightHeader = $('.header-croll-down').outerHeight();
					$('.hino-about-menu').addClass('active-menu');
					$('.active-menu').css('top', heightHeader);
				}
			}else{
				$('.hino-about-menu').removeClass('active-menu');
			}
		})
	}
}

function tabsProdductHome() {
	$('.tabs > li').on('click', function() {
		var $panel = $(this).closest('.hinohome1__product');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').fadeOut(1000, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).fadeIn(1000, function() {
				$(this).addClass('active').fadeIn(1000);
			});
		};
	});

}

function Showmap(){
	$('.hino-helper2__left__content').click(function(){
		$(this).addClass('active');
		var datahref = $(this).attr('data-href');
		$('.map-wrapper').find('iframe').attr('src', function(){
			return datahref;
		})
		$('.hino-helper2__left__content').not(this).removeClass('active')
	});
}

document.addEventListener('DOMContentLoaded', () => {
	new WOW().init();
	initMapping();
	menuMobile();
	dnnBannerSlide();
	activeHeaderWhenScroll();
	bannerCrollDown()
	coutingNumber();
	toggleMenuMobile();
	tabsDescription();
	listFilter();
	hideTool();
	DataBG();
	setBackground();
	moveSelect();
	moveNav();
	detailThumbs();
	checkLayoutBanner();
	readMore();
	detailProjectThumbs();
	// showBackToTop();
	productListSort();
	history();
	aboutMenu();
	tabsProdductHome();
	megaMenu();
	phutungThumbs();
	Showmap();
	toggleCategory();
});
$(window).resize(function() {
	if ($(window).width() <= 1024) {
		$('.language').appendTo('.header-container #div-mobile');
		$('.search').appendTo('.header-container #div-mobile')
	} else {
		$('.language').appendTo('.nav-item #language-desktop');
		$('.search').appendTo('.nav-item #search-desktop');
	}

})
function initMapping(){
	$('header .main-menu .main-nav').mapping({
		mobileWrapper: 'header .mobile-wrap',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .main-menu .top',
		desktopMethod: 'insertAfter',
		breakpoint: 1200
	})
}
function menuMobile() {
	$('header .button-hambuger').on('click', function () {
		$(this).toggleClass('close')
		$('header .mobile-wrap').toggleClass('active')
	})
}
function toggleCategory(){
	$('.hinohome1__product__sidebar .category').on('click', function(){
		$(this).toggleClass('active')
		$('.hinohome1__product__sidebar .tabs').slideToggle()
	})
}