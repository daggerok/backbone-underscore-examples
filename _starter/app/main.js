(function app() {
  'use strict';

  document.addEventListener('DOMContentLoaded', () => {

    const appTemplate = _.template(
      $('#app-template').html(),
      { variable: 'model' }
    );

    const model = {
      name: 'Maksimko',
    };

    const render = () => $('#app').html(appTemplate(model));

    render();

  }, false);

})();
