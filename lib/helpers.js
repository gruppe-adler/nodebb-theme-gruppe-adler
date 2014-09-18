(function () {

	var templates = require('templates.js');

	templates.registerHelper('bsNewRowOnOdd', function (data, index, totalCount) {
		return index % 2 === 1 ? '</div><div class="row">' : '';
	});
}());
