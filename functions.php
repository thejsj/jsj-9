<?php

/* Boilerplate Functions (Do Not Edit)
---------------------------------------------------------------------- */
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/boilerplate.php' );

/* Custom Post Types & Taxonomies
---------------------------------------------------------------------- */
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/custom-post-types.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/taxonomies.php' );

/* Theme Functions & Scripts
---------------------------------------------------------------------- */
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/theme-functions.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/queue-scripts.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'functions/mustache-loader.php' );

/* Include Content Classes
---------------------------------------------------------------------- */
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/image.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/content.php' );

	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/taxonomy.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/post-display.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/post-type-archive.php' );

	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/home.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/single.php' );
	
	require_once( trailingslashit( get_stylesheet_directory() ) . 'views/404.php' );


?>
