path     = require 'path'
partials = require('fs').readdirSync 'app/partials'
  .filter((file) -> path.extname(file) == '.hbs')
  .map((file) -> "app/partials/#{file}")

exports.config =
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/
      order:
        after: 'app/javascripts/application.coffee'
    stylesheets:
      joinTo: 'css/app.css'
  plugins:
    static:
      pathTransform: (f) -> require('path').relative 'pages', f
      processors: [
        require('html-brunch-static')
          defaultContext:
            _options:
              layout: 'app/layouts/application.static.hbs'
              partials: partials
          handlebars:
            enableProcessor: true
      ]
