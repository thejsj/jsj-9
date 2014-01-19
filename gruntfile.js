module.exports = function(grunt) {

	// Project configuration.
	// http://davidtucker.net/articles/automating-with-grunt/
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		uglify: {
			my_target: {
				files: {
					'js/header.js': ['js/libs/Modernizr-2.7.1.js'],
					'js/footer.js': ['js/libs/jquery-1.10.2.js', 'js/app/app.js'],
				}
			}
		},
		compass: {
			dist: {
				options: {
					sassDir: 'scss/',
					cssDir: 'css/',
					environment: 'production',
					require: 'zurb-foundation'
				}
			},
			dev: {
				options: {
					sassDir: 'scss/',
					cssDir: 'css/',
					environment: 'development',
					require: 'zurb-foundation'
				}
			},
		},
		sass: { // Task
			dist: { // Target
				options: { // Target options
					compass: 'true',
					require: ['zurb-foundation','foundation'],
				},
				files: {                         // Dictionary of files
					'css/screen.css' : 'scss/screen.scss',     // 'destination': 'source'
				}
			}
		},
		watch: {
			css: {
				files: ['scss/**/*.scss'],
				tasks: ['compass:dev'],
				options: {
					livereload: true,
				},
			},
			js: {
				files: ['js/*.js'],
				tasks: ['uglify'],
				options: {
					livereload: true,
				},
			}
		},	
		font: {
			all: {
			// SVG files to reed in
			src: ['images/icons/SVG/*.svg'],
			// Location to output CSS variables
			destCss: 'scss/modules/_icons.{scss,json,less}',
			// Location to output fonts (expanded via brace expansion)
			destFonts: 'fonts/icons.{svg,woff,eot,ttf}',
			// OPTIONAL: Specify CSS format (inferred from destCss' extension by default)
			  // (stylus, less, scss, json)
			// cssFormat: 'css',
			// Optional: Custom naming of font families for multi-task support
			fontFamily: 'icomoon',
			// OPTIONAL: Specify CSS options
			cssOptions: {}
			}
		},
	});

	// Load the plugin that provides the "uglify" task.
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-imagemin');
	grunt.loadNpmTasks('grunt-fontsmith');
	grunt.loadNpmTasks('grunt-contrib-sass');

	// Default task(s).
	grunt.registerTask('default', ['uglify', 'compass:dev']);

};