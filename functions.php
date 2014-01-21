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

/* Include Content Classes
---------------------------------------------------------------------- */
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/image.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/content.php' );

	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/taxonomy.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/post-display.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/post-type-archive.php' );

	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/home.php' );
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/page.php' );
	
	require_once( trailingslashit( get_stylesheet_directory() ) . 'classes/404.php' );


?>
