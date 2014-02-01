<?php

 
// Register Custom Post Types

add_action( 'init', 'create_post_type' );

function create_post_type() {

	//Pieces

	$work_labels = array(
		'name' => __( 'Works' ),
		'singular_name' => __( 'Work' )
	);

	$work_args = array(
		'labels'        	 => $work_labels,
		'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'capability_type'    => 'post',
		'rewrite' 			 => array('slug' => 'pieces'), // We keep this slug, in order to keep back-wards compatibiltiy with urls
		'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => null,
		'supports'           => array( 'title', 'author', 'editor', 'excerpt', 'revisions', 'custom-fields', 'thumbnail'),
	);

	register_post_type( 'work', $work_args);

	$experiment_labels = array(
        'name'               => 'Experiments',
        'singular_name'      => 'Experiment',
        'add_new'            => 'Add Experiment',
        'add_new_item'       => 'Add New Experiment',
        'edit_item'          => 'Edit Experiment',
        'new_item'           => 'New Experiment',
        'all_items'          => 'All Experiments',
        'view_item'          => 'View Experiments',
        'search_items'       => 'Search Experiments',
        'not_found'          => 'No Experiments found',
        'not_found_in_trash' => 'No Experiments found in Trash',
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
        'rewrite'            => array( 'slug' => 'experiments' ),
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