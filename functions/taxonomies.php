<?php 

/* ADD TAXONOMY - TYPE */
add_action( 'init', 'build_taxonomies', 0 );  

function build_taxonomies() {
    
     $labels = array(
        'name' => _x( 'Types', 'taxonomy general name'  ),
        'singular_name' => _x( 'Type', 'taxonomy singular name' ),
        'all_items' => __( 'All Type Pieces' ),
        'edit_item' => __( 'Edit Type' ),
        'update_item' => __( 'Update Type' ),
        'add_new_item' => __( 'Add New Type' ),
        'new_item_name' => __( 'New Type' ),
      );    

    register_taxonomy('Type', 'piece', array('hierarchical' => 'False', 'labels'=> $labels));

};

?>