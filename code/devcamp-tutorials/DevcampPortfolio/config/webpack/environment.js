const { environment } = require('@rails/webpacker')

const babelLoader = environment.loaders.get('babel')
babelLoader.test = /\.(coffee|js)(\.erb)?$/

module.exports = babelLoader
module.exports = environment
