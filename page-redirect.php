<?php 
/*
Template Name: Redirect Page
*/
$id = get_field('redirection');

$menu = wp_get_nav_menu_items( $id->ID , $args = array(
    'order'                  => 'ASC',
    'orderby'                => 'menu_order',
    'post_type'              => 'nav_menu_item',
    'post_status'            => 'publish',
    'output'                 => ARRAY_A,
    'output_key'             => 'menu_order',
    'nopaging'               => true,
    'update_post_term_cache' => false 
    )
);

wp_redirect( $menu[0]->url , 301 ); 
exit; 
?>