$('document').ready(function() {

	(function() {
		// loading animation
		var ajaxifyGo = ajaxify.go,
			loadData = ajaxify.loadData,
			refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar');

		ajaxify.go = function(url, callback, quiet) {
			loadingBar.fadeIn(0).removeClass('reset')
			return ajaxifyGo(url, callback, quiet);
		};

		$(window).on('action:ajaxify.loadingTemplates', function() {
			loadingBar.css('width', '90%');
		});

		app.refreshTitle = function(url) {
			loadingBar.css('width', '100%');
			setTimeout(function() {
				loadingBar.fadeOut(250);

				setTimeout(function() {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitle(url);
		};
	}());
});
