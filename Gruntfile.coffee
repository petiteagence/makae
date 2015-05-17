module.exports = (grunt) ->
	
	require("load-grunt-tasks") grunt


	grunt.initConfig

		


		clean:
			all: ["dist/*", "!dist/img", "!dist/logo", "!dist/fonts"]


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
					data: () -> require('./dev/data.json')
				files:
					"dist/index.html": ["dev/index.jade"]



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
				files: ['dev/data.json']
				tasks: ['jade']
		connect:
			all:
				options:
					port: 9000
					hostname: 'localhost'
					base: './'

		


		grunt.registerTask 'server', [
			'clean', 'jade',
			'jshint', 'removelogging', 'uglify',
			'sass', 'autoprefixer', 'cssmin',
			'connect', 'watch'
		]
		grunt.registerTask 'build', [
			'clean', 'jade',
			# 'jshint', 'removelogging', 'uglify',
			'sass', 'autoprefixer', 'cssmin',
		]
		grunt.registerTask 'heroku', [
			'clean', 'jade',
			'sass', 'autoprefixer', 'cssmin',
		]