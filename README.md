# Brunch static skeleton

This is a HTML5 application, built with [Brunch](http://brunch.io) and some npm preseted packages.

## Getting started

* Install (if you don't have them):
  * [Node.js](http://nodejs.org): `brew install node` on OS X
  * [Brunch](http://brunch.io): `npm install -g brunch`
  * Brunch plugins and app dependencies: `npm install`
* Run:
  * `npm start` — watches the project with continuous rebuild. This will also launch HTTP server with [pushState](https://developer.mozilla.org/en-US/docs/Web/Guide/API/DOM/Manipulating_the_browser_history).
  * `npm run build` — builds minified project for production
* Learn:
  * `public/` dir is fully auto-generated and served by HTTP server.  Write your code in `app/` dir.
  * Place static files you want to be copied from `app/assets/` to `public/`.
  * [Brunch site](http://brunch.io), [Getting started guide](https://github.com/brunch/brunch-guide#readme)

## Project structure

This skeleton has custom project structure: you can use coffeescript, sass and handlebars the following way:

* All pages located in `app/pages`
* All partials located and loaded from `app/partials`
* You can define template layouts in `app/layouts`.

> These files must end with `.static.hbs` extension.

You can read more information about static files in [html-brunch-static](https://github.com/bmatcuk/html-brunch-static) project.
