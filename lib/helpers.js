(function () {

	var templates = require('templates.js');

	templates.registerHelper('dummyStuff', function (data, index, totalCount) {
		return '';
	});
}());
