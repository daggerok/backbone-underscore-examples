(function app() {
  'use strict';
  document.addEventListener('DOMContentLoaded', () => {
/*
    _.templateSettings = {
      evaluate: /<%([\s\S]+?)%>/g,
      interpolate: /<%=([\s\S]+?)%>/g,
      escape: /<%-([\s\S]+?)%>/g,
    };
*/
    const template = _.template(
      $('#app-template').html(),
      { variable: 'data' }
    );
    const render = () => {
      $('#app').html(template({
        one: 'ololo',
        two: 'trololo',
        three: 'O.o',
      }))
    };
    render();
  }, false);
})();
