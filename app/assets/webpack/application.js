// Polyfills.
import 'core-js/fn/array/from';
import 'whatwg-fetch';

// Set up rails-ujs.
import Rails from 'rails-ujs';
Rails.start();

// Scripts.
import 'javascripts/alert';
import 'javascripts/nav';
import 'javascripts/profile';
import '!script-loader!./trix/dist/trix.js';

// Styles.
import 'bootstrap/dist/css/bootstrap';
import 'stylesheets/layout';
import 'stylesheets/nav';
import 'stylesheets/simple_captcha';
import './trix/dist/trix.css';

