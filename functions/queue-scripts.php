<?php 

// Load custom login page styles
function custom_login_styles() {
	echo '<link rel="stylesheet" type="text/css" href="' . get_bloginfo('template_directory') . '/static/css/custom-login.css" />';
}
add_action('login_head', 'custom_login_styles');	

// Load theme scripts
function load_theme_scripts() {
	// Load Header Script (Codekit Compiled File)
	wp_register_script('header', get_template_directory_uri()  . '/static/js/header.js', array(), '', false);
	wp_enqueue_script('header');
	// Load Footer Script (Codekit Compiled File)
	wp_register_script('footer', get_template_directory_uri()  . '/static/js/footer.js', array(), '', true);
	wp_enqueue_script('footer');			
}
add_action( 'wp_enqueue_scripts', 'load_theme_scripts' );

?>