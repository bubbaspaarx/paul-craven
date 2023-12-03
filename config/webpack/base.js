const { webpackConfig, merge } = require('@rails/webpacker')

const webpack = require('webpack')

module.exports = merge(webpackConfig, {
  plugins: [
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      Popper: ['popper.js', 'default'],
      slick: 'slick-carousel',
    }),
  ],
  resolve: {
    extensions: [
      '.mjs',
      '.js',
      '.sass',
      '.scss',
      '.css',
      '.module.sass',
      '.module.scss',
      '.module.css',
      '.png',
      '.svg',
      '.gif',
      '.jpeg',
      '.jpg',
    ],
  },
})
