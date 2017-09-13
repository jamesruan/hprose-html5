var path = require('path');
var UglifyJSPlugin = require('uglifyjs-webpack-plugin')

module.exports = {
    entry: './dist/hprose-html5.src.js',
    output: {
		library: "hprose",
		libraryTarget: "umd",
		path: path.resolve(__dirname, 'dist'),
		filename: "hprose-html5.js"
	},
	module: {
		rules: [
			{ test: /\.coffee$/, use: "coffee-loader" }
		]
	},
	devtool: 'source-map',
	plugins: [
		new UglifyJSPlugin({
			parallel: true,
			sourceMap: true
		})
	]
};
