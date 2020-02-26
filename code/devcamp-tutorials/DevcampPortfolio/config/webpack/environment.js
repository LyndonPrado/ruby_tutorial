const { environment } = require('@rails/webpacker')

const babelLoader = environment.loaders.get('babel')
babelLoader.test = /\.(coffee|js)(\.erb)?$/

const webpack = require('webpack')
environment.plugins.prepend( 'Provide',
	new webpack.ProvidePlugin({
		$: 'jquery/src/jquery',
		jQuery: 'jquery/src/jquery'
	}),
	// new webpack.ProvidePlugin({
	// 	$: 'jquery-ui-bundle/jquery-ui'
	// 	jquery-ui: 'jquery-ui-bundle/jquery-ui'
	// })
);

const aliasConfig = {
	'jquery-ui': 'query-ui-bundle/jquery-ui.js'
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = babelLoader
module.exports = environment
