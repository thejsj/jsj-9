<?php 

/* ADD TAXONOMY - TYPE */
add_action( 'init', 'build_taxonomies', 0 );  

function build_taxonomies() {
    
     $labels = array(
        'name' => _x( 'Types', 'taxonomy general name'  ),
        'singular_name' => _x( 'Type', 'taxonomy singular name' ),
        'all_items' => __( 'All Work Types' ),
        'edit_item' => __( 'Edit Work' ),
        'update_item' => __( 'Update Type' ),
        'add_new_item' => __( 'Add New Type' ),
        'new_item_name' => __( 'New Type' ),
      );    

    register_taxonomy('Type', ['work'], array('hierarchical' => 'False', 'labels'=> $labels));

};

?>