import Loading from "./lib/Loading";
import Cookie from "./lib/Cookie";
import MoveElement from "./lib/MoveElement"

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
	const heightHeader = document.querySelector("header").offsetHeight;
	window.addEventListener("scroll", function() {
		if (window.pageYOffset >= heightHeader) {
			document.querySelector("header").classList.add("header-croll-down");
		} else {
			document.querySelector("header").classList.remove("header-croll-down");
		}
	});
};
//Slide apply on site
function dnnBannerSlide() {
	// Home banner
	var swiperhomebanner = new Swiper('.dnn-home-banner__slide', {
		loop: true,
		speed: 1500,
		// autoplay: {
		// 	delay: 3500,
		// 	disableOnInteraction: false
		// },
		grabCursor: true,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		navigation: {
			nextEl: ".dnn-home-banner__slide .swiper-button-next",
			prevEl: ".dnn-home-banner__slide .swiper-button-prev",
			type: "bullets",
			clickable: true
		},
		on: {
			progress: function() {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					var slideProgress = swiper.slides[i].progress;
					var innerOffset = swiper.width * 0.5;
					var innerTranslate = slideProgress * innerOffset;
					swiper.slides[i].querySelector(".swiper-inner").style.transform =
						"translate3d(" + innerTranslate + "px, 0, 0)";
				}
			},
			touchStart: function() {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					swiper.slides[i].style.transition = "";
				}
			},
			setTransition: function(speed) {
				var swiper = this;
				for (var i = 0; i < swiper.slides.length; i++) {
					swiper.slides[i].style.transition = speed + "ms";
					swiper.slides[i].querySelector(".swiper-inner").style.transition =
						speed + "ms";
				}
			}
		}

	});
	var swiperhomepro = new Swiper('.dnn-home-3__slide-home-pro .home-pro', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.dnn-home-3__slide-home-pro .swiper-button-next',
			prevEl: '.dnn-home-3__slide-home-pro .swiper-button-prev',
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


	//About slide
	var aboutSldie = new Swiper('.dnn-about5__slide', {
		slidesPerView: 1,
		spaceBetween: 20,
		autoplay: true,
		loop: true,
		speed: 1000,
		navigation: {
			nextEl: '.dnn-about5__slide .swiper-button-next',
			prevEl: '.dnn-about5__slide .swiper-button-prev',
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
	var otherproduct = new Swiper('.dnn-detail__list__other .dnn-detail__list__other__slide', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.dnn-detail__list__other .swiper-button-next',
			prevEl: '.dnn-detail__list__other .swiper-button-prev',
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
	var swiperproject = new Swiper('.dnn-project-detail3__slide .dnn-project-detail3__slide__product', {
		slidesPerView: 1,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.dnn-project-detail3__slide .swiper-button-next',
			prevEl: '.dnn-project-detail3__slide .swiper-button-prev',
		},
	});
	var projectother = new Swiper('.dnn-project-detail4__list .dnn-project-detail4__list__slide', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.dnn-project-detail4__list .swiper-button-next',
			prevEl: '.dnn-project-detail4__list .swiper-button-prev',
		},
		breakpoints: {
			767: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 20,
			},
		},
	});
}

//Slide prodcut detail
function detailThumbs() {
	var galleryThumbs = new Swiper('.thumbs .dnn-detail1__content__slide__gallery-thumbs', {
		navigation: {
			nextEl: '.thumbs .swiper-button-next',
			prevEl: '.thumbs .swiper-button-prev',
		},
		spaceBetween: 10,
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
	});
	var galleryTop = new Swiper('.dnn-detail1__content__slide .dnn-detail1__content__slide__gallery-top', {
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
	var galleryThumbs = new Swiper('.dnn-project-detail1__content__thumbs .dnn-project-detail1__content__thumbs__gallery-thumbs', {
		navigation: {
			nextEl: '.dnn-project-detail1__content__thumbs .swiper-button-next',
			prevEl: '.dnn-project-detail1__content__thumbs .swiper-button-prev',
		},
		spaceBetween: 10,
		slidesPerView: 5,
		loop: true,
		slideToClickedSlide: true
	});
	var galleryTop = new Swiper('.dnn-project-detail1__content__slide .dnn-project-detail1__content__slide__gallery-top', {
		spaceBetween: 10,
		loop: true,
		speed: 2500,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
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
		$panel.find('.panel.active').slideUp(300, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).slideDown(300, function() {
				$(this).addClass('active');
			});
		};

	});

}

function hideTool() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 50) {
			$("#block__tool").addClass("active");
		} else {
			$("#block__tool").removeClass("active");
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
	if (pagesBanner.length < 1) {
		$("header").css({
			"margin-top": "0",
			"background-color": "#fff"
		});
		breadcrumb.css("padding-top", heightHeader);
	}
};

function listFilter() {
	$('span').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
			$('.acc__title').removeClass('active');
		} else {
			$('.acc__title').find('span.active').removeClass('active');
			$(this).addClass('active');
			$(this).closest('.acc__card').find('.acc__title').addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});
	if ($(window).width() <= 1024)
		$('.block__title').find('.acc__mobile').on('click', function(e) {
			$('.content__sidebar').find('.acc').toggleClass('active');
			e.preventDefault();
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
	}else{
		$('.dnn-list-pro2__content__left').find('.dnn-list-pro2__content__left__list').removeClass('active');
	}
}

document.addEventListener('DOMContentLoaded', () => {
	// Loading();
	Cookie();
	new WOW().init();
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
	showBackToTop();
	productListSort();
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
