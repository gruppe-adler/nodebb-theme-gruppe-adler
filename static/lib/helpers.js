"use strict";
/*global templates*/

(function(module) {

	function bsNewRowOnOdd(data, index, totalCount) {
		return index % 2 === 1 ? '</div><div class="row">' : '';
	}

	if ('undefined' !== typeof window) {
		templates.registerHelper('bsNewRowOnOdd', bsNewRowOnOdd);
	}

	module.exports = function() {
		var templates = templates || require('templates.js');

		templates.registerHelper('bsNewRowOnOdd', bsNewRowOnOdd);
	};

})('undefined' === typeof module ? {
	module: {
		exports: {}
	}
} : module);
