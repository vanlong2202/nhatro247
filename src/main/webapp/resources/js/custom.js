(function ($) {

	"use strict";

	// Page loading animation
	$(window).on('load', function () {

		$('#js-preloader').addClass('loaded');

	});


	$(window).scroll(function () {
		var scroll = $(window).scrollTop();
		var box = $('.header-text').height();
		var header = $('header').height();

		if (scroll >= box - header) {
			$("header").addClass("background-header");
		} else {
			$("header").removeClass("background-header");
		}
	})

	$('.owl-banner').owlCarousel({
		center: true,
		items: 1,
		loop: true,
		nav: true,
		dots: true,
		navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
		margin: 30,
		responsive: {
			992: {
				items: 1
			},
			1200: {
				items: 1
			}
		}
	});

	var width = $(window).width();
	$(window).resize(function () {
		if (width > 767 && $(window).width() < 767) {
			location.reload();
		}
		else if (width < 767 && $(window).width() > 767) {
			location.reload();
		}
	})

	const elem = document.querySelector('.properties-box');
	const filtersElem = document.querySelector('.properties-filter');
	if (elem) {
		const rdn_events_list = new Isotope(elem, {
			itemSelector: '.properties-items',
			layoutMode: 'masonry'
		});
		if (filtersElem) {
			filtersElem.addEventListener('click', function (event) {
				if (!matchesSelector(event.target, 'a')) {
					return;
				}
				const filterValue = event.target.getAttribute('data-filter');
				rdn_events_list.arrange({
					filter: filterValue
				});
				filtersElem.querySelector('.is_active').classList.remove('is_active');
				event.target.classList.add('is_active');
				event.preventDefault();
			});
		}
	}


	// Menu Dropdown Toggle
	if ($('.menu-trigger').length) {
		$(".menu-trigger").on('click', function () {
			$(this).toggleClass('active');
			$('.header-area .nav').slideToggle(200);
		});
	}


	// Menu elevator animation
	$('.scroll-to-section a[href*=\\#]:not([href=\\#])').on('click', function () {
		if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			if (target.length) {
				var width = $(window).width();
				if (width < 991) {
					$('.menu-trigger').removeClass('active');
					$('.header-area .nav').slideUp(200);
				}
				$('html,body').animate({
					scrollTop: (target.offset().top) - 80
				}, 700);
				return false;
			}
		}
	});


	// Page loading animation
	$(window).on('load', function () {
		if ($('.cover').length) {
			$('.cover').parallax({
				imageSrc: $('.cover').data('image'),
				zIndex: '1'
			});
		}

		$("#preloader").animate({
			'opacity': '0'
		}, 600, function () {
			setTimeout(function () {
				$("#preloader").css("visibility", "hidden").fadeOut();
			}, 300);
		});
	});


	$('#btnFillter').click(function (event) {
		// event.preventDefault();

		let typeArr = [];
		let acreageArr = [];
		let prioritizeArr = [];
		let selfArr = [];

		$("#fillter-type .form-check-input:checked").each(function () {
			typeArr.push($(this).val());
		});
		$("#fillter-acreage .form-check-input:checked").each(function () {
			acreageArr.push($(this).val());
		});

		$("#fillter-prioritize .form-check-input:checked").each(function () {
			prioritizeArr.push($(this).val());
		});

		$("#fillter-self .form-check-input:checked").each(function () {
			selfArr.push($(this).val());
		});

		const currentUrl = new URL(window.location.href);
		const searchParams = currentUrl.searchParams;
		searchParams.set('page', '1');

		searchParams.delete('type');
		searchParams.delete('acreage');
		searchParams.delete('prioritize');
		searchParams.delete('selfManagement');


		if (typeArr.length > 0) {
			searchParams.set('type', typeArr.join(','));
		}

		if (acreageArr.length > 0) {
			searchParams.set('acreage', acreageArr.join(','));
		}

		if (prioritizeArr.length > 0) {
			searchParams.set('prioritize', prioritizeArr.join(','));
		}
		if (selfArr.length > 0) {
			searchParams.set('selfManagement', selfArr.join(','));
		}
		window.location.href = currentUrl.toString();
	});

	const params = new URLSearchParams(window.location.search);

	if (params.has('type')) {
		const typies = params.get('type').split(',');
		typies.forEach(type => {
			$(`#fillter-type .form-check-input[value="${type}"]`).prop('checked', true);
		});
	}
	if (params.has('acreage')) {
		const acreages = params.get('acreage').split(',');
		acreages.forEach(acreage => {
			$(`#fillter-acreage .form-check-input[value="${acreage}"]`).prop('checked', true);
		});
	}

	if (params.has('prioritize')) {
		const prioritizes = params.get('prioritize').split(',');
		prioritizes.forEach(prioritize => {
			$(`#fillter-prioritize .form-check-input[value="${prioritize}"]`).prop('checked', true);
		});
	}

	if (params.has('selfManagement')) {
		const selfs = params.get('selfManagement').split(',');
		selfs.forEach(selfManagement => {
			$(`#fillter-self .form-check-input[value="${selfManagement}"]`).prop('checked', true);
		});
	}

	$('#btnResset').click(function (event) {

		const currentUrl = new URL(window.location.href);
		const searchParams = currentUrl.searchParams;
		searchParams.delete('type');
		searchParams.delete('acreage');
		searchParams.delete('prioritize');
		searchParams.delete('page');
		searchParams.delete('title');
		searchParams.delete('address');
		searchParams.delete('format');
		searchParams.delete('price');
		searchParams.delete('sort');

		window.location.href = currentUrl.toString();
	});



})(window.jQuery);