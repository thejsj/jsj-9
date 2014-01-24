<?php

// Register Menu
register_nav_menu( 'primary', 'Primary Menu' );

add_theme_support( 'post-formats', array('aside', 'gallery', 'link', 'image', 'quote', 'status', 'audio', 'chat', 'video'));

// Add RSS links to <head> section
add_theme_support( 'automatic-feed-links' );

// This theme styles the visual editor with editor-style.css to match the theme style.
add_editor_style();	

/*
 * Thumbnails
 */

if ( function_exists( 'add_theme_support' ) ) { 
	// Add post thumbnail support and declare image sizes
	add_theme_support('post-thumbnails');
	add_image_size( 'facebook', 1200, 630, true ); 
	add_image_size( 'slideshow', 800, 9999 );
	add_image_size( 'slideshow@2x', 800 * 2, 9999 );
	add_image_size( 'home-page', 550, 9999 );
	add_image_size( 'home-page@2x', 550 * 2, 9999 );
	add_image_size( 'side', 350, 9999 ); 
	add_image_size( 'side@2x', 350 * 2, 9999 ); 
}

/*
 * Remove unused menu pages
 */

add_action( 'admin_menu', 'my_remove_menu_pages' );

function my_remove_menu_pages() {
	remove_menu_page('link-manager.php');
	// remove_menu_page('edit-comments.php');        
}

/*
 * Add some classes to our menu
 */
add_filter('nav_menu_css_class', 'my_css_attributes_filter1', 100, 1);
function my_css_attributes_filter1($var) {
	if(is_array($var)){
		array_push($var, 'navmenu');
	}
	return $var;
}

add_filter('page_css_class', 'my_css_attributes_filter3', 100, 1);
function my_css_attributes_filter3($var) {
	if(is_array($var)){
		array_push($var, 'home-link');
	}
	return $var;
}

/*
 * Don't let Yoast SEO handle are images
 */
add_filter('wpseo_opengraph_image', '__return_false');

?>