module.exports = function(grunt) {

	// Project configuration.
	// http://davidtucker.net/articles/automating-with-grunt/
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		uglify: {
			dev: {
				options: {
					beautify: true,
					compress: false,
					preserveComments : 'all',
					banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - ' +
        				'<%= grunt.template.today("yyyy-mm-dd") %> */',
        			mangle: false,
				},
				files: {
					'static/js/header.js': ['static/js/libs/Modernizr-2.7.1.js'],
					'static/js/footer.js': ['static/js/libs/jquery-1.10.2.js', 'js/app/app.js'],
				}
			},
			production: {
				options: {
					report : 'gzip',
					preserveComments : false,
					mangle: true,
				},
				files: {
					'static/js/header.js': ['static/js/libs/Modernizr-2.7.1.js'],
					'static/js/footer.js': ['static/js/libs/jquery-1.10.2.js', 'js/app/app.js'],
				},
			}
		},
		compass: {
			dev: {
				options: {
					sassDir: 'static/scss/',
					cssDir: './',
					environment: 'development',
					require: 'zurb-foundation'
				}
			},
			production: {
				options: {
					sassDir: 'static/scss/',
					cssDir: './',
					environment: 'production',
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
					'./style.css' : 'static/scss/screen.scss',     // 'destination': 'source'
				}
			}
		},
		cssmin: {
			minify: {
				expand: true,
				cwd: './',
				src: ['style.css'],
				dest: './',
				ext: '.css'
			}
		},
		watch: {
			css: {
				files: ['static/scss/**/*.scss'],
				tasks: ['compass:dev'],
				options: {
					livereload: true,
				},
			},
			js: {
				files: ['static/js/*.js'],
				tasks: ['uglify'],
				options: {
					livereload: true,
				},
			}
		},	
		font: {
			all: {
			// SVG files to reed in
			src: ['static/images/icons/SVG/*.svg'],
			// Location to output CSS variables
			destCss: 'static/scss/modules/_icons.{scss,json,less}',
			// Location to output fonts (expanded via brace expansion)
			destFonts: 'static/fonts/icons.{svg,woff,eot,ttf}',
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

	// Javascript
	grunt.loadNpmTasks('grunt-contrib-uglify');

	// SASS
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');

	// Not currently in use 
	grunt.loadNpmTasks('grunt-fontsmith'); // Turn SVGs into Fonts
	grunt.loadNpmTasks('grunt-contrib-sass'); // Speed up compilation
	grunt.loadNpmTasks('grunt-contrib-imagemin'); // Minify Images

	// Default task(s).
	grunt.registerTask('default', ['uglify:dev', 'compass:dev']);
	grunt.registerTask('build', ['compass:production', 'cssmin','uglify:production']);

};