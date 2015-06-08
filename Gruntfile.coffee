coffeeson = require('coffeeson');

# Pour que require accepte les .coffee
fs = require('fs')
require.extensions['.coffee'] = (module, filename) -> module.exports = fs.readFileSync(filename, 'utf8')

# Récupération du JSON depuis le coffee, ajout de l'environnement dans le JSON pour avoir du code de débug en preprod uniquement
myDataCoffee = require('./dev/data.coffee')
myEnv = ''
myEnv += if process.env.ENV == 'preprod' then 'preprod: true\n' else 'preprod: false\n'
myEnv += if process.env.ENV == 'prod' then 'prod: true\n' else 'prod: false\n'
myDataWithEnv = myDataCoffee.toString()+'\n'+myEnv
myDataJson = coffeeson.toJSON.pretty myDataWithEnv, (err, result) -> result


# Grunt tasks
module.exports = (grunt) ->
	
	require("load-grunt-tasks") grunt


	grunt.initConfig

		


		clean:
			all: ["dist/css/*", "dist/js/*", "dist/*.html"]

		copy:
			all:
				src: 'dev/contactform.html'
				dest: 'dist/contactform.html'


		jshint:
			options:
				debug: true
				globals:
					jQuery: true
					debugger: true
			all: 'dev/js/main.js'
		uglify:
			all:
				files:
					'dist/js/main.js': ['dev/js/main.js']
		removelogging:
			all:
				src: "dev/js/main.js"
				dest: "dist/js/main.js"



		jade:
			compile:
				options:
					data: () -> JSON.parse(myDataJson)
				files:
					"dist/index.html": ["dev/index.jade"]

		vulcanize:
			default:
				options:
					inline: true
					strip: true
					csp: true
					excludes:
			          imports: ["polymer.html"]
			          scripts: ["webcomponents.js"]
				files:
					'dist/index.html': 'dist/index.html'




		sass:
			all:
				options:
					style: 'compact'
				files:
					'dist/css/main.css': 'dev/sass/main.scss'
		autoprefixer:
			all:
				expand: true
				flatten: true
				src: 'dist/css/*.css'
				dest: 'dist/css/'
		cssmin:
			all:
				files: [
					expand: true,
					cwd: 'dist/css/',
					src: ['*.css', '!*.min.css'],
					dest: 'dist/css/',
					ext: '.min.css'
				]


		


		watch:
			options:
				livereload: true
			sass:
				files: 'dev/sass/*.scss'
				tasks: ['sass', 'autoprefixer', 'cssmin']
			html:
				files: ['dev/**/*.html']
			jade:
				files: ['dev/**/*.jade']
				tasks: ['jade']
			javascript:
				files: ['dev/js/*.js']
				tasks: ['jshint', 'removelogging', 'uglify']
			json:
				files: ['dev/data.json', 'dev/data.coffee']
				tasks: ['jade']
		connect:
			all:
				options:
					port: 9000
					hostname: 'localhost'
					base: './'

		


		grunt.registerTask 'build', [
			'clean', 'copy', 'jade', 
			# 'jshint', 'removelogging', 'uglify',
			'sass', 'autoprefixer', 'cssmin', # 'vulcanize',
		]
