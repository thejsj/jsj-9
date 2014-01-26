<?php
while ( have_posts() ) {
	the_post();
	$metadata = wp_get_attachment_metadata();
	// Redirect to File
	wp_redirect(home_url('/').'wp-content/uploads/'.$metadata['file']);
}
?>