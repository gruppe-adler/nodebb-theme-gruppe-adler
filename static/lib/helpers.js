"use strict";
/*global templates*/

(function(module) {

	function bsNewRowOnOdd(data, index, totalCount) {
		return index % 2 === 1 ? '</div><div class="row">' : '';
	}

	function _last(fn) {
		return function (data, index, totalCount) {
			if (index !== totalCount - 1) {
				return '<!-- nix ' + index + '/' + totalCount + ' -->';
			}
			return '<!-- was -->' + fn.apply(this, arguments);
		};
	}

	module.exports = function(templates) {
		templates = templates || require('templates.js');

		templates.registerHelper('bsNewRowOnOdd', bsNewRowOnOdd);
	};

	if ('undefined' !== typeof window) {
		module.exports(templates);
	}

})('undefined' === typeof module ? {
	module: {
		exports: {}
	}
} : module);
