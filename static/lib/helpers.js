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

	function newrelic(data, index, totalCount) {
		return require('newrelic').getBrowserTimingHeader();
	}

	module.exports = function(templates) {
		templates = templates || require('templates.js');

		templates.registerHelper('bsNewRowOnOdd', bsNewRowOnOdd);
		templates.registerHelper('newrelic', _last(newrelic));
	};

	if ('undefined' !== typeof window) {
		module.exports(templates);
	}

})('undefined' === typeof module ? {
	module: {
		exports: {}
	}
} : module);
