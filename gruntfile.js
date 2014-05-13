var config = require('./config');
var moment = require('moment');

 var db = config.databases,
    lo = db.local,
    it = db.production,
    now = moment().format('YYYY-MMMM-D-h-mm-ssa'),
    mysql = config.mysql,
    mysqldump = config.mysqldump;

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
					'static/js/footer.js': [
						'../../../wp-includes/js/jquery/jquery.js', 
						'../../../wp-includes/js/jquery/jquery-migrate.min.js',
						'js/app/app.js',
					],
				}
			},
			production: {
				options: {
					report : 'gzip',
					preserveComments : false,
					mangle: true,
				},
				files: {
					'static/js/header.js': [
						'static/js/libs/Modernizr-2.7.1.js'
					],
					'static/js/footer.js': [
						'../../../wp-includes/js/jquery/jquery.js', 
						'../../../wp-includes/js/jquery/jquery-migrate.min.js',
						'js/app/app.js'
					]
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
		favicons: {
			options: {},
			icons: {
				src: 'static/images/favicon.png',
				dest: 'static/ico'
			}
		},
		// Push our distribution folder to our server
		shell: {
	        pull: {
	            command: [
					mysqldump + ' -u ' + lo.DB_USER + '  -h ' + lo.DB_HOST + ' -p' + lo.DB_PASSWORD + ' ' + lo.DB_NAME + ' > ./' + config.database_location + '/local-' + now +'.sql',
					'echo "Local Database Backed Up "',
					mysqldump + ' -u ' + it.DB_USER + '  -h ' + it.DB_HOST + ' -p' + it.DB_PASSWORD + ' ' + it.DB_NAME + ' > ./' + config.database_location + '/integration-' + now +'.sql',
					'echo "Integration Database Backed Up "',
					'cp ./' + config.database_location + '/integration-' + now +'.sql ./' + config.database_location + '/new-local-' + now +'.sql',
					"sed -i \"\" 's/" + it.table_prefix + "/" + lo.table_prefix + "/g' ./" + config.database_location + "/new-local-" + now + ".sql",
					mysql + ' -u ' + lo.DB_USER + ' -p' + lo.DB_PASSWORD + ' -e "DROP DATABASE IF EXISTS ' + lo.DB_NAME + '; CREATE DATABASE ' + lo.DB_NAME + ';"',
					mysql + ' -u ' + lo.DB_USER + ' -p' + lo.DB_PASSWORD + ' ' + lo.DB_NAME + ' < ./' + config.database_location + '/new-local-' + now +'.sql',
					'echo "Database Migrated"'
	            ].join('&&')
	        }
	    }
	});

	// Javascript
	grunt.loadNpmTasks('grunt-contrib-uglify');

	// SASS
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');

	// Images
	grunt.loadNpmTasks('grunt-favicons');

	// Not currently in use 
	grunt.loadNpmTasks('grunt-fontsmith'); // Turn SVGs into Fonts
	grunt.loadNpmTasks('grunt-contrib-sass'); // Speed up compilation
	grunt.loadNpmTasks('grunt-contrib-imagemin'); // Minify Images

	// Database
	grunt.loadNpmTasks('grunt-shell');

	// Default task(s).
	grunt.registerTask('default', ['uglify:dev', 'compass:dev',]);
	grunt.registerTask('build', ['compass:production', 'cssmin','uglify:production', 'favicons']);

};