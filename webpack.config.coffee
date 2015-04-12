webpack = require 'webpack'

module.exports = 
	devtool: 'eval'
	entry: [
		'./src/main'
	]
	debug: true
	output:
		path: __dirname + '/dist/'
		filename: 'capacitor.js'
		libraryTarget: 'umd'
		library: 'capacitor'
	externals: 'lodash'
	plugins: [
		new webpack.NoErrorsPlugin()
	]
	moduleDirectories: ['node_modules']
	resolve:
		extensions: ['', '.js', '.coffee']
	module:
		loaders: [
			{test: /\.coffee/, loaders: ['coffee']}
		]