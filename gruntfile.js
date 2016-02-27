// Gruntfile.js
module.exports = function ( grunt ) {
	grunt.initConfig( {
		jshint: {
			all: [ 'src/js/*.js' ]
		},
		sass: {
			build: {
				files: {
					'thewell/css/style.css': 'src/sass/*.scss'
				}
			}
		},
		autoprefixer: {
	    options: {
	      browserlist : "> 5%"
	    },
			dist: {
						files: {
								'thewell/css/style.css': 'dist/css/style.css'
						}
				}
	  },
		cssmin: {
			build: {
				files: {
					'thewell/css/style.min.css': 'thewell/css/style.css'
				}
			}
		},
		uglify: {
			build: {
				files: [{
					expand: true,
          cwd: 'src/js',
          src: ['**/*.js'],
          dest: 'thewell/javascript'
				}]
			}
		},
		watch: {
			css: {
				files: [ 'src/sass/**/*.scss' ],
				tasks: [ 'sass', 'autoprefixer', 'cssmin' ]
			},
			js: {
				files: [ 'src/js/*.js' ],
				tasks: [ 'jshint', 'uglify' ]
			}
		},
		concurrent: {
			options: {
				logConcurrentOutput: true
			},
			tasks: [ 'watch' ]
		}
	} );

	grunt.loadNpmTasks( 'grunt-contrib-jshint' );
	grunt.loadNpmTasks( 'grunt-contrib-uglify' );
	grunt.loadNpmTasks( 'grunt-contrib-sass' );
	grunt.loadNpmTasks( 'grunt-contrib-cssmin' );
	grunt.loadNpmTasks( 'grunt-contrib-watch' );
	grunt.loadNpmTasks( 'grunt-concurrent' );
	grunt.loadNpmTasks('grunt-autoprefixer');
	grunt.loadNpmTasks( 'grunt-notify' );

	grunt.registerTask( 'default', [ 'sass', 'cssmin', 'jshint', 'uglify', 'concurrent' ] );

};
