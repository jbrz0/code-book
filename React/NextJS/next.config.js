// Settings for next.config.js
// Put in base directory

// Using CSS and Sass
/*
Import into each page: import '../styles/styles.scss'
Import as module: nav '../styles/nav.scss'
Import as module: <div className={nav.header}>
*/

const withCSS = require('@zeit/next-css')
const withSASS = require('@zeit/next-sass')

module.exports = withCSS(withSASS(
  {
    // Remove the lightning bolt symbol in bottom right
    devIndicators: {
      autoPrerender: false,
    },

    // Turn on importing CSS as module
    cssModules: true,

    // Set environment variables within next
    env: {
      password: 'nFPJsH]RK2Hrc!jnjG_,49_k',
      isAllowed: true,
    },
  }
))
