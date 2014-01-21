<?php

 
// Register Custom Post Types

add_action( 'init', 'create_post_type' );

function create_post_type() {

	//Pieces

	$piece_labels = array(
		'name' => __( 'Pieces' ),
		'singular_name' => __( 'Piece' )
	);

	$piece_args = array(
		'labels'        	 => $piece_labels,
		'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'capability_type'    => 'post',
		'rewrite' 			 => array('slug' => 'pieces'),
		'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => null,
		'supports'           => array( 'title', 'author', 'editor', 'excerpt', 'revisions', 'custom-fields', 'thumbnail'),
	);

	register_post_type( 'piece', $piece_args);

	$experiment_labels = array(
        'name'               => 'Experiment Page',
        'singular_name'      => 'Experiment Page',
        'add_new'            => 'Add Experiment',
        'add_new_item'       => 'Add New Experiment Page',
        'edit_item'          => 'Edit Experiment Page',
        'new_item'           => 'New Experiment Page',
        'all_items'          => 'All Experiment Pages',
        'view_item'          => 'View Experiment Pages',
        'search_items'       => 'Search Experiment Pages',
        'not_found'          => 'No Experiment Pages found',
        'not_found_in_trash' => 'No Experiment Pages found in Trash',
        'parent_item_colon'  => __( 'Parent Experiment Page' ),
        'parent'             => __( 'Parent Experiment Page' ),
        'menu_name'          => 'Experiments'
    );

    $experiment_args = array(
        'labels'             => $experiment_labels,
        'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'experiment' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => null,
        'supports'           => array( 'title', 'author', 'editor', 'excerpt', 'revisions', 'custom-fields', 'thumbnail'),
    );

    register_post_type( 'experiment', $experiment_args );

}

/* For Custom Post Ordering */
if ( class_exists("global_posts_ordering") ) {
    $global_posts_ordering = new global_posts_ordering(array("piece"));
}

?>